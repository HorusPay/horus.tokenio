#pragma once
/* Title:  horustokenstake.hpp
*  Description:
*  Author: Jack DiSalvatore
*  Telegram: @jackdisalvatore
*/
namespace horuspaytoken {

   static constexpr time refund_delay     = 7*24*3600;   // 7 days
   const uint64_t REQUIRED_STAKE_DURATION = 7*24*3600;   // 7 days


   /***************************************************************************
    *                               T A B L E S
    *  These tables are designed to be constructed in the scope of the relevant
    *  user, this facilitates simpler API for per-user queries
    **************************************************************************/


   // @abi table userres i64
   struct user_resources {
      account_name  owner;
      asset         total_staked_horus;

      uint64_t primary_key() const { return owner; }

      // explicit serialization macro is not necessary,
      // used here only to improve compilation time
      EOSLIB_SERIALIZE( user_resources, (owner)(total_staked_horus) )
   };


   // @abi table stakehorus i64
   struct staked_horus {
      uint64_t      id;
      account_name  from;
      account_name  to;
      asset         horus_weight;
      time          time_initial;

      uint64_t  primary_key() const { return id; }

      // explicit serialization macro is not necessary,
      // used here only to improve compilation time
      EOSLIB_SERIALIZE( staked_horus, (id)(from)(to)(horus_weight)(time_initial) )
   };


   // @abi table refunds i64
   struct refund_request {
      account_name  owner;
      time          request_time;
      asset         horus_amount;

      uint64_t  primary_key() const { return owner; }

      // explicit serialization macro is not necessary,
      // used here only to improve compilation time
      EOSLIB_SERIALIZE( refund_request, (owner)(request_time)(horus_amount) )
   };


   // @abi table horusrefunds i64
   struct refund_requests {
      uint64_t     id;
      account_name from;
      account_name to;
      asset        horus_amount;
      time         request_time;

      uint64_t  primary_key() const { return id; }

      // explicit serialization macro is not necessary,
      // used here only to improve compilation time
      EOSLIB_SERIALIZE( refund_requests, (id)(from)(to)(horus_amount)(request_time) )
   };


   typedef multi_index< N(userres), user_resources>       user_resources_table;
   typedef multi_index< N(stakedhorus), staked_horus>       staked_horus_table;
   typedef multi_index< N(horusrefunds), refund_requests>  horus_refunds_table;

   // DEPRICATED !
   typedef multi_index< N(refunds), refund_request>              refunds_table;
   // !!!!!!!!!!!!


} /// namespace horuspaytoken
