/* Title: change to 'horustokenio_tests.cpp'
*  Description: I am hijacking the eosio.token_tests.cpp file to run unit test for our
*    horustokenio contract. Note, set the refund and reward time to 7 seconds to test.
*  Telegram: @jackdisalvatore
*/
#include <boost/test/unit_test.hpp>
#include <eosio/testing/tester.hpp>
#include <eosio/chain/abi_serializer.hpp>

#include <horustokenio/horustokenio.wast.hpp>
#include <horustokenio/horustokenio.abi.hpp>

#include <Runtime/Runtime.h>

#include <fc/variant_object.hpp>

using namespace eosio::testing;
using namespace eosio;
using namespace eosio::chain;
using namespace eosio::testing;
using namespace fc;
using namespace std;

using mvo = fc::mutable_variant_object;

class horustokenio_tester : public tester {
public:

   horustokenio_tester() {
      produce_blocks( 2 );

      create_accounts( { N(alice), N(bob), N(carol), N(horustokenio) } );
      produce_blocks( 2 );

      set_code( N(horustokenio), horustokenio_wast );
      set_abi( N(horustokenio), horustokenio_abi );

      produce_blocks();

      const auto& accnt = control->db().get<account_object,by_name>( N(horustokenio) );
      abi_def abi;
      BOOST_REQUIRE_EQUAL(abi_serializer::to_abi(accnt.abi, abi), true);
      abi_ser.set_abi(abi, abi_serializer_max_time);
   }

   action_result push_action( const account_name& signer, const action_name &name, const variant_object &data ) {
      string action_type_name = abi_ser.get_action_type(name);

      action act;
      act.account = N(horustokenio);
      act.name    = name;
      act.data    = abi_ser.variant_to_binary( action_type_name, data, abi_serializer_max_time );

      return base_tester::push_action( std::move(act), uint64_t(signer));
   }

   /*************************************************************************
   *                            G E T T E R S
   **************************************************************************/

   fc::variant get_stats( const string& symbolname )
   {
      auto symb = eosio::chain::symbol::from_string(symbolname);
      auto symbol_code = symb.to_symbol_code().value;
      vector<char> data = get_row_by_account( N(horustokenio), symbol_code, N(stat), symbol_code );
      return data.empty() ? fc::variant() : abi_ser.binary_to_variant( "currency_stats", data, abi_serializer_max_time );
   }

   fc::variant get_account( account_name acc, const string& symbolname)
   {
      auto symb = eosio::chain::symbol::from_string(symbolname);
      auto symbol_code = symb.to_symbol_code().value;
      vector<char> data = get_row_by_account( N(horustokenio), acc, N(accounts), symbol_code );
      return data.empty() ? fc::variant() : abi_ser.binary_to_variant( "account", data, abi_serializer_max_time );
   }

   fc::variant get_user_resources( account_name owner )
   {
      vector<char> data = get_row_by_account( N(horustokenio), owner, N(userres), owner );
      return data.empty() ? fc::variant() : abi_ser.binary_to_variant( "user_resources", data, abi_serializer_max_time );
   }

   fc::variant get_horus_stake( account_name to, const uint64_t& id )
   {
      vector<char> data = get_row_by_account( N(horustokenio), to, N(stakedhorus), id );
      return data.empty() ? fc::variant() : abi_ser.binary_to_variant( "staked_horus", data, abi_serializer_max_time );
   }

   fc::variant get_horus_refunds( account_name owner, const uint64_t& refund_id )
   {
      vector<char> data = get_row_by_account( N(horustokenio), owner, N(horusrefunds), refund_id );
      return data.empty() ? fc::variant() : abi_ser.binary_to_variant( "refund_requests", data, abi_serializer_max_time );
   }

   // DEPRICATED WAY OF GETTING REFUNDS
   fc::variant get_refunds( account_name owner )
   {
      vector<char> data = get_row_by_account( N(horustokenio), owner, N(refunds), owner );
      return data.empty() ? fc::variant() : abi_ser.binary_to_variant( "refund_request", data, abi_serializer_max_time );
   }

   /*************************************************************************
   *                            A C T I O N S
   **************************************************************************/

