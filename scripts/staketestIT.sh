CLEOS="cleos"
CLEOS_PARAMS="-u http://dev.cryptolions.io:18888"
FROM="horustester1"
TO="horustester2"
USER3="horustester3"
USER4="horustester4"
OWNER="horustester1"
STAKE_ID=0
WAIT_PERIOD=7		#in seconds
###########################################################################

# if the -live flag is included, connect to an external network
if [ "$1" = "-live" ] || [ "$2" = "-live" ] || [ "$3" = "-live" ]; then
	CLEOS="$CLEOS $CLEOS_PARAMS"
fi

# if the --wallet-unlock flag is include, then prompt for password to
# unlock the default wallet
if [ "$1" = "--wallet-unlock" ] || [ "$2" = "--wallet-unlock" ] \
|| [ "$3" = "--wallet-unlock" ]; then
	${CLEOS} wallet unlock
fi

open nodeos.command
sleep 3

function printdetails () {
	echo '---------------------------------------------------------'
	echo 'STAKED HORUS'
	${CLEOS} get table horustokenio ${FROM} stakedhorus
	echo 'USERRES'
	${CLEOS} get table horustokenio ${FROM} userres
	echo 'HORUSREFUNDS'
	${CLEOS} get table horustokenio ${FROM} horusrefunds
	#echo 'REFUNDS'
	#${CLEOS} get table horustokenio ${FROM} refunds
	echo $FROM 'BALANCE:'
	${CLEOS} get currency balance horustokenio ${FROM} HORUS
	${CLEOS} get currency balance horustokenio ${FROM} ECASH
	echo $TO 'BALANCE:'
	${CLEOS} get currency balance horustokenio ${TO} HORUS
	${CLEOS} get currency balance horustokenio ${TO} ECASH
	echo $USER3 'BALANCE:'
	${CLEOS} get currency balance horustokenio ${USER3} HORUS
	${CLEOS} get currency balance horustokenio ${USER3} ECASH
	echo $USER4 'BALANCE:'
	${CLEOS} get currency balance horustokenio ${USER4} HORUS
	${CLEOS} get currency balance horustokenio ${USER4} ECASH
	echo '---------------------------------------------------------'
}

function printSleepPrint () {
	printdetails
	sleep ${WAIT_PERIOD}
	printdetails
}

# if the -print flag is included, print the details and exit
if [ "$1" = "-print" ] || [ "$2" = "-print" ] || [ "$3" = "-print" ]; then
	printdetails
	exit
fi

createhorus () {
	echo "Creating HORUS Token"
	${CLEOS} push action horustokenio create '["horustokenio","1200000000.0000 HORUS"]' -p horustokenio
	sleep .75
}

createecash () {
	echo "Creating ECASH Token"
	${CLEOS} push action horustokenio create '["horustokenio","1200000000.0000 ECASH"]' -p horustokenio
	sleep .75
}

issuehorus () {
	echo "Issuing HORUS Token"
	${CLEOS} push action horustokenio issue '["'$1'","10000000.0000 HORUS","HorusPay.io"]' -p horustokenio
	${CLEOS} push action horustokenio issue '["'$2'","10000000.0000 HORUS","HorusPay.io"]' -p horustokenio
	${CLEOS} push action horustokenio issue '["'$3'","10000000.0000 HORUS","HorusPay.io"]' -p horustokenio
	${CLEOS} push action horustokenio issue '["'$4'","10000000.0000 HORUS","HorusPay.io"]' -p horustokenio
}

boundstest () {
	echo 'EXPECTED: assertion fail due to staking min requirements'
	${CLEOS} push action horustokenio stakehorus '["'$FROM'","'$FROM'","10.0000 HORUS"]' -p ${FROM}
	echo 'EXPECTED: assertion fail due to staking greater than liquid balance'
	${CLEOS} push action horustokenio stakehorus '["'$FROM'","'$TO'","2000000.0001 HORUS"]' -p ${FROM}


	# echo 'EXPECTED: assertion fail staking greater than liquid balance'
	# ${CLEOS} push action horustokenio stakehorus '["'$FROM'","'$FROM'","1.0000 HORUS"]' -p ${FROM}
}

percentagetest() {
	echo 'EXPECTED: exact tokens staked'
	${CLEOS} push action horustokenio stakehorus '["'$FROM'","'$FROM'","1000000.0000 HORUS"]' -p ${FROM}

	echo 'EXPECTED: exact tokens staked'
	${CLEOS} push action horustokenio stakehorus '["'$FROM'","'$FROM'","1000.0000 HORUS"]' -p ${FROM}
}

staketest () {
	echo 'CREATE 3 STAKES'
	${CLEOS} push action horustokenio stakehorus '["'$1'","'$2'","100.0000 HORUS"]' -p ${1}
	${CLEOS} push action horustokenio stakehorus '["'$1'","'$2'","50.0000 HORUS"]' -p ${1}
	${CLEOS} push action horustokenio stakehorus '["'$1'","'$2'","25.0000 HORUS"]' -p ${1}
	printdetails

}

