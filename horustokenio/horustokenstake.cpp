/* Title:  horustokenstake.cpp
*  Description: Staking implementation is based of the eosio mechanisim for staking resources and voting.
*    See (eos/contacts/eosio.system/delegate_bandwidth.cpp)
*  Author: Jack DiSalvatore
*  Telegram: @jackdisalvatore
*/
#include <eosiolib/transaction.hpp>

#include "horustokenstake.hpp"
#include "utilities.hpp"


namespace horuspaytoken {


   /****************************************************************************
    *                             F U N C T I O N S
    ***************************************************************************/


   void inline horustokenio::delegate_horus( account_name& from,
                                             account_name& receiver,
                                             const asset&  stake_horus_delta ) {
      staked_horus_table staked_index( _self, from );

      // emplace a new row for each stake
      auto itr = staked_index.emplace( from /* staker owns RAM */, [&]( auto& stake ){
            stake.id            = staked_index.available_primary_key();
            stake.from          = from;
            stake.to            = receiver;
            stake.horus_weight  = stake_horus_delta;
            stake.time_initial  = now();
         });

      eosio_assert( stake_horus_delta == itr->horus_weight, "staked HORUS failed" );
   }


   void inline horustokenio::update_user_resources( account_name& owner,
                                                    const asset&  stake_horus_delta ) {
      user_resources_table user_res_table( _self, owner );

      auto user_res = user_res_table.find( owner );

      if ( user_res ==  user_res_table.end() ) {
         user_res = user_res_table.emplace( owner, [&]( auto& u ) {
               u.owner               = owner;
               u.total_staked_horus  = stake_horus_delta;
            });
      } else {
         user_res_table.modify( user_res, 0, [&]( auto& u ) {
               u.total_staked_horus += stake_horus_delta;
            });
      }
      eosio_assert( asset(0, HORUS_SYMBOL) <= user_res->total_staked_horus, "insufficient staked total HORUS" );

      if ( user_res->total_staked_horus == asset(0, HORUS_SYMBOL) ) {
         user_res_table.erase( user_res );
      }
   }


   void inline horustokenio::create_horus_refund( const account_name& from, const account_name& to,
                                                  const asset&  stake_horus_delta ) {
      horus_refunds_table horus_refunds( _self, from );
      // auto horus_balance = stake_horus_delta;

      eosio_assert( stake_horus_delta > asset(0, HORUS_SYMBOL), "must be a positive number" );

      auto request = horus_refunds.emplace( from, [&]( auto& r ) {
         r.id           = horus_refunds.available_primary_key();
         r.from         = from;
         r.to           = to;
         r.horus_amount = stake_horus_delta;
         r.request_time = now();
      });
      print("creating new '", stake_horus_delta, "' refund with id:", request->id, "\n");

      // create deferred transaction
      print("please wait 7 days to be refunded\n");
      eosio::transaction out;
      out.actions.emplace_back( permission_level{_self, N(active)}, _self, N(refundbyid), std::make_tuple(from, request->id) );
      out.delay_sec = refund_delay;
      cancel_deferred( ( uint128_t( from ) << 64 ) | request->id ); // TODO: Remove this line when repacing derred trxs is fixed
      out.send( ( uint128_t( from ) << 64 ) | request->id, from, true );
   }


   void inline horustokenio::check_liquidity_for_staking( const account_name& from, const asset& stake_horus_quantity ) {
      user_resources_table user_res_table( _self, from );
      accounts             from_accounts( _self, from );

      auto from_horus_account = from_accounts.find( stake_horus_quantity.symbol.name() );
      auto user_res           = user_res_table.find( from );

      asset liquid_horus = ( user_res == user_res_table.end() ) ? from_horus_account->balance :
                             from_horus_account->balance - user_res->total_staked_horus ;

      if ( liquid_horus < stake_horus_quantity ) {
         string err = "overdraw, you cannot stake more than "
                      + asset_to_string(liquid_horus);
         eosio_assert( false, err.c_str() );
      }
   }


   /***********************************************************************************
   *   0.01% per month => ( 0.001 / 30 ) * 7 = 0.00023 = 0.023% per 7 days
   *   Minumum stake:
   *      10.0000 HORUS * 0.00023 = 0.0023 ECASH
   ***********************************************************************************/
   asset inline horustokenio::calculate_staking_reward( const asset& horus_weight ) {
      asset    reward;
      int64_t  reward_amount = 0;

      // '10000' is '1.0000 HORUS'         1 Million
      if ( horus_weight >= asset(10000000000, HORUS_SYMBOL) )
      {
          // 1% payouts a month or 0.0023% per week
         reward_amount = int64_t( (horus_weight.amount * 2333) / 1000000 );
      }
      // < 500k
      else if ( horus_weight >= asset(5000000000, HORUS_SYMBOL) )
      {
          // 0.5% payouts a month or 0.001166% per week
         reward_amount = int64_t( (horus_weight.amount * 1166) / 1000000 );
      }
      // < 100k
      else if ( horus_weight >= asset(1000000000, HORUS_SYMBOL) )
      {
          // 0.2% payouts a month or 0.00046% per week
         reward_amount = int64_t( (horus_weight.amount * 4666) / 10000000 );
      }
      else
      {
          // 0.1% payouts a month or 0.00023% per week
         reward_amount = int64_t( (horus_weight.amount * 2333) / 10000000 );
      }

      reward = asset(reward_amount, ECASH_SYMBOL);
      eosio_assert( asset(0, ECASH_SYMBOL) < reward , "nothing to be rewarded");

      return asset(reward_amount, ECASH_SYMBOL);
   }