   action_result create( account_name issuer,
                asset        maximum_supply ) {

      return push_action( N(horustokenio), N(create), mvo()
           ( "issuer", issuer)
           ( "maximum_supply", maximum_supply)
      );
   }

   action_result issue( account_name issuer, account_name to, asset quantity, string memo ) {
      return push_action( issuer, N(issue), mvo()
           ( "to", to)
           ( "quantity", quantity)
           ( "memo", memo)
      );
   }

   action_result transfer( account_name from,
                  account_name to,
                  asset        quantity,
                  string       memo ) {
      return push_action( from, N(transfer), mvo()
           ( "from", from)
           ( "to", to)
           ( "quantity", quantity)
           ( "memo", memo)
      );
   }

   action_result stakehorus( account_name from,
                             account_name receiver,
                             asset        stake_horus_quantity ) {
      return push_action( from, N(stakehorus), mvo()
           ( "from", from)
           ( "receiver", receiver)
           ( "stake_horus_quantity", stake_horus_quantity)
      );
   }

   action_result unstakehorus( account_name from,
                               uint64_t     stake_id ) {
      return push_action( from, N(unstakehorus), mvo()
           ( "from", from)
           ( "stake_id", stake_id)
      );
   }

   action_result claimreward( account_name owner, uint64_t stake_id ) {
      return push_action( owner, N(claimreward), mvo()
            ( "owner", owner)
            ( "stake_id", stake_id)
      );
   }

   abi_serializer abi_ser;
};


/*************************************************************************
*                            T E S T S
**************************************************************************/

BOOST_AUTO_TEST_SUITE(eosio_token_tests)


/*************************************************************************
* 1) Test creatng a new tokens
**************************************************************************/
BOOST_FIXTURE_TEST_CASE( create_tests, horustokenio_tester ) try {

   auto token = create( N(horustokenio), asset::from_string("1200000000.0000 HORUS"));
   auto stats = get_stats("4,HORUS");
   REQUIRE_MATCHING_OBJECT( stats, mvo()
      ("supply", "0.0000 HORUS")
      ("max_supply", "1200000000.0000 HORUS")
      ("issuer", "horustokenio")
   );
   produce_blocks(1);

} FC_LOG_AND_RETHROW()


/*************************************************************************
* 2) Test creating a token with a negative supply
**************************************************************************/
BOOST_FIXTURE_TEST_CASE( create_negative_max_supply, horustokenio_tester ) try {

   BOOST_REQUIRE_EQUAL( wasm_assert_msg( "max-supply must be positive" ),
      create( N(horustokenio), asset::from_string("-1200000000.0000 HORUS"))
   );

} FC_LOG_AND_RETHROW()


/*************************************************************************
* 3) Test you cannot create two tokens with the same symbol
**************************************************************************/
BOOST_FIXTURE_TEST_CASE( symbol_already_exists, horustokenio_tester ) try {

   auto token = create( N(horustokenio), asset::from_string("1200000000 HORUS"));
   auto stats = get_stats("0,HORUS");
   REQUIRE_MATCHING_OBJECT( stats, mvo()
      ("supply", "0 HORUS")
      ("max_supply", "1200000000 HORUS")
      ("issuer", "horustokenio")
   );
   produce_blocks(1);

   BOOST_REQUIRE_EQUAL( wasm_assert_msg( "token with symbol already exists" ),
                        create( N(horustokenio), asset::from_string("100 HORUS"))
   );

} FC_LOG_AND_RETHROW()


/*************************************************************************
* 4) Test max supply of token
**************************************************************************/
BOOST_FIXTURE_TEST_CASE( create_max_supply, horustokenio_tester ) try {

   auto token = create( N(horustokenio), asset::from_string("4611686018427387903 TKN"));
   auto stats = get_stats("0,TKN");
   REQUIRE_MATCHING_OBJECT( stats, mvo()
      ("supply", "0 TKN")
      ("max_supply", "4611686018427387903 TKN")
      ("issuer", "horustokenio")
   );
   produce_blocks(1);

   asset max(10, symbol(SY(0, NKT)));
   share_type amount = 4611686018427387904;
   static_assert(sizeof(share_type) <= sizeof(asset), "asset changed so test is no longer valid");
   static_assert(std::is_trivially_copyable<asset>::value, "asset is not trivially copyable");
   memcpy(&max, &amount, sizeof(share_type)); // hack in an invalid amount

   BOOST_CHECK_EXCEPTION( create( N(horustokenio), max) , asset_type_exception, [](const asset_type_exception& e) {
      return expect_assert_message(e, "magnitude of asset amount must be less than 2^62");
   });

} FC_LOG_AND_RETHROW()


