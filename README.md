# horustokenio contract

Mainnet account running this contract: `horustokenio`
Token Symbol: `HORUS`
Token Symbol: `ECASH`

Jungle Testnet account running this contract: `horustokenio`
Token Symbol: `HORUS`
Token Symbol: `ECASH`

code hash: 1acb3965ad831f151844e19647ef7f533e8b535c8968b7dc4244a2fdf4266ff2

## How to use this contract

To view account balance

`cleos get currency balance horustokenio account-name HORUS`

`cleos get currency balance horustokenio account-name ECASH`

To transfer tokens (example: 1.0000 HORUS)

```bash
cleos push action horustokenio transfer '["from","to","1.0000 HORUS","memo"]' -p from

cleos push action horustokenio transfer '["from","to","1.0000 ECASH","memo"]' -p from
```

## Description

This contract allows for the creation of eosio compatible tokens under the class name `horustokenio`.  This is based off the eosio.token contract (https://github.com/EOSIO/eos/blob/master/contracts/eosio.token).

## Actions
### create

Standard currency create action.  Creates a new token asset.

### issue

Standard currency issue action.  Issues tokens to specified accounts.  Requires issuer permission.

### transfer

Standard currency transfer action.  Transfer tokens between two accounts.

### stakehorus

This action lets a HORUS token holder stake their tokens for themselves (or another account) in order to get access to claim staking rewards.
A minimum of 10.0000 HORUS must be staked to participate in staking rewards. Rewards are earned by staking HORUS tokens for
longer than 7 days. After 7 days payouts can be claimed in the form of ECASH. ECASH is rewarded proportionally to the amount of
HORUS staked and will be issued at a 1% monthly rate of the staked HORUS for a stake greater than or equal to 1 million HORUS,
and at a 0.1% monthly rate for any stake less than 1 million. In the future when the HorusPay Payroll Portal is fully released,
the 1 million HORUS token threshold will be removed and all stakes will mint ECASH at a 0.1% monthly rate. After the 7 day vesting
period the staking durration will automatically be renewed for the owner {{ from }} to continue claiming rewards. This action may
change at a later point in time.

```bash
cleos push action horustokenio stakehorus '["from","receiver","10.0000 HORUS"]' -p from
```
ex:
```bash
cleos push action horustokenio stakehorus '["alice","alice","10.0000 HORUS"]' -p alice
```

### unstakehorus

Unstake tokens back to the staker.  There is a 7 day delay to unstake.

```bash
cleos push action horustokenio unstakehorus '["from","stake_id"]' -p from
```

### claimreward

```bash
cleos push action horustokenio claimreward '["owner","stake_id"]' -p owner
```

### refundhorus

Called when unstaking to refund the staked tokens over a period of time.

```bash
cleos push action horustokenio refundbyid '["owner","refund_id"]' -p owner
```

## Tables

Users will pay for their own RAM

### accounts
```bash
cleos get table horustokenio horustester1 accounts
{
  "rows": [{
      "balance": "0.0554 ECASH"
    },{
      "balance": "1000000.0000 HORUS"
    }
  ],
  "more": false
}
```

### userres
```bash
cleos get table horustokenio horustester1 userres
{
  "rows": [{
      "owner": "horustester1",
      "total_staked_horus": "208200.0000 HORUS"
    }
  ],
  "more": false
}
```

### stakedhorus
```bash
cleos get table horustokenio horustester1 stakedhorus
{
  "rows": [{
      "id": 1,
      "from": "horustester1",
      "to": "horustester2",
      "horus_weight": "100.0000 HORUS",
      "time_initial": 1537919744
    },{
      "id": 2,
      "from": "horustester1",
      "to": "horustester3",
      "horus_weight": "100000.0000 HORUS",
      "time_initial": 1537919744
    },{
      "id": 5,
      "from": "horustester1",
      "to": "horustester1",
      "horus_weight": "7000.0000 HORUS",
      "time_initial": 1537919744
    }
  ],
  "more": false
}
```

### horusrefunds
```bash
cleos get table horustokenio horustester1 horusrefunds
{
  "rows": [{
      "id": 0,
      "from": "horustester1",
      "to": "horustester1",
      "horus_amount": "500.0000 HORUS",
      "request_time": 1537919753
    },{
      "id": 1,
      "from": "horustester1",
      "to": "horustester4",
      "horus_amount": "100600.0000 HORUS",
      "request_time": 1537919757
    }
  ],
  "more": false
}
```
--
## Notes
To add permission on the mainnet run

```bash
cleos set account permission horustokenio active '{"threshold": 1,"keys": [{"key": "EOS5omd3bSM4Gxeoc1RffhdTZMVtRz8rSPARXQoEEE2L2wrDYt1kv","weight": 1}],"accounts": [{"permission":{"actor":"horustokenio","permission":"eosio.code"},"weight":1},{"permission":{"actor":"jdisalvatore","permission":"horuspay"},"weight":1}]}' owner -p horustokenio
```

---
## Future Updates

### add stake
Add HORUS tokens to an existing stake.  This will restart the initial stake time.

### claimreward - claim all
Claim all available rewards at once.

---
built with eos v1.2.4
To build in-source with eos, place the `eosio.token` and `horustokenio` directories into `/eos/contracts` and run `make`

```bash
$cd /eos/build
$make
```

Contact Information

telegram: https://t.me/horuspayUS