stakeandclaimtest () {
	echo 'CREATE 3 STAKES'
	${CLEOS} push action horustokenio stakehorus '["'$1'","'$2'","100.0000 HORUS"]' -p ${1}
	${CLEOS} push action horustokenio stakehorus '["'$1'","'$2'","50.0000 HORUS"]' -p ${1}
	${CLEOS} push action horustokenio stakehorus '["'$1'","'$2'","25.0000 HORUS"]' -p ${1}
	printdetails

	${CLEOS} push action horustokenio unstakehorus '["'$1'","1"]' -p ${1}
	printSleepPrint

	${CLEOS} push action horustokenio unstakehorus '["'$1'","2"]' -p ${1}
	printSleepPrint

	${CLEOS} push action horustokenio claimreward '["'$1'","0"]' -p ${1}
	printdetails

	${CLEOS} push action horustokenio claimreward '["'$1'","0"]' -p ${1}
	printdetails

	# sleep ${WAIT_PERIOD}
	${CLEOS} push action horustokenio claimreward '["'$1'","0"]' -p ${1}
	printdetails

	${CLEOS} push action horustokenio unstakehorus '["'$1'","0"]' -p ${1}
	printSleepPrint
}

stakeforbob () {
	echo $1
}

# As a user with 1 Million HORUS
# I will stake:
#         500 for FROM    id 0
#         100 for TO      id 1
#     100,000 for USER3   id 2
#     100,600 for USER4   id 3
#       4,000 for FROM    id 4
#       7,000 for FROM    id 5
#    --------
#     212,200 HORUS total
#
#  unstake 4 :
#      212200 - 4000 = 208,200
#
#  unstake 0 and 3 :
#      208,200 -  100600 = 107,600
#      107,600 -  100    = 107,500
#
#  unstake 1, 5 and 2 :
#    unstake 1:
#      107,500 - 100 = 107,400
#        wait 2 seconds ( 5 sec remaining )
#
#  unstake 5:
#    107,400 - 7,000 = 100,400
#      wait 7 seconds
#
checkrefunds () {
	echo 'CREATE 6 STAKES'
	${CLEOS} push action horustokenio stakehorus '["'$1'","'$1'","500.0000 HORUS"]' -p ${1}
	${CLEOS} push action horustokenio stakehorus '["'$1'","'$2'","100.0000 HORUS"]' -p ${1}
	${CLEOS} push action horustokenio stakehorus '["'$1'","'$3'","100000.0000 HORUS"]' -p ${1}
	${CLEOS} push action horustokenio stakehorus '["'$1'","'$4'","100600.0000 HORUS"]' -p ${1}
	${CLEOS} push action horustokenio stakehorus '["'$1'","'$1'","4000.0000 HORUS"]' -p ${1}
	${CLEOS} push action horustokenio stakehorus '["'$1'","'$1'","7000.0000 HORUS"]' -p ${1}
	printdetails $STAKEDHORUS $USERRES $HORUSREFUNDS
	echo 'EXPECTED: STAKEDHORUS    ids: 0,1,2,3,4,5'
	echo 'EXPECTED: USERRES        total_staked_horus  212,200'
	echo 'EXPECTED: HORUSREFUNDS   None'
	echo '---------------------------------------------------------'
	echo 'sleep 1'; sleep 1

	echo 'unstake id 4 = 4000 HORUS'
	${CLEOS} push action horustokenio unstakehorus '["'$1'","4"]' -p ${1}
	printdetails
	echo 'EXPECTED: STAKEDHORUS    ids: 0,1,2,3,5'
	echo 'EXPECTED: USERRES        total_staked_horus  212,200'
	echo 'EXPECTED: HORUSREFUNDS   4 -> 4,000 (7 seconds remaining)'
	echo '---------------------------------------------------------'
	echo 'sleep 8'; sleep 8

	printdetails
	echo 'EXPECTED: STAKEDHORUS    ids: 0,1,2,3,5'
	echo 'EXPECTED: USERRES        total_staked_horus  208,200'
	echo 'EXPECTED: HORUSREFUNDS   None'
	echo '---------------------------------------------------------'

	echo 'unstaked id 0 = 500 HORUS'
	${CLEOS} push action horustokenio unstakehorus '["'$1'","0"]' -p ${1}
	echo 'sleep 4'; sleep 4
	printdetails
	echo 'EXPECTED: STAKEDHORUS    ids: 1,2,3,5'
	echo 'EXPECTED: USERRES        total_staked_horus  208,200'
	echo 'EXPECTED: HORUSREFUNDS    0 -> 500 (3 seconds remaingin)'
	echo '---------------------------------------------------------'

	echo 'unstaked id 3 = 100600 HORUS'
	${CLEOS} push action horustokenio unstakehorus '["'$1'","3"]' -p ${1}
	echo 'sleep 2'; sleep 2
	printdetails
	echo 'EXPECTED: STAKEDHORUS    ids: 1,2,5'
	echo 'EXPECTED: USERRES        total_staked_horus  208,200'
	echo 'EXPECTED: HORUSREFUNDS    0 -> 500 (1 second remaining)'
	echo 'EXPECTED: HORUSREFUNDS    3 -> 100600 (5 seconds remaining)'
	echo '---------------------------------------------------------'

	echo 'sleep 2'; sleep 2

	printdetails
	echo 'EXPECTED: STAKEDHORUS    ids: 1,2,5'
	echo 'EXPECTED: USERRES        total_staked_horus  207,700'
	echo 'EXPECTED: HORUSREFUNDS   3 -> 100600 (3 seconds remaining)'
	echo '---------------------------------------------------------'

	echo 'unstaked id 1 = 100 HORUS'
	${CLEOS} push action horustokenio unstakehorus '["'$1'","1"]' -p ${1}
	echo 'sleep 2'; sleep 2
	printdetails
	echo 'EXPECTED: STAKEDHORUS    ids: 2,5'
	echo 'EXPECTED: USERRES        total_staked_horus  207,700'
	echo 'EXPECTED: HORUSREFUNDS   1 -> 100 (5 seconds remaining)'
	echo 'EXPECTED: HORUSREFUNDS   3 -> 100600 (1 sec remaining)'
	echo '---------------------------------------------------------'

	echo 'unstaked id 5 = 7000 HORUS'
	${CLEOS} push action horustokenio unstakehorus '["'$1'","5"]' -p ${1}
	echo 'sleep 1'; sleep 1
	printdetails
	echo 'EXPECTED: STAKEDHORUS    ids: 2'
	echo 'EXPECTED: USERRES        total_staked_horus  107,100'
	echo 'EXPECTED: HORUSREFUNDS   1 -> 100 (4 seconds remaining)'
	echo 'EXPECTED: HORUSREFUNDS   5 -> 7,000 (6 seconds remaining)'
	echo '---------------------------------------------------------'

	echo 'unstaked id 2 = 100000.0000 HORUS'
	${CLEOS} push action horustokenio unstakehorus '["'$1'","2"]' -p ${1}
	echo 'sleep 3'; sleep 3
	printdetails
	echo 'EXPECTED: STAKEDHORUS    None'
	echo 'EXPECTED: USERRES        total_staked_horus  107,100'
	echo 'EXPECTED: HORUSREFUNDS   1 -> 100 (1 seconds remaining)'
	echo 'EXPECTED: HORUSREFUNDS   2 -> 100,000 (4 seconds remaining)'
	echo 'EXPECTED: HORUSREFUNDS   5 -> 7,000 (3 seconds remaining)'
	echo '---------------------------------------------------------'

	echo 'sleep 3'; sleep 3
	printdetails
	echo 'EXPECTED: STAKEDHORUS    None'
	echo 'EXPECTED: USERRES        total_staked_horus  100,000'
	echo 'EXPECTED: HORUSREFUNDS   2 -> 100,000 (1 second remaining)'
	echo '---------------------------------------------------------'

	echo 'sleep 1'; sleep 1
	printdetails
}