/*************************************************************************
* 5) Test creating token with max decimal places
**************************************************************************/
BOOST_FIXTURE_TEST_CASE( create_max_decimals, horustokenio_tester ) try {

   auto token = create( N(horustokenio), asset::from_string("1.000000000000000000 TKN"));
   auto stats = get_stats("18,TKN");
   REQUIRE_MATCHING_OBJECT( stats, mvo()
      ("supply", "0.000000000000000000 TKN")
      ("max_supply", "1.000000000000000000 TKN")
      ("issuer", "horustokenio")
   );
   produce_blocks(1);

   asset max(10, symbol(SY(0, NKT)));
   //1.0000000000000000000 => 0x8ac7230489e80000L
   share_type amount = 0x8ac7230489e80000L;
   static_assert(sizeof(share_type) <= sizeof(asset), "asset changed so test is no longer valid");
   static_assert(std::is_trivially_copyable<asset>::value, "asset is not trivially copyable");
   memcpy(&max, &amount, sizeof(share_type)); // hack in an invalid amount

   BOOST_CHECK_EXCEPTION( create( N(horustokenio), max) , asset_type_exception, [](const asset_type_exception& e) {
      return expect_assert_message(e, "magnitude of asset amount must be less than 2^62");
   });

} FC_LOG_AND_RETHROW()


/*************************************************************************
* 6) Test issuing token
**************************************************************************/
BOOST_FIXTURE_TEST_CASE( issue_tests, horustokenio_tester ) try {

   auto token = create( N(horustokenio), asset::from_string("1200000000.0000 HORUS"));
   produce_blocks(1);

   issue( N(horustokenio), N(alice), asset::from_string("1000000000.0000 HORUS"), "HorusPay.io" );

   auto stats = get_stats("4,HORUS");
   REQUIRE_MATCHING_OBJECT( stats, mvo()
      ("supply", "1000000000.0000 HORUS")
      ("max_supply", "1200000000.0000 HORUS")
      ("issuer", "horustokenio")
   );

   auto alice_balance = get_account(N(alice), "4,HORUS");
   REQUIRE_MATCHING_OBJECT( alice_balance, mvo()
      ("balance", "1000000000.0000 HORUS")
   );

   BOOST_REQUIRE_EQUAL( wasm_assert_msg( "quantity exceeds available supply" ),
      issue( N(horustokenio), N(alice), asset::from_string("1000000000.0001 HORUS"), "HorusPay.io" )
   );

   BOOST_REQUIRE_EQUAL( wasm_assert_msg( "must issue positive quantity" ),
      issue( N(horustokenio), N(alice), asset::from_string("-1.0000 HORUS"), "HorusPay.io" )
   );

   BOOST_REQUIRE_EQUAL( success(),
      issue( N(horustokenio), N(alice), asset::from_string("1.0000 HORUS"), "HorusPay.io" )
   );

} FC_LOG_AND_RETHROW()


/*************************************************************************
* 7) Test basic token transfering
**************************************************************************/
BOOST_FIXTURE_TEST_CASE( transfer_tests, horustokenio_tester ) try {

   auto token = create( N(horustokenio), asset::from_string("1200000000.0000 HORUS"));
   produce_blocks(1);

   issue( N(horustokenio), N(alice), asset::from_string("1000.0000 HORUS"), "HorusPay.io" );

   auto stats = get_stats("4,HORUS");
   REQUIRE_MATCHING_OBJECT( stats, mvo()
      ("supply", "1000.0000 HORUS")
      ("max_supply", "1200000000.0000 HORUS")
      ("issuer", "horustokenio")
   );

   auto alice_balance = get_account(N(alice), "4,HORUS");
   REQUIRE_MATCHING_OBJECT( alice_balance, mvo()
      ("balance", "1000.0000 HORUS")
   );

   transfer( N(alice), N(bob), asset::from_string("300.0000 HORUS"), "HorusPay.io" );

   alice_balance = get_account(N(alice), "4,HORUS");
   REQUIRE_MATCHING_OBJECT( alice_balance, mvo()
      ("balance", "700.0000 HORUS")
   );

   auto bob_balance = get_account(N(bob), "4,HORUS");
   REQUIRE_MATCHING_OBJECT( bob_balance, mvo()
      ("balance", "300.0000 HORUS")
   );

   BOOST_REQUIRE_EQUAL( wasm_assert_msg( "overdrawn balance" ),
      transfer( N(alice), N(bob), asset::from_string("701.0000 HORUS"), "HorusPay.io" )
   );

   BOOST_REQUIRE_EQUAL( wasm_assert_msg( "must transfer positive quantity" ),
      transfer( N(alice), N(bob), asset::from_string("-1000.0000 HORUS"), "HorusPay.io" )
   );

} FC_LOG_AND_RETHROW()