   void inline horustokenio::check_stake_time( const time time_initial ) {
      if ( now() < ( time_initial + REQUIRED_STAKE_DURATION ) ) {
         string err = "cannot claim reward yet, you still have "
                      + to_string( ( time_initial + REQUIRED_STAKE_DURATION ) - now() )
                      + " seconds remaining";
        eosio_assert( false, err.c_str() );
      }
   }


   void inline horustokenio::update_stake_time( const account_name& owner, const uint64_t& stake_id ) {
      time     rollover_delta = 0;

      staked_horus_table staked_index( _self, owner );
      auto stake = staked_index.find( stake_id );

      rollover_delta = now() - ( stake->time_initial + REQUIRED_STAKE_DURATION );
      print("Rollover is ", rollover_delta, " seconds\n");

      staked_index.modify( stake, 0, [&]( auto& s ) {
         // Subtract on the rollover time that was not accounted for
        s.time_initial = now() - rollover_delta;
      });
   }


   void inline horustokenio::check_refund_time( time request_time ) {
      if ( now() <  request_time + refund_delay ) {
         string err = "refund is not available yet " + to_string( ( request_time + refund_delay ) - now() )
                      + " seconds remaining";
         eosio_assert( false, err.c_str() );
      }
      // Until now() becomes NOW, the fact that now() is the timestamp of the previous block could in theory
      // allow people to get their tokens earlier than the 7 day delay if the unstake happened immediately after many
      // consecutive missed blocks.
   }

   /****************************************************************************
    *                             A C T I O N S
    ***************************************************************************/


   void horustokenio::stakehorus( account_name from, account_name receiver, asset stake_horus_quantity ) {
      require_auth( from );

      eosio_assert( is_account( receiver ), "account does not exist");
      eosio_assert( stake_horus_quantity.is_valid(), "invalid offeror_asset");
      eosio_assert( stake_horus_quantity  > asset(0, HORUS_SYMBOL), "must stake a positive amount" );
      eosio_assert( stake_horus_quantity >= asset(100000, HORUS_SYMBOL), "minimum stake required is '10.0000 HORUS'" );

      check_liquidity_for_staking( from, stake_horus_quantity );
      delegate_horus( from, receiver, stake_horus_quantity );
      update_user_resources( from, stake_horus_quantity );
   }


   void horustokenio::unstakehorus( account_name from, uint64_t stake_id ) {
      require_auth( from );

      staked_horus_table staked_index( _self, from );

      auto stake = staked_index.find( stake_id );

      eosio_assert( stake != staked_index.end(), "staked row does not exist");

      create_horus_refund( stake->from, stake->to, stake->horus_weight );

      staked_index.erase( stake );
   }


   void horustokenio::claimreward( account_name owner, uint64_t stake_id ) {
      asset    reward;

      staked_horus_table staked_index( _self, owner );
      auto stake = staked_index.find( stake_id );

      //require_auth( stake->to );
      eosio_assert( stake != staked_index.end() , "stake id does not exist" );
      eosio_assert( stake->id == stake_id ,  "failed to retrieved stake id" );

      check_stake_time( stake->time_initial );
      reward = calculate_staking_reward( stake->horus_weight );
      update_stake_time( owner, stake_id );

      // Sign issue action with both account running 'code' and 'owner'
      vector<permission_level> permissions{ {code,  N(active)} , {owner, N(active)} };

      INLINE_ACTION_SENDER(horustokenio, issue)( code, permissions,
                           { stake->to, reward, string("Rewarding " + asset_to_string(reward)) } );
   }


   void horustokenio::refundbyid( account_name owner, const uint64_t refund_id ) {
      //require_auth( owner );

      horus_refunds_table horus_refunds( _self, owner );
      auto request = horus_refunds.find( refund_id );

      eosio_assert( request != horus_refunds.end(), "refund id request not found" );
      eosio_assert( request->id == refund_id, "refund id not found" );

      check_refund_time( request->request_time );

      update_user_resources( owner, -(request->horus_amount) );
      print("refunding '", eosio::name{owner}, "' ", request->horus_amount, "\n");

      horus_refunds.erase( request );
   }


   void horustokenio::refundhorus( account_name owner ) {
      //require_auth( owner );

      horus_refunds_table horus_refunds( _self, owner );

      auto refund_begin = horus_refunds.begin();
      auto refund_end   = horus_refunds.end();

      for_each( refund_begin , refund_end, [&]( auto& r ) {
         check_refund_time( r.request_time );
         update_user_resources( owner, -(r.horus_amount) );
         print("refunding '", eosio::name{owner}, "' ", r.horus_amount, "\n");
         horus_refunds.erase( r );
      });
   }


} /// namespace horuspaytoken