########### TESTS  ###########
#createhorus
#createecash
#issuehorus $FROM $TO $USER3 $USER4
#printdetails


# stake for myself
# staketest $FROM $FROM

# stake for a friend
#boundstest

# check refund capabilities
checkrefunds $FROM $TO $USER3 $USER4


killall nodeos

########### COMMMAND LINE HELPERS  ###########
# cleos -u http://dev.cryptolions.io:18888 push action horustokenio transfer '[ "horustester1", "bob", "0.5250 ECASH", "Cash is King" ]' -p horustester1

# cleos -u http://dev.cryptolions.io:18888 get account horustester1
# cleos -u http://dev.cryptolions.io:18888 get table horustokenio horustester1 stakedhorus
# cleos -u http://dev.cryptolions.io:18888 get table horustokenio horustester1 refunds
# cleos -u http://dev.cryptolions.io:18888 get table horustokenio horustester1 userres
# cleos -u http://dev.cryptolions.io:18888 get currency balance horustokenio horustester1 HORUS
# cleos -u http://dev.cryptolions.io:18888 get currency balance horustokenio horustester1 ECASH
# cleos -u http://dev.cryptolions.io:18888 push action horustokenio unstakehorus '["horustester1","0"]' -p horustester1
# cleos -u http://dev.cryptolions.io:18888 push action horustokenio claimreward '["horustester1","0"]' -p horustester1

# ${CLEOS} push action horustokenio claimreward '["'$OWNER'","stake_id"]' -p ${OWNER}
# ${CLEOS} push action horustokenio stakehorus '["'$FROM'","'$TO'","100.0000 HORUS"]' -p ${FROM}