/*************************************************************************
* 8) Test staking HORUS tokens
*
*    alice (stakehorus) 100.000 HORUS -> alice
*    alice (stakehorus) 100000.0000 HORUS -> bob
*    alice (stakehorus) 1000000.0000 HORUS -> carol
*
*    alice : stakes - 0, 1, 2
*    alice : userres -  1100100.0000 HORUS
*    alice : refunds - None
**************************************************************************/
BOOST_FIXTURE_TEST_CASE( stakehorus_tests, horustokenio_tester ) try {

   auto horus_token = create( N(horustokenio), asset::from_string("1200000000.0000 HORUS"));
   produce_blocks(1);

   // Transfer tokens to alice
   issue( N(horustokenio), N(alice), asset::from_string("2000000.0000 HORUS"), "issuing to alice" );

   // minimum balace error
   BOOST_REQUIRE_EQUAL( wasm_assert_msg( "minimum stake required is '10.0000 HORUS'" ),
      stakehorus( N(alice), N(alice), asset::from_string("9.9999 HORUS") )
   );
   // attempt to stake more HORUS tokens then user has
   BOOST_REQUIRE_EQUAL( wasm_assert_msg( "not enough liquid HORUS to stake" ),
      stakehorus( N(alice), N(alice), asset::from_string("2000001.0000 HORUS") )
   );
   // stake must be positive amount
   BOOST_REQUIRE_EQUAL( wasm_assert_msg( "must stake a positive amount" ),
      stakehorus( N(alice), N(alice), asset::from_string("-100.0000 HORUS") )
   );

   // while in Beta 1 million HORUS will mint ECASH at a 0.0023% 7 day rate
   stakehorus( N(alice), N(alice), asset::from_string("100.0000 HORUS") );
   stakehorus( N(alice), N(bob),   asset::from_string("100000.0000 HORUS") );
   stakehorus( N(alice), N(carol), asset::from_string("1000000.0000 HORUS") );

   produce_blocks(1);

   auto alice_stake_0 = get_horus_stake( N(alice), 0 );
   REQUIRE_MATCHING_OBJECT( alice_stake_0, mvo()
      ("id", "0")
      ("from", "alice")
      ("to", "alice")
      ("horus_weight", "100.0000 HORUS")
      ("time_initial", "1577836804")
   );

   auto alice_stake_1 = get_horus_stake( N(alice), 1 );
   REQUIRE_MATCHING_OBJECT( alice_stake_1, mvo()
      ("id", "1")
      ("from", "alice")
      ("to", "bob")
      ("horus_weight", "100000.0000 HORUS")
      ("time_initial", "1577836805")
   );

   auto alice_stake_2 = get_horus_stake( N(alice), 2 );
   REQUIRE_MATCHING_OBJECT( alice_stake_2, mvo()
      ("id", "2")
      ("from", "alice")
      ("to", "carol")
      ("horus_weight", "1000000.0000 HORUS")
      ("time_initial", "1577836805")
   );

   // Total resources
   auto alice_total_resources = get_user_resources( N(alice) );
   REQUIRE_MATCHING_OBJECT( alice_total_resources, mvo()
      ("owner", "alice")
      ("total_staked_horus", "1100100.0000 HORUS")
   );

   // attempt to transfer more HORUS tokens then user has liquid now that is is staked
   BOOST_REQUIRE_EQUAL( wasm_assert_msg( "not enough liquid HORUS to transfer" ),
      transfer( N(alice), N(bob), asset::from_string("899900.0001 HORUS"), "transfer" )
   );

   BOOST_REQUIRE_EQUAL( success(),
      transfer( N(alice), N(bob), asset::from_string("899900.0000 HORUS"), "transfer" )
   );

} FC_LOG_AND_RETHROW()


/*************************************************************************
* 9) Test staking HORUS tokens and claiming rewards
*
*   TODO: set permission on claiming
*
*   alice (claimreward) -> alice  [success]
*   alice (claimreward) -> bob   [failure]
*   bob   (claimreward) -> bob [success]
**************************************************************************/
BOOST_FIXTURE_TEST_CASE( claimreward_from_tests, horustokenio_tester ) try {

   /**********************************************************************
   *              S E T U P ----- S T A R T
   **********************************************************************/

   auto horus_token = create( N(horustokenio), asset::from_string("1200000000.0000 HORUS"));
   auto ecash_token = create( N(horustokenio), asset::from_string("1200000000.0000 ECASH") );
   produce_blocks(1);

   issue( N(horustokenio), N(alice), asset::from_string("2000000.0000 HORUS"), "issuing HORUS" );

   stakehorus( N(alice), N(alice), asset::from_string("100.0000 HORUS") );
   stakehorus( N(alice), N(bob),   asset::from_string("100000.0000 HORUS") );
   stakehorus( N(alice), N(carol), asset::from_string("1000000.0000 HORUS") );

   produce_blocks(1);

   // Make sure that Alice retains ownership of her tokens even when they are staked
   auto alice_HORUS_balance = get_account(N(alice), "4,HORUS");
   REQUIRE_MATCHING_OBJECT( alice_HORUS_balance, mvo()
      ("balance", "2000000.0000 HORUS")
   );

   auto alice_total_resources = get_user_resources( N(alice) );
   REQUIRE_MATCHING_OBJECT( alice_total_resources, mvo()
      ("owner", "alice")
      ("total_staked_horus", "1100100.0000 HORUS")
   );

   produce_blocks(1);

   /**********************************************************************
   *              S E T U P ----- E N D
   **********************************************************************/

   produce_blocks(25);

   BOOST_REQUIRE_EQUAL( success(),
      claimreward( N(alice), 0 )
   );
   BOOST_REQUIRE_EQUAL( success(),
      claimreward( N(alice), 1 )
   );
   BOOST_REQUIRE_EQUAL( success(),
      claimreward( N(alice), 2 )
   );
   BOOST_REQUIRE_EQUAL( wasm_assert_msg( "stake id does not exist" ),
      claimreward( N(alice), 3 )
   );

   produce_blocks(1);

   // 0.023% of 100 => 0.00023 * 100 = 0.0233 ECASH
   auto alice_ECASH_balance = get_account(N(alice), "4,ECASH");
   REQUIRE_MATCHING_OBJECT( alice_ECASH_balance, mvo()
      ("balance", "0.0233 ECASH")
   );

   // 0.00046  * 100000 = 46.6600 ECASH
   auto bob_ECASH_balance = get_account(N(bob), "4,ECASH");
   REQUIRE_MATCHING_OBJECT( bob_ECASH_balance, mvo()
      ("balance", "46.6600 ECASH")
   );

   // 0.0023 * 1000000 = 2300.0000 ECASH
   auto carol_ECASH_balance = get_account(N(carol), "4,ECASH");
   REQUIRE_MATCHING_OBJECT( carol_ECASH_balance, mvo()
      ("balance", "2333.0000 ECASH")
   );

   produce_blocks(6);

   // claim again
   BOOST_REQUIRE_EQUAL( success(),
      claimreward( N(alice), 0 )
   );

   alice_ECASH_balance = get_account(N(alice), "4,ECASH");
   REQUIRE_MATCHING_OBJECT( alice_ECASH_balance, mvo()
      ("balance", "0.0466 ECASH")
   );


} FC_LOG_AND_RETHROW()


/*************************************************************************
* 10) Test unstaking HORUS tokens & refunds
*
*    alice (stakehorus) 100.000 HORUS -> alice
*    alice (stakehorus) 100000.0000 HORUS -> bob
*    alice (stakehorus) 1000000.0000 HORUS -> carol
*
*    alice : stakes - 0, 1, 2
*    alice : userres -  1100100.0000 HORUS
*    alice : refunds - None
**************************************************************************/
BOOST_FIXTURE_TEST_CASE( unstakehorus_tests, horustokenio_tester ) try {

   /**********************************************************************
   *              S E T U P ----- S T A R T
   **********************************************************************/

   auto horus_token = create( N(horustokenio), asset::from_string("1200000000.0000 HORUS"));
   auto ecash_token = create( N(horustokenio), asset::from_string("1200000000.0000 ECASH") );
   produce_blocks(1);

   issue( N(horustokenio), N(alice), asset::from_string("2000000.0000 HORUS"), "issuing HORUS" );

   stakehorus( N(alice), N(alice), asset::from_string("100.0000 HORUS") );
   stakehorus( N(alice), N(bob),   asset::from_string("100000.0000 HORUS") );
   stakehorus( N(alice), N(carol), asset::from_string("1000000.0000 HORUS") );

   produce_blocks(1);

   // Make sure that Alice retains ownership of her tokens even when they are staked
   auto alice_HORUS_balance = get_account(N(alice), "4,HORUS");
   REQUIRE_MATCHING_OBJECT( alice_HORUS_balance, mvo()
      ("balance", "2000000.0000 HORUS")
   );

   auto alice_total_resources = get_user_resources( N(alice) );
   REQUIRE_MATCHING_OBJECT( alice_total_resources, mvo()
      ("owner", "alice")
      ("total_staked_horus", "1100100.0000 HORUS")
   );

   produce_blocks(1);

   /**********************************************************************
   *              S E T U P ----- E N D
   **********************************************************************/

   // unstake id 0
   {
      BOOST_REQUIRE_EQUAL( success(),
         unstakehorus( N(alice), 0 )
      );

      auto alice_horus_refund_0 = get_horus_refunds( N(alice), 0 );
      REQUIRE_MATCHING_OBJECT( alice_horus_refund_0, mvo()
         ( "id", "0")
         ( "request_time", "1577836807")
         ( "horus_amount", "100.0000 HORUS")
      )

      // DEPRICATED TABLE
      // auto alice_refunds = get_refunds( N(alice) );
      // REQUIRE_MATCHING_OBJECT( alice_refunds, mvo()
      //    ( "owner", "alice" )
      //    ( "request_time", "1577836807" )
      //    ( "horus_amount", "100.0000 HORUS" )
      // );

      // Total resources remain the same until refund is completed
      alice_total_resources = get_user_resources( N(alice) );
      REQUIRE_MATCHING_OBJECT( alice_total_resources, mvo()
         ("owner", "alice")
         ("total_staked_horus", "1100100.0000 HORUS")
      );

      // wait for refund stake 0 (100.0000 HORUS) sucessful
      produce_blocks(20);

      alice_total_resources = get_user_resources( N(alice) );
      REQUIRE_MATCHING_OBJECT( alice_total_resources, mvo()
         ("owner", "alice")
         ("total_staked_horus", "1100000.0000 HORUS")
      );
   }   // end unstake id 0

   // unstake id 1
   {
      BOOST_REQUIRE_EQUAL( success(),
         unstakehorus( N(alice), 1 )
      );

      auto alice_horus_refund_1 = get_horus_refunds( N(alice), 1 );
      REQUIRE_MATCHING_OBJECT( alice_horus_refund_1, mvo()
         ( "id", "1")
         ( "request_time", "1577836818")
         ( "horus_amount", "100000.0000 HORUS")
      )

      // DEPRICATED TABLE
      // auto alice_refunds = get_refunds( N(alice) );
      // REQUIRE_MATCHING_OBJECT( alice_refunds, mvo()
      //    ( "owner", "alice" )
      //    ( "request_time", "1577836818" )
      //    ( "horus_amount", "100000.0000 HORUS" )
      // );

      // Total resources remain the same until refund is completed
      alice_total_resources = get_user_resources( N(alice) );
      REQUIRE_MATCHING_OBJECT( alice_total_resources, mvo()
         ("owner", "alice")
         ("total_staked_horus", "1100000.0000 HORUS")
      );

      produce_blocks(10);

      // unstake id 2
      BOOST_REQUIRE_EQUAL( success(),
         unstakehorus( N(alice), 2 )
      );
      auto alice_horus_refund_2 = get_horus_refunds( N(alice), 2 );
      REQUIRE_MATCHING_OBJECT( alice_horus_refund_2, mvo()
         ( "id", "2" )
         ( "request_time", "1577836823" )
         ( "horus_amount", "1000000.0000 HORUS" )
      );
      // total res doesn't change
      alice_total_resources = get_user_resources( N(alice) );
      REQUIRE_MATCHING_OBJECT( alice_total_resources, mvo()
         ("owner", "alice")
         ("total_staked_horus", "1100000.0000 HORUS")
      );

      // wait for refund stake 1 (100000.0000 HORUS) sucessful
      produce_blocks(10);

      alice_total_resources = get_user_resources( N(alice) );
      REQUIRE_MATCHING_OBJECT( alice_total_resources, mvo()
         ("owner", "alice")
         ("total_staked_horus", "1000000.0000 HORUS")
      );

      produce_blocks(10);

      // now alice has all her HORUS liquid again
      BOOST_REQUIRE_EQUAL( success(),
         transfer( N(alice), N(bob), asset::from_string("2000000.0000 HORUS"), "transfer" )
      );

   }   // end unstake id 1

} FC_LOG_AND_RETHROW()


/*************************************************************************
* 10) Test staking HORUS tokens and claiming rewards for someone else
**************************************************************************/
BOOST_FIXTURE_TEST_CASE( claimreward_receiver_tests, horustokenio_tester ) try {

   // auto horus_token = create( N(horustokenio), asset::from_string("1200000000.0000 HORUS") );
   // auto ecash_token = create( N(horustokenio), asset::from_string("1200000000.0000 ECASH") );
   // produce_blocks(1);

   // issue( N(horustokenio), N(alice), asset::from_string("2000000.0000 HORUS"), "issuing HORUS to alice");

   // stakehorus( N(alice), N(alice), asset::from_string("100.0000 HORUS") );
   // stakehorus( N(alice), N(bob),   asset::from_string("100000.0000 HORUS") );
   // stakehorus( N(alice), N(carol), asset::from_string("1000000.0000 HORUS") );

   // auto alice_total_resources = get_user_resources( N(alice) );
   // REQUIRE_MATCHING_OBJECT( alice_total_resources, mvo()
   //    ("owner", "alice")
   //    ("total_staked_horus", "1001334.0000 HORUS")
   // );

   // produce_blocks(25);

   // BOOST_REQUIRE_EQUAL( success(),
   //    claimreward( N(alice), 0 )
   // );
   // BOOST_REQUIRE_EQUAL( success(),
   //    claimreward( N(alice), 1 )
   // );
   // BOOST_REQUIRE_EQUAL( success(),
   //    claimreward( N(alice), 2 )
   // );
   // BOOST_REQUIRE_EQUAL( wasm_assert_msg( "stake id does not exist" ),
   //    claimreward( N(alice), 3 )
   // );

   // produce_blocks(5);

   // auto bob_ECASH_balance = get_account(N(bob), "4,ECASH");
   // REQUIRE_MATCHING_OBJECT( bob_ECASH_balance, mvo()
   //    ("balance", "2333.3111 ECASH")
   // );

   // produce_blocks(6);

   // // claim again
   // BOOST_REQUIRE_EQUAL( success(),
   //    claimreward( N(alice), 0 )
   // );

   // bob_ECASH_balance = get_account(N(bob), "4,ECASH");
   // REQUIRE_MATCHING_OBJECT( bob_ECASH_balance, mvo()
   //    ("balance", "4666.3111 ECASH")
   // );

   // // Make sure that Alice retains ownership of her tokens even when they are staked
   // auto alice_HORUS_balance = get_account(N(alice), "4,HORUS");
   // REQUIRE_MATCHING_OBJECT( alice_HORUS_balance, mvo()
   //    ("balance", "2000000.0000 HORUS")
   // );


} FC_LOG_AND_RETHROW()


BOOST_AUTO_TEST_SUITE_END()
