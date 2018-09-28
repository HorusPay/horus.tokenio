	.text
	.file	"horustokenio.bc"
	.hidden	_ZeqRK11checksum256S1_
	.globl	_ZeqRK11checksum256S1_
	.type	_ZeqRK11checksum256S1_,@function
_ZeqRK11checksum256S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.eqz 	$push2=, $pop1
	.endfunc
.Lfunc_end0:
	.size	_ZeqRK11checksum256S1_, .Lfunc_end0-_ZeqRK11checksum256S1_

	.hidden	_ZeqRK11checksum160S1_
	.globl	_ZeqRK11checksum160S1_
	.type	_ZeqRK11checksum160S1_,@function
_ZeqRK11checksum160S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.eqz 	$push2=, $pop1
	.endfunc
.Lfunc_end1:
	.size	_ZeqRK11checksum160S1_, .Lfunc_end1-_ZeqRK11checksum160S1_

	.hidden	_ZneRK11checksum160S1_
	.globl	_ZneRK11checksum160S1_
	.type	_ZneRK11checksum160S1_,@function
_ZneRK11checksum160S1_:
	.param  	i32, i32
	.result 	i32
	i32.const	$push0=, 32
	i32.call	$push1=, memcmp@FUNCTION, $0, $1, $pop0
	i32.const	$push2=, 0
	i32.ne  	$push3=, $pop1, $pop2
	.endfunc
.Lfunc_end2:
	.size	_ZneRK11checksum160S1_, .Lfunc_end2-_ZneRK11checksum160S1_

	.hidden	now
	.globl	now
	.type	now,@function
now:
	.result 	i32
	i64.call	$push1=, current_time@FUNCTION
	i64.const	$push0=, 1000000
	i64.div_u	$push2=, $pop1, $pop0
	i32.wrap/i64	$push3=, $pop2
	.endfunc
.Lfunc_end3:
	.size	now, .Lfunc_end3-now

	.hidden	_ZN5eosio12require_authERKNS_16permission_levelE
	.globl	_ZN5eosio12require_authERKNS_16permission_levelE
	.type	_ZN5eosio12require_authERKNS_16permission_levelE,@function
_ZN5eosio12require_authERKNS_16permission_levelE:
	.param  	i32
	i64.load	$push1=, 0($0)
	i64.load	$push0=, 8($0)
	call    	require_auth2@FUNCTION, $pop1, $pop0
	.endfunc
.Lfunc_end4:
	.size	_ZN5eosio12require_authERKNS_16permission_levelE, .Lfunc_end4-_ZN5eosio12require_authERKNS_16permission_levelE

	.hidden	_ZN5eosio5token6createEyNS_5assetE
	.globl	_ZN5eosio5token6createEyNS_5assetE
	.type	_ZN5eosio5token6createEyNS_5assetE,@function
_ZN5eosio5token6createEyNS_5assetE:
	.param  	i32, i64, i32
	.local  	i64, i64, i64, i32, i64, i32, i32
	i32.const	$push92=, 0
	i32.const	$push89=, 0
	i32.load	$push90=, __stack_pointer($pop89)
	i32.const	$push91=, 128
	i32.sub 	$push136=, $pop90, $pop91
	tee_local	$push135=, $9=, $pop136
	i32.store	__stack_pointer($pop92), $pop135
	i64.load	$push0=, 0($0)
	call    	require_auth@FUNCTION, $pop0
	i32.const	$8=, 0
	i64.load	$push134=, 8($2)
	tee_local	$push133=, $3=, $pop134
	i64.const	$push132=, 8
	i64.shr_u	$push131=, $pop133, $pop132
	tee_local	$push130=, $4=, $pop131
	copy_local	$7=, $pop130
.LBB5_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push1=, $7
	i32.const	$push139=, 24
	i32.shl 	$push2=, $pop1, $pop139
	i32.const	$push138=, -1073741825
	i32.add 	$push3=, $pop2, $pop138
	i32.const	$push137=, 452984830
	i32.gt_u	$push4=, $pop3, $pop137
	br_if   	1, $pop4
	block   	
	i64.const	$push144=, 8
	i64.shr_u	$push143=, $7, $pop144
	tee_local	$push142=, $7=, $pop143
	i64.const	$push141=, 255
	i64.and 	$push5=, $pop142, $pop141
	i64.const	$push140=, 0
	i64.ne  	$push6=, $pop5, $pop140
	br_if   	0, $pop6
.LBB5_3:
	loop    	
	i64.const	$push149=, 8
	i64.shr_u	$push148=, $7, $pop149
	tee_local	$push147=, $7=, $pop148
	i64.const	$push146=, 255
	i64.and 	$push7=, $pop147, $pop146
	i64.const	$push145=, 0
	i64.ne  	$push8=, $pop7, $pop145
	br_if   	3, $pop8
	i32.const	$push153=, 1
	i32.add 	$push152=, $8, $pop153
	tee_local	$push151=, $8=, $pop152
	i32.const	$push150=, 7
	i32.lt_s	$push9=, $pop151, $pop150
	br_if   	0, $pop9
.LBB5_5:
	end_loop
	end_block
	i32.const	$6=, 1
	i32.const	$push157=, 1
	i32.add 	$push156=, $8, $pop157
	tee_local	$push155=, $8=, $pop156
	i32.const	$push154=, 7
	i32.lt_s	$push10=, $pop155, $pop154
	br_if   	0, $pop10
	br      	2
.LBB5_6:
	end_loop
	end_block
	i32.const	$6=, 0
.LBB5_7:
	end_block
	i32.const	$push11=, .L.str
	call    	eosio_assert@FUNCTION, $6, $pop11
	i32.const	$6=, 0
	block   	
	i64.load	$push159=, 0($2)
	tee_local	$push158=, $5=, $pop159
	i64.const	$push12=, 4611686018427387903
	i64.add 	$push13=, $pop158, $pop12
	i64.const	$push14=, 9223372036854775806
	i64.gt_u	$push15=, $pop13, $pop14
	br_if   	0, $pop15
	i32.const	$8=, 0
	copy_local	$7=, $4
.LBB5_9:
	block   	
	loop    	
	i32.wrap/i64	$push16=, $7
	i32.const	$push162=, 24
	i32.shl 	$push17=, $pop16, $pop162
	i32.const	$push161=, -1073741825
	i32.add 	$push18=, $pop17, $pop161
	i32.const	$push160=, 452984830
	i32.gt_u	$push19=, $pop18, $pop160
	br_if   	1, $pop19
	block   	
	i64.const	$push167=, 8
	i64.shr_u	$push166=, $7, $pop167
	tee_local	$push165=, $7=, $pop166
	i64.const	$push164=, 255
	i64.and 	$push20=, $pop165, $pop164
	i64.const	$push163=, 0
	i64.ne  	$push21=, $pop20, $pop163
	br_if   	0, $pop21
.LBB5_11:
	loop    	
	i64.const	$push172=, 8
	i64.shr_u	$push171=, $7, $pop172
	tee_local	$push170=, $7=, $pop171
	i64.const	$push169=, 255
	i64.and 	$push22=, $pop170, $pop169
	i64.const	$push168=, 0
	i64.ne  	$push23=, $pop22, $pop168
	br_if   	3, $pop23
	i32.const	$push176=, 1
	i32.add 	$push175=, $8, $pop176
	tee_local	$push174=, $8=, $pop175
	i32.const	$push173=, 7
	i32.lt_s	$push24=, $pop174, $pop173
	br_if   	0, $pop24
.LBB5_13:
	end_loop
	end_block
	i32.const	$6=, 1
	i32.const	$push180=, 1
	i32.add 	$push179=, $8, $pop180
	tee_local	$push178=, $8=, $pop179
	i32.const	$push177=, 7
	i32.lt_s	$push25=, $pop178, $pop177
	br_if   	0, $pop25
	br      	2
.LBB5_14:
	end_loop
	end_block
	i32.const	$6=, 0
.LBB5_15:
	end_block
	i32.const	$push26=, .L.str.1
	call    	eosio_assert@FUNCTION, $6, $pop26
	i64.const	$push27=, 0
	i64.gt_s	$push28=, $5, $pop27
	i32.const	$push29=, .L.str.2
	call    	eosio_assert@FUNCTION, $pop28, $pop29
	i32.const	$push96=, 8
	i32.add 	$push97=, $9, $pop96
	i32.const	$push189=, 32
	i32.add 	$push30=, $pop97, $pop189
	i32.const	$push188=, 0
	i32.store	0($pop30), $pop188
	i64.const	$push31=, -1
	i64.store	24($9), $pop31
	i64.const	$push187=, 0
	i64.store	32($9), $pop187
	i64.load	$push186=, 0($0)
	tee_local	$push185=, $7=, $pop186
	i64.store	8($9), $pop185
	i64.store	16($9), $4
	block   	
	block   	
	i64.const	$push184=, -4157508551318700032
	i32.call	$push183=, db_find_i64@FUNCTION, $7, $4, $pop184, $4
	tee_local	$push182=, $8=, $pop183
	i32.const	$push181=, 0
	i32.lt_s	$push32=, $pop182, $pop181
	br_if   	0, $pop32
	i32.const	$push126=, 8
	i32.add 	$push127=, $9, $pop126
	i32.call	$push33=, _ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop127, $8
	i32.load	$push34=, 40($pop33)
	i32.const	$push128=, 8
	i32.add 	$push129=, $9, $pop128
	i32.eq  	$push35=, $pop34, $pop129
	i32.const	$push36=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop35, $pop36
	i32.const	$8=, 0
	br      	1
.LBB5_17:
	end_block
	i32.const	$8=, 1
.LBB5_18:
	end_block
	i32.const	$push37=, .L.str.3
	call    	eosio_assert@FUNCTION, $8, $pop37
	i64.load	$4=, 0($0)
	i64.load	$push38=, 8($9)
	i64.call	$push39=, current_receiver@FUNCTION
	i64.eq  	$push40=, $pop38, $pop39
	i32.const	$push41=, .L.str.49
	call    	eosio_assert@FUNCTION, $pop40, $pop41
	i32.const	$push42=, 56
	i32.call	$push205=, _Znwj@FUNCTION, $pop42
	tee_local	$push204=, $8=, $pop205
	i32.call	$drop=, _ZN5eosio5token14currency_statsC2Ev@FUNCTION, $pop204
	i32.const	$push98=, 8
	i32.add 	$push99=, $9, $pop98
	i32.store	40($8), $pop99
	i64.store	8($8), $3
	i32.const	$push203=, 28
	i32.add 	$push43=, $8, $pop203
	i32.const	$push44=, 12
	i32.add 	$push45=, $2, $pop44
	i32.load	$push46=, 0($pop45)
	i32.store	0($pop43), $pop46
	i32.const	$push47=, 24
	i32.add 	$push48=, $8, $pop47
	i32.const	$push202=, 8
	i32.add 	$push49=, $2, $pop202
	i32.load	$push50=, 0($pop49)
	i32.store	0($pop48), $pop50
	i32.const	$push51=, 20
	i32.add 	$push52=, $8, $pop51
	i32.const	$push53=, 4
	i32.add 	$push54=, $2, $pop53
	i32.load	$push55=, 0($pop54)
	i32.store	0($pop52), $pop55
	i32.load	$push56=, 0($2)
	i32.store	16($8), $pop56
	i64.store	32($8), $1
	i32.const	$push100=, 48
	i32.add 	$push101=, $9, $pop100
	i32.const	$push57=, 40
	i32.add 	$push58=, $pop101, $pop57
	i32.store	96($9), $pop58
	i32.const	$push102=, 48
	i32.add 	$push103=, $9, $pop102
	i32.store	92($9), $pop103
	i32.const	$push104=, 48
	i32.add 	$push105=, $9, $pop104
	i32.store	88($9), $pop105
	i32.const	$push106=, 88
	i32.add 	$push107=, $9, $pop106
	i32.store	104($9), $pop107
	i32.const	$push59=, 16
	i32.add 	$push60=, $8, $pop59
	i32.store	116($9), $pop60
	i32.store	112($9), $8
	i32.const	$push201=, 32
	i32.add 	$push61=, $8, $pop201
	i32.store	120($9), $pop61
	i32.const	$push108=, 112
	i32.add 	$push109=, $9, $pop108
	i32.const	$push110=, 104
	i32.add 	$push111=, $9, $pop110
	call    	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio5assetES8_RKyEEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE@FUNCTION, $pop109, $pop111
	i32.const	$push112=, 8
	i32.add 	$push113=, $9, $pop112
	i32.const	$push200=, 8
	i32.add 	$push63=, $pop113, $pop200
	i64.load	$push64=, 0($pop63)
	i64.const	$push199=, -4157508551318700032
	i64.load	$push62=, 8($8)
	i64.const	$push198=, 8
	i64.shr_u	$push197=, $pop62, $pop198
	tee_local	$push196=, $7=, $pop197
	i32.const	$push114=, 48
	i32.add 	$push115=, $9, $pop114
	i32.const	$push195=, 40
	i32.call	$push194=, db_store_i64@FUNCTION, $pop64, $pop199, $4, $pop196, $pop115, $pop195
	tee_local	$push193=, $6=, $pop194
	i32.store	44($8), $pop193
	block   	
	i32.const	$push116=, 8
	i32.add 	$push117=, $9, $pop116
	i32.const	$push192=, 16
	i32.add 	$push191=, $pop117, $pop192
	tee_local	$push190=, $2=, $pop191
	i64.load	$push65=, 0($pop190)
	i64.lt_u	$push66=, $7, $pop65
	br_if   	0, $pop66
	i64.const	$push67=, 1
	i64.add 	$push68=, $7, $pop67
	i64.store	0($2), $pop68
.LBB5_20:
	end_block
	i32.store	112($9), $8
	i32.const	$push212=, 8
	i32.add 	$push69=, $8, $pop212
	i64.load	$push70=, 0($pop69)
	i64.const	$push211=, 8
	i64.shr_u	$push210=, $pop70, $pop211
	tee_local	$push209=, $7=, $pop210
	i64.store	48($9), $pop209
	i32.store	88($9), $6
	block   	
	block   	
	i32.const	$push118=, 8
	i32.add 	$push119=, $9, $pop118
	i32.const	$push208=, 28
	i32.add 	$push74=, $pop119, $pop208
	i32.load	$push207=, 0($pop74)
	tee_local	$push206=, $2=, $pop207
	i32.const	$push71=, 40
	i32.add 	$push72=, $9, $pop71
	i32.load	$push73=, 0($pop72)
	i32.ge_u	$push75=, $pop206, $pop73
	br_if   	0, $pop75
	i64.store	8($2), $7
	i32.store	16($2), $6
	i32.const	$push78=, 0
	i32.store	112($9), $pop78
	i32.store	0($2), $8
	i32.const	$push81=, 36
	i32.add 	$push82=, $9, $pop81
	i32.const	$push79=, 24
	i32.add 	$push80=, $2, $pop79
	i32.store	0($pop82), $pop80
	br      	1
.LBB5_22:
	end_block
	i32.const	$push76=, 32
	i32.add 	$push77=, $9, $pop76
	i32.const	$push120=, 112
	i32.add 	$push121=, $9, $pop120
	i32.const	$push122=, 48
	i32.add 	$push123=, $9, $pop122
	i32.const	$push124=, 88
	i32.add 	$push125=, $9, $pop124
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop77, $pop121, $pop123, $pop125
.LBB5_23:
	end_block
	i32.load	$8=, 112($9)
	i32.const	$push83=, 0
	i32.store	112($9), $pop83
	block   	
	i32.eqz 	$push223=, $8
	br_if   	0, $pop223
	call    	_ZdlPv@FUNCTION, $8
.LBB5_25:
	end_block
	block   	
	i32.load	$push214=, 32($9)
	tee_local	$push213=, $6=, $pop214
	i32.eqz 	$push224=, $pop213
	br_if   	0, $pop224
	block   	
	block   	
	i32.const	$push84=, 36
	i32.add 	$push218=, $9, $pop84
	tee_local	$push217=, $0=, $pop218
	i32.load	$push216=, 0($pop217)
	tee_local	$push215=, $8=, $pop216
	i32.eq  	$push85=, $pop215, $6
	br_if   	0, $pop85
.LBB5_28:
	loop    	
	i32.const	$push222=, -24
	i32.add 	$push221=, $8, $pop222
	tee_local	$push220=, $8=, $pop221
	i32.load	$2=, 0($pop220)
	i32.const	$push219=, 0
	i32.store	0($8), $pop219
	block   	
	i32.eqz 	$push225=, $2
	br_if   	0, $pop225
	call    	_ZdlPv@FUNCTION, $2
.LBB5_30:
	end_block
	i32.ne  	$push86=, $6, $8
	br_if   	0, $pop86
	end_loop
	i32.const	$push87=, 32
	i32.add 	$push88=, $9, $pop87
	i32.load	$8=, 0($pop88)
	br      	1
.LBB5_32:
	end_block
	copy_local	$8=, $6
.LBB5_33:
	end_block
	i32.store	0($0), $6
	call    	_ZdlPv@FUNCTION, $8
.LBB5_34:
	end_block
	i32.const	$push95=, 0
	i32.const	$push93=, 128
	i32.add 	$push94=, $9, $pop93
	i32.store	__stack_pointer($pop95), $pop94
	.endfunc
.Lfunc_end5:
	.size	_ZN5eosio5token6createEyNS_5assetE, .Lfunc_end5-_ZN5eosio5token6createEyNS_5assetE

	.section	.text._ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push45=, 0
	i32.load	$push46=, __stack_pointer($pop45)
	i32.const	$push47=, 48
	i32.sub 	$push70=, $pop46, $pop47
	tee_local	$push69=, $9=, $pop70
	copy_local	$8=, $pop69
	i32.const	$push48=, 0
	i32.store	__stack_pointer($pop48), $9
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push68=, 0($pop3)
	tee_local	$push67=, $7=, $pop68
	i32.load	$push66=, 24($0)
	tee_local	$push65=, $2=, $pop66
	i32.eq  	$push4=, $pop67, $pop65
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push71=, -24
	i32.add 	$6=, $7, $pop71
.LBB6_2:
	loop    	
	i32.const	$push72=, 16
	i32.add 	$push6=, $6, $pop72
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push76=, -24
	i32.add 	$push75=, $6, $pop76
	tee_local	$push74=, $4=, $pop75
	copy_local	$6=, $pop74
	i32.add 	$push9=, $4, $3
	i32.const	$push73=, -24
	i32.ne  	$push10=, $pop9, $pop73
	br_if   	0, $pop10
.LBB6_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
	i32.const	$push12=, -24
	i32.add 	$push13=, $7, $pop12
	i32.load	$6=, 0($pop13)
	br      	1
.LBB6_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push79=, 0
	i32.call	$push78=, db_get_i64@FUNCTION, $1, $pop14, $pop79
	tee_local	$push77=, $6=, $pop78
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop77, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.51
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB6_8:
	end_block
	i32.const	$push44=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push81=, $9, $pop25
	tee_local	$push80=, $4=, $pop81
	copy_local	$push64=, $pop80
	i32.store	__stack_pointer($pop44), $pop64
.LBB6_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	12($8), $4
	i32.store	8($8), $4
	i32.add 	$push26=, $4, $6
	i32.store	16($8), $pop26
	block   	
	i32.const	$push27=, 513
	i32.lt_u	$push28=, $6, $pop27
	br_if   	0, $pop28
	call    	free@FUNCTION, $4
.LBB6_11:
	end_block
	i32.const	$push29=, 56
	i32.call	$push92=, _Znwj@FUNCTION, $pop29
	tee_local	$push91=, $6=, $pop92
	i32.call	$drop=, _ZN5eosio5token14currency_statsC2Ev@FUNCTION, $pop91
	i32.store	40($6), $0
	i32.const	$push52=, 8
	i32.add 	$push53=, $8, $pop52
	i32.store	24($8), $pop53
	i32.const	$push30=, 16
	i32.add 	$push31=, $6, $pop30
	i32.store	36($8), $pop31
	i32.store	32($8), $6
	i32.const	$push32=, 32
	i32.add 	$push33=, $6, $pop32
	i32.store	40($8), $pop33
	i32.const	$push54=, 32
	i32.add 	$push55=, $8, $pop54
	i32.const	$push56=, 24
	i32.add 	$push57=, $8, $pop56
	call    	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN5eosio5assetES7_RyEEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE@FUNCTION, $pop55, $pop57
	i32.store	44($6), $1
	i32.store	24($8), $6
	i64.load	$push34=, 8($6)
	i64.const	$push35=, 8
	i64.shr_u	$push90=, $pop34, $pop35
	tee_local	$push89=, $5=, $pop90
	i64.store	32($8), $pop89
	i32.load	$push88=, 44($6)
	tee_local	$push87=, $7=, $pop88
	i32.store	4($8), $pop87
	block   	
	block   	
	i32.const	$push38=, 28
	i32.add 	$push86=, $0, $pop38
	tee_local	$push85=, $1=, $pop86
	i32.load	$push84=, 0($pop85)
	tee_local	$push83=, $4=, $pop84
	i32.const	$push82=, 32
	i32.add 	$push36=, $0, $pop82
	i32.load	$push37=, 0($pop36)
	i32.ge_u	$push39=, $pop83, $pop37
	br_if   	0, $pop39
	i64.store	8($4), $5
	i32.store	16($4), $7
	i32.const	$push40=, 0
	i32.store	24($8), $pop40
	i32.store	0($4), $6
	i32.const	$push41=, 24
	i32.add 	$push42=, $4, $pop41
	i32.store	0($1), $pop42
	br      	1
.LBB6_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push58=, 24
	i32.add 	$push59=, $8, $pop58
	i32.const	$push60=, 32
	i32.add 	$push61=, $8, $pop60
	i32.const	$push62=, 4
	i32.add 	$push63=, $8, $pop62
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop59, $pop61, $pop63
.LBB6_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push43=, 0
	i32.store	24($8), $pop43
	i32.eqz 	$push93=, $4
	br_if   	0, $pop93
	call    	_ZdlPv@FUNCTION, $4
.LBB6_16:
	end_block
	i32.const	$push51=, 0
	i32.const	$push49=, 48
	i32.add 	$push50=, $8, $pop49
	i32.store	__stack_pointer($pop51), $pop50
	copy_local	$push94=, $6
	.endfunc
.Lfunc_end6:
	.size	_ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl, .Lfunc_end6-_ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN5eosio5token14currency_statsC2Ev,"axG",@progbits,_ZN5eosio5token14currency_statsC2Ev,comdat
	.hidden	_ZN5eosio5token14currency_statsC2Ev
	.weak	_ZN5eosio5token14currency_statsC2Ev
	.type	_ZN5eosio5token14currency_statsC2Ev,@function
_ZN5eosio5token14currency_statsC2Ev:
	.param  	i32
	.result 	i32
	.local  	i64, i32, i32
	i64.const	$push0=, 1398362884
	i64.store	8($0), $pop0
	i64.const	$push30=, 0
	i64.store	0($0), $pop30
	i32.const	$push29=, 1
	i32.const	$push1=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop29, $pop1
	i64.load	$push2=, 8($0)
	i64.const	$push28=, 8
	i64.shr_u	$1=, $pop2, $pop28
	i32.const	$2=, 0
.LBB7_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push3=, $1
	i32.const	$push33=, 24
	i32.shl 	$push4=, $pop3, $pop33
	i32.const	$push32=, -1073741825
	i32.add 	$push5=, $pop4, $pop32
	i32.const	$push31=, 452984830
	i32.gt_u	$push6=, $pop5, $pop31
	br_if   	1, $pop6
	block   	
	i64.const	$push38=, 8
	i64.shr_u	$push37=, $1, $pop38
	tee_local	$push36=, $1=, $pop37
	i64.const	$push35=, 255
	i64.and 	$push7=, $pop36, $pop35
	i64.const	$push34=, 0
	i64.ne  	$push8=, $pop7, $pop34
	br_if   	0, $pop8
.LBB7_3:
	loop    	
	i64.const	$push43=, 8
	i64.shr_u	$push42=, $1, $pop43
	tee_local	$push41=, $1=, $pop42
	i64.const	$push40=, 255
	i64.and 	$push9=, $pop41, $pop40
	i64.const	$push39=, 0
	i64.ne  	$push10=, $pop9, $pop39
	br_if   	3, $pop10
	i32.const	$push47=, 1
	i32.add 	$push46=, $2, $pop47
	tee_local	$push45=, $2=, $pop46
	i32.const	$push44=, 7
	i32.lt_s	$push11=, $pop45, $pop44
	br_if   	0, $pop11
.LBB7_5:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push51=, 1
	i32.add 	$push50=, $2, $pop51
	tee_local	$push49=, $2=, $pop50
	i32.const	$push48=, 7
	i32.lt_s	$push12=, $pop49, $pop48
	br_if   	0, $pop12
	br      	2
.LBB7_6:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB7_7:
	end_block
	i32.const	$push13=, .L.str
	call    	eosio_assert@FUNCTION, $3, $pop13
	i32.const	$push57=, 24
	i32.add 	$push56=, $0, $pop57
	tee_local	$push55=, $2=, $pop56
	i64.const	$push14=, 1398362884
	i64.store	0($pop55), $pop14
	i64.const	$push54=, 0
	i64.store	16($0), $pop54
	i32.const	$push53=, 1
	i32.const	$push15=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop53, $pop15
	i64.load	$push16=, 0($2)
	i64.const	$push52=, 8
	i64.shr_u	$1=, $pop16, $pop52
	i32.const	$2=, 0
.LBB7_8:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push17=, $1
	i32.const	$push60=, 24
	i32.shl 	$push18=, $pop17, $pop60
	i32.const	$push59=, -1073741825
	i32.add 	$push19=, $pop18, $pop59
	i32.const	$push58=, 452984830
	i32.gt_u	$push20=, $pop19, $pop58
	br_if   	1, $pop20
	block   	
	i64.const	$push65=, 8
	i64.shr_u	$push64=, $1, $pop65
	tee_local	$push63=, $1=, $pop64
	i64.const	$push62=, 255
	i64.and 	$push21=, $pop63, $pop62
	i64.const	$push61=, 0
	i64.ne  	$push22=, $pop21, $pop61
	br_if   	0, $pop22
.LBB7_10:
	loop    	
	i64.const	$push70=, 8
	i64.shr_u	$push69=, $1, $pop70
	tee_local	$push68=, $1=, $pop69
	i64.const	$push67=, 255
	i64.and 	$push23=, $pop68, $pop67
	i64.const	$push66=, 0
	i64.ne  	$push24=, $pop23, $pop66
	br_if   	3, $pop24
	i32.const	$push74=, 1
	i32.add 	$push73=, $2, $pop74
	tee_local	$push72=, $2=, $pop73
	i32.const	$push71=, 7
	i32.lt_s	$push25=, $pop72, $pop71
	br_if   	0, $pop25
.LBB7_12:
	end_loop
	end_block
	i32.const	$3=, 1
	i32.const	$push78=, 1
	i32.add 	$push77=, $2, $pop78
	tee_local	$push76=, $2=, $pop77
	i32.const	$push75=, 7
	i32.lt_s	$push26=, $pop76, $pop75
	br_if   	0, $pop26
	br      	2
.LBB7_13:
	end_loop
	end_block
	i32.const	$3=, 0
.LBB7_14:
	end_block
	i32.const	$push27=, .L.str
	call    	eosio_assert@FUNCTION, $3, $pop27
	copy_local	$push79=, $0
	.endfunc
.Lfunc_end7:
	.size	_ZN5eosio5token14currency_statsC2Ev, .Lfunc_end7-_ZN5eosio5token14currency_statsC2Ev

	.section	.text._ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio5assetES8_RKyEEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE,"axG",@progbits,_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio5assetES8_RKyEEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE,comdat
	.hidden	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio5assetES8_RKyEEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE
	.weak	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio5assetES8_RKyEEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE
	.type	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio5assetES8_RKyEEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE,@function
_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio5assetES8_RKyEEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE:
	.param  	i32, i32
	.local  	i32, i32, i32
	i32.load	$3=, 0($0)
	i32.load	$push64=, 0($1)
	tee_local	$push63=, $2=, $pop64
	i32.load	$push1=, 8($pop63)
	i32.load	$push0=, 4($2)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($2)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $3, $pop7
	i32.load	$push8=, 4($2)
	i32.const	$push62=, 8
	i32.add 	$push61=, $pop8, $pop62
	tee_local	$push60=, $4=, $pop61
	i32.store	4($2), $pop60
	i32.load	$push9=, 8($2)
	i32.sub 	$push10=, $pop9, $4
	i32.const	$push59=, 7
	i32.gt_s	$push11=, $pop10, $pop59
	i32.const	$push58=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop11, $pop58
	i32.load	$push13=, 4($2)
	i32.const	$push57=, 8
	i32.add 	$push12=, $3, $pop57
	i32.const	$push56=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop12, $pop56
	i32.load	$push14=, 4($2)
	i32.const	$push55=, 8
	i32.add 	$push15=, $pop14, $pop55
	i32.store	4($2), $pop15
	i32.load	$3=, 4($0)
	i32.load	$push54=, 0($1)
	tee_local	$push53=, $2=, $pop54
	i32.load	$push17=, 8($pop53)
	i32.load	$push16=, 4($2)
	i32.sub 	$push18=, $pop17, $pop16
	i32.const	$push52=, 7
	i32.gt_s	$push19=, $pop18, $pop52
	i32.const	$push51=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop19, $pop51
	i32.load	$push20=, 4($2)
	i32.const	$push50=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop20, $3, $pop50
	i32.load	$push21=, 4($2)
	i32.const	$push49=, 8
	i32.add 	$push48=, $pop21, $pop49
	tee_local	$push47=, $4=, $pop48
	i32.store	4($2), $pop47
	i32.load	$push22=, 8($2)
	i32.sub 	$push23=, $pop22, $4
	i32.const	$push46=, 7
	i32.gt_s	$push24=, $pop23, $pop46
	i32.const	$push45=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop24, $pop45
	i32.load	$push26=, 4($2)
	i32.const	$push44=, 8
	i32.add 	$push25=, $3, $pop44
	i32.const	$push43=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop25, $pop43
	i32.load	$push27=, 4($2)
	i32.const	$push42=, 8
	i32.add 	$push28=, $pop27, $pop42
	i32.store	4($2), $pop28
	i32.load	$0=, 8($0)
	i32.load	$push41=, 0($1)
	tee_local	$push40=, $2=, $pop41
	i32.load	$push30=, 8($pop40)
	i32.load	$push29=, 4($2)
	i32.sub 	$push31=, $pop30, $pop29
	i32.const	$push39=, 7
	i32.gt_s	$push32=, $pop31, $pop39
	i32.const	$push38=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop32, $pop38
	i32.load	$push33=, 4($2)
	i32.const	$push37=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop33, $0, $pop37
	i32.load	$push34=, 4($2)
	i32.const	$push36=, 8
	i32.add 	$push35=, $pop34, $pop36
	i32.store	4($2), $pop35
	.endfunc
.Lfunc_end8:
	.size	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio5assetES8_RKyEEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE, .Lfunc_end8-_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio5assetES8_RKyEEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push46=, 0($0)
	tee_local	$push45=, $6=, $pop46
	i32.sub 	$push1=, $pop0, $pop45
	i32.const	$push44=, 24
	i32.div_s	$push43=, $pop1, $pop44
	tee_local	$push42=, $4=, $pop43
	i32.const	$push2=, 1
	i32.add 	$push41=, $pop42, $pop2
	tee_local	$push40=, $5=, $pop41
	i32.const	$push3=, 178956971
	i32.ge_u	$push4=, $pop40, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 178956970
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $6
	i32.const	$push49=, 24
	i32.div_s	$push48=, $pop6, $pop49
	tee_local	$push47=, $6=, $pop48
	i32.const	$push7=, 89478484
	i32.gt_u	$push8=, $pop47, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push53=, $6, $pop9
	tee_local	$push52=, $7=, $pop53
	i32.lt_u	$push10=, $7, $5
	i32.select	$push51=, $5, $pop52, $pop10
	tee_local	$push50=, $7=, $pop51
	i32.eqz 	$push79=, $pop50
	br_if   	1, $pop79
.LBB9_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB9_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB9_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB9_6:
	end_block
	i32.load	$5=, 0($1)
	i32.const	$push62=, 0
	i32.store	0($1), $pop62
	i32.const	$push13=, 24
	i32.mul 	$push14=, $4, $pop13
	i32.add 	$push61=, $6, $pop14
	tee_local	$push60=, $1=, $pop61
	i32.store	0($pop60), $5
	i64.load	$push15=, 0($2)
	i64.store	8($1), $pop15
	i32.load	$push16=, 0($3)
	i32.store	16($1), $pop16
	i32.const	$push59=, 24
	i32.mul 	$push17=, $7, $pop59
	i32.add 	$4=, $6, $pop17
	i32.const	$push58=, 24
	i32.add 	$5=, $1, $pop58
	block   	
	block   	
	i32.const	$push18=, 4
	i32.add 	$push19=, $0, $pop18
	i32.load	$push57=, 0($pop19)
	tee_local	$push56=, $6=, $pop57
	i32.load	$push55=, 0($0)
	tee_local	$push54=, $7=, $pop55
	i32.eq  	$push20=, $pop56, $pop54
	br_if   	0, $pop20
.LBB9_8:
	loop    	
	i32.const	$push74=, -24
	i32.add 	$push73=, $6, $pop74
	tee_local	$push72=, $2=, $pop73
	i32.load	$3=, 0($pop72)
	i32.const	$push71=, 0
	i32.store	0($2), $pop71
	i32.const	$push70=, -24
	i32.add 	$push21=, $1, $pop70
	i32.store	0($pop21), $3
	i32.const	$push69=, -8
	i32.add 	$push22=, $1, $pop69
	i32.const	$push68=, -8
	i32.add 	$push23=, $6, $pop68
	i32.load	$push24=, 0($pop23)
	i32.store	0($pop22), $pop24
	i32.const	$push67=, -12
	i32.add 	$push25=, $1, $pop67
	i32.const	$push66=, -12
	i32.add 	$push26=, $6, $pop66
	i32.load	$push27=, 0($pop26)
	i32.store	0($pop25), $pop27
	i32.const	$push65=, -16
	i32.add 	$push28=, $1, $pop65
	i32.const	$push64=, -16
	i32.add 	$push29=, $6, $pop64
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push63=, -24
	i32.add 	$1=, $1, $pop63
	copy_local	$6=, $2
	i32.ne  	$push31=, $7, $2
	br_if   	0, $pop31
	end_loop
	i32.const	$push32=, 4
	i32.add 	$push33=, $0, $pop32
	i32.load	$7=, 0($pop33)
	i32.load	$6=, 0($0)
	br      	1
.LBB9_10:
	end_block
	copy_local	$6=, $7
.LBB9_11:
	end_block
	i32.store	0($0), $1
	i32.const	$push34=, 4
	i32.add 	$push35=, $0, $pop34
	i32.store	0($pop35), $5
	i32.const	$push36=, 8
	i32.add 	$push37=, $0, $pop36
	i32.store	0($pop37), $4
	block   	
	i32.eq  	$push38=, $7, $6
	br_if   	0, $pop38
.LBB9_13:
	loop    	
	i32.const	$push78=, -24
	i32.add 	$push77=, $7, $pop78
	tee_local	$push76=, $7=, $pop77
	i32.load	$1=, 0($pop76)
	i32.const	$push75=, 0
	i32.store	0($7), $pop75
	block   	
	i32.eqz 	$push80=, $1
	br_if   	0, $pop80
	call    	_ZdlPv@FUNCTION, $1
.LBB9_15:
	end_block
	i32.ne  	$push39=, $6, $7
	br_if   	0, $pop39
.LBB9_16:
	end_loop
	end_block
	block   	
	i32.eqz 	$push81=, $6
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $6
.LBB9_18:
	end_block
	.endfunc
.Lfunc_end9:
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end9-_ZNSt3__16vectorIN5eosio11multi_indexILy14289235522390851584ENS1_5token14currency_statsEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.section	.text._ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN5eosio5assetES7_RyEEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE,"axG",@progbits,_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN5eosio5assetES7_RyEEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE,comdat
	.hidden	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN5eosio5assetES7_RyEEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE
	.weak	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN5eosio5assetES7_RyEEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE
	.type	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN5eosio5assetES7_RyEEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE,@function
_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN5eosio5assetES7_RyEEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE:
	.param  	i32, i32
	.local  	i32, i32, i32
	i32.load	$3=, 0($0)
	i32.load	$push64=, 0($1)
	tee_local	$push63=, $2=, $pop64
	i32.load	$push1=, 8($pop63)
	i32.load	$push0=, 4($2)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($2)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop6, $pop7
	i32.load	$push8=, 4($2)
	i32.const	$push62=, 8
	i32.add 	$push61=, $pop8, $pop62
	tee_local	$push60=, $4=, $pop61
	i32.store	4($2), $pop60
	i32.load	$push9=, 8($2)
	i32.sub 	$push10=, $pop9, $4
	i32.const	$push59=, 7
	i32.gt_u	$push11=, $pop10, $pop59
	i32.const	$push58=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop11, $pop58
	i32.const	$push57=, 8
	i32.add 	$push12=, $3, $pop57
	i32.load	$push13=, 4($2)
	i32.const	$push56=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop56
	i32.load	$push14=, 4($2)
	i32.const	$push55=, 8
	i32.add 	$push15=, $pop14, $pop55
	i32.store	4($2), $pop15
	i32.load	$3=, 4($0)
	i32.load	$push54=, 0($1)
	tee_local	$push53=, $2=, $pop54
	i32.load	$push17=, 8($pop53)
	i32.load	$push16=, 4($2)
	i32.sub 	$push18=, $pop17, $pop16
	i32.const	$push52=, 7
	i32.gt_u	$push19=, $pop18, $pop52
	i32.const	$push51=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop19, $pop51
	i32.load	$push20=, 4($2)
	i32.const	$push50=, 8
	i32.call	$drop=, memcpy@FUNCTION, $3, $pop20, $pop50
	i32.load	$push21=, 4($2)
	i32.const	$push49=, 8
	i32.add 	$push48=, $pop21, $pop49
	tee_local	$push47=, $4=, $pop48
	i32.store	4($2), $pop47
	i32.load	$push22=, 8($2)
	i32.sub 	$push23=, $pop22, $4
	i32.const	$push46=, 7
	i32.gt_u	$push24=, $pop23, $pop46
	i32.const	$push45=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop24, $pop45
	i32.const	$push44=, 8
	i32.add 	$push25=, $3, $pop44
	i32.load	$push26=, 4($2)
	i32.const	$push43=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop25, $pop26, $pop43
	i32.load	$push27=, 4($2)
	i32.const	$push42=, 8
	i32.add 	$push28=, $pop27, $pop42
	i32.store	4($2), $pop28
	i32.load	$0=, 8($0)
	i32.load	$push41=, 0($1)
	tee_local	$push40=, $2=, $pop41
	i32.load	$push30=, 8($pop40)
	i32.load	$push29=, 4($2)
	i32.sub 	$push31=, $pop30, $pop29
	i32.const	$push39=, 7
	i32.gt_u	$push32=, $pop31, $pop39
	i32.const	$push38=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop32, $pop38
	i32.load	$push33=, 4($2)
	i32.const	$push37=, 8
	i32.call	$drop=, memcpy@FUNCTION, $0, $pop33, $pop37
	i32.load	$push34=, 4($2)
	i32.const	$push36=, 8
	i32.add 	$push35=, $pop34, $pop36
	i32.store	4($2), $pop35
	.endfunc
.Lfunc_end10:
	.size	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN5eosio5assetES7_RyEEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE, .Lfunc_end10-_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRN5eosio5assetES7_RyEEEZNS5_rsINS5_10datastreamIPKcEENS5_5token14currency_statsELPv0EEERT_SJ_RT0_EUlSJ_E_JLj0ELj1ELj2EEEEvSJ_OSK_NSt3__116integer_sequenceIjJXspT1_EEEENSO_17integral_constantIbLb0EEE

	.text
	.hidden	_ZN5eosio5token5issueEyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE
	.globl	_ZN5eosio5token5issueEyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE
	.type	_ZN5eosio5token5issueEyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE,@function
_ZN5eosio5token5issueEyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE:
	.param  	i32, i64, i32, i32
	.local  	i32, i64, i64, i32, i64, i32, i32, i64, i64, i64, i32
	i32.const	$push164=, 0
	i32.const	$push161=, 0
	i32.load	$push162=, __stack_pointer($pop161)
	i32.const	$push163=, 224
	i32.sub 	$push220=, $pop162, $pop163
	tee_local	$push219=, $14=, $pop220
	i32.store	__stack_pointer($pop164), $pop219
	i32.const	$9=, 0
	i64.load	$push218=, 8($2)
	tee_local	$push217=, $11=, $pop218
	i64.const	$push216=, 8
	i64.shr_u	$push215=, $pop217, $pop216
	tee_local	$push214=, $13=, $pop215
	copy_local	$8=, $pop214
.LBB11_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push0=, $8
	i32.const	$push223=, 24
	i32.shl 	$push1=, $pop0, $pop223
	i32.const	$push222=, -1073741825
	i32.add 	$push2=, $pop1, $pop222
	i32.const	$push221=, 452984830
	i32.gt_u	$push3=, $pop2, $pop221
	br_if   	1, $pop3
	block   	
	i64.const	$push228=, 8
	i64.shr_u	$push227=, $8, $pop228
	tee_local	$push226=, $8=, $pop227
	i64.const	$push225=, 255
	i64.and 	$push4=, $pop226, $pop225
	i64.const	$push224=, 0
	i64.ne  	$push5=, $pop4, $pop224
	br_if   	0, $pop5
.LBB11_3:
	loop    	
	i64.const	$push233=, 8
	i64.shr_u	$push232=, $8, $pop233
	tee_local	$push231=, $8=, $pop232
	i64.const	$push230=, 255
	i64.and 	$push6=, $pop231, $pop230
	i64.const	$push229=, 0
	i64.ne  	$push7=, $pop6, $pop229
	br_if   	3, $pop7
	i32.const	$push237=, 1
	i32.add 	$push236=, $9, $pop237
	tee_local	$push235=, $9=, $pop236
	i32.const	$push234=, 7
	i32.lt_s	$push8=, $pop235, $pop234
	br_if   	0, $pop8
.LBB11_5:
	end_loop
	end_block
	i32.const	$7=, 1
	i32.const	$push241=, 1
	i32.add 	$push240=, $9, $pop241
	tee_local	$push239=, $9=, $pop240
	i32.const	$push238=, 7
	i32.lt_s	$push9=, $pop239, $pop238
	br_if   	0, $pop9
	br      	2
.LBB11_6:
	end_loop
	end_block
	i32.const	$7=, 0
.LBB11_7:
	end_block
	i32.const	$push10=, .L.str
	call    	eosio_assert@FUNCTION, $7, $pop10
	block   	
	block   	
	i32.load8_u	$push244=, 0($3)
	tee_local	$push243=, $9=, $pop244
	i32.const	$push242=, 1
	i32.and 	$push11=, $pop243, $pop242
	br_if   	0, $pop11
	i32.const	$push245=, 1
	i32.shr_u	$9=, $9, $pop245
	br      	1
.LBB11_9:
	end_block
	i32.load	$9=, 4($3)
.LBB11_10:
	end_block
	i32.const	$push12=, 257
	i32.lt_u	$push13=, $9, $pop12
	i32.const	$push14=, .L.str.4
	call    	eosio_assert@FUNCTION, $pop13, $pop14
	i32.const	$10=, 0
	i32.const	$push168=, 88
	i32.add 	$push169=, $14, $pop168
	i32.const	$push252=, 32
	i32.add 	$push15=, $pop169, $pop252
	i32.const	$push251=, 0
	i32.store	0($pop15), $pop251
	i64.const	$push16=, -1
	i64.store	104($14), $pop16
	i64.const	$push17=, 0
	i64.store	112($14), $pop17
	i64.load	$push250=, 0($0)
	tee_local	$push249=, $8=, $pop250
	i64.store	88($14), $pop249
	i64.store	96($14), $13
	i32.const	$7=, 0
	block   	
	i64.const	$push18=, -4157508551318700032
	i32.call	$push248=, db_find_i64@FUNCTION, $8, $13, $pop18, $13
	tee_local	$push247=, $9=, $pop248
	i32.const	$push246=, 0
	i32.lt_s	$push19=, $pop247, $pop246
	br_if   	0, $pop19
	i32.const	$push210=, 88
	i32.add 	$push211=, $14, $pop210
	i32.call	$push254=, _ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop211, $9
	tee_local	$push253=, $7=, $pop254
	i32.load	$push20=, 40($pop253)
	i32.const	$push212=, 88
	i32.add 	$push213=, $14, $pop212
	i32.eq  	$push21=, $pop20, $pop213
	i32.const	$push22=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop21, $pop22
.LBB11_12:
	end_block
	i32.const	$push258=, 0
	i32.ne  	$push23=, $7, $pop258
	i32.const	$push24=, .L.str.5
	call    	eosio_assert@FUNCTION, $pop23, $pop24
	i64.load	$push25=, 32($7)
	call    	require_auth@FUNCTION, $pop25
	i32.const	$push257=, 32
	i32.add 	$4=, $7, $pop257
	block   	
	i64.load	$push256=, 0($2)
	tee_local	$push255=, $8=, $pop256
	i64.const	$push26=, 4611686018427387903
	i64.add 	$push27=, $pop255, $pop26
	i64.const	$push28=, 9223372036854775806
	i64.gt_u	$push29=, $pop27, $pop28
	br_if   	0, $pop29
	i32.const	$9=, 0
.LBB11_14:
	block   	
	loop    	
	i32.wrap/i64	$push30=, $13
	i32.const	$push261=, 24
	i32.shl 	$push31=, $pop30, $pop261
	i32.const	$push260=, -1073741825
	i32.add 	$push32=, $pop31, $pop260
	i32.const	$push259=, 452984830
	i32.gt_u	$push33=, $pop32, $pop259
	br_if   	1, $pop33
	block   	
	i64.const	$push266=, 8
	i64.shr_u	$push265=, $13, $pop266
	tee_local	$push264=, $13=, $pop265
	i64.const	$push263=, 255
	i64.and 	$push34=, $pop264, $pop263
	i64.const	$push262=, 0
	i64.ne  	$push35=, $pop34, $pop262
	br_if   	0, $pop35
.LBB11_16:
	loop    	
	i64.const	$push271=, 8
	i64.shr_u	$push270=, $13, $pop271
	tee_local	$push269=, $13=, $pop270
	i64.const	$push268=, 255
	i64.and 	$push36=, $pop269, $pop268
	i64.const	$push267=, 0
	i64.ne  	$push37=, $pop36, $pop267
	br_if   	3, $pop37
	i32.const	$push275=, 1
	i32.add 	$push274=, $9, $pop275
	tee_local	$push273=, $9=, $pop274
	i32.const	$push272=, 7
	i32.lt_s	$push38=, $pop273, $pop272
	br_if   	0, $pop38
.LBB11_18:
	end_loop
	end_block
	i32.const	$10=, 1
	i32.const	$push279=, 1
	i32.add 	$push278=, $9, $pop279
	tee_local	$push277=, $9=, $pop278
	i32.const	$push276=, 7
	i32.lt_s	$push39=, $pop277, $pop276
	br_if   	0, $pop39
	br      	2
.LBB11_19:
	end_loop
	end_block
	i32.const	$10=, 0
.LBB11_20:
	end_block
	i32.const	$push40=, .L.str.6
	call    	eosio_assert@FUNCTION, $10, $pop40
	i64.const	$push41=, 0
	i64.gt_s	$push42=, $8, $pop41
	i32.const	$push43=, .L.str.7
	call    	eosio_assert@FUNCTION, $pop42, $pop43
	i64.load	$push44=, 8($7)
	i64.eq  	$push45=, $11, $pop44
	i32.const	$push46=, .L.str.8
	call    	eosio_assert@FUNCTION, $pop45, $pop46
	i64.load	$push48=, 16($7)
	i64.load	$push47=, 0($7)
	i64.sub 	$push49=, $pop48, $pop47
	i64.le_s	$push50=, $8, $pop49
	i32.const	$push51=, .L.str.9
	call    	eosio_assert@FUNCTION, $pop50, $pop51
	i32.load	$push52=, 40($7)
	i32.const	$push170=, 88
	i32.add 	$push171=, $14, $pop170
	i32.eq  	$push53=, $pop52, $pop171
	i32.const	$push54=, .L.str.59
	call    	eosio_assert@FUNCTION, $pop53, $pop54
	i64.load	$push55=, 88($14)
	i64.call	$push56=, current_receiver@FUNCTION
	i64.eq  	$push57=, $pop55, $pop56
	i32.const	$push58=, .L.str.60
	call    	eosio_assert@FUNCTION, $pop57, $pop58
	i64.load	$push291=, 8($7)
	tee_local	$push290=, $13=, $pop291
	i64.eq  	$push59=, $11, $pop290
	i32.const	$push60=, .L.str.62
	call    	eosio_assert@FUNCTION, $pop59, $pop60
	i64.load	$push61=, 0($7)
	i64.add 	$push289=, $pop61, $8
	tee_local	$push288=, $8=, $pop289
	i64.store	0($7), $pop288
	i64.const	$push62=, -4611686018427387904
	i64.gt_s	$push63=, $8, $pop62
	i32.const	$push64=, .L.str.63
	call    	eosio_assert@FUNCTION, $pop63, $pop64
	i64.load	$push65=, 0($7)
	i64.const	$push66=, 4611686018427387904
	i64.lt_s	$push67=, $pop65, $pop66
	i32.const	$push68=, .L.str.64
	call    	eosio_assert@FUNCTION, $pop67, $pop68
	i64.const	$push69=, 8
	i64.shr_u	$push287=, $13, $pop69
	tee_local	$push286=, $8=, $pop287
	i64.load	$push70=, 8($7)
	i64.const	$push285=, 8
	i64.shr_u	$push71=, $pop70, $pop285
	i64.eq  	$push72=, $pop286, $pop71
	i32.const	$push73=, .L.str.61
	call    	eosio_assert@FUNCTION, $pop72, $pop73
	i32.const	$push172=, 128
	i32.add 	$push173=, $14, $pop172
	i32.const	$push74=, 40
	i32.add 	$push75=, $pop173, $pop74
	i32.store	192($14), $pop75
	i32.const	$push174=, 128
	i32.add 	$push175=, $14, $pop174
	i32.store	188($14), $pop175
	i32.const	$push176=, 128
	i32.add 	$push177=, $14, $pop176
	i32.store	184($14), $pop177
	i32.const	$push178=, 184
	i32.add 	$push179=, $14, $pop178
	i32.store	200($14), $pop179
	i32.const	$push76=, 16
	i32.add 	$push77=, $7, $pop76
	i32.store	212($14), $pop77
	i32.store	208($14), $7
	i32.store	216($14), $4
	i32.const	$push180=, 208
	i32.add 	$push181=, $14, $pop180
	i32.const	$push182=, 200
	i32.add 	$push183=, $14, $pop182
	call    	_ZN5boost3pfr6detail19for_each_field_implINS1_14sequence_tuple5tupleIJRKN5eosio5assetES8_RKyEEEZNS5_lsINS5_10datastreamIPcEENS5_5token14currency_statsELPv0EEERT_SK_RKT0_EUlRKSJ_E_JLj0ELj1ELj2EEEEvSK_OSL_NSt3__116integer_sequenceIjJXspT1_EEEENSS_17integral_constantIbLb0EEE@FUNCTION, $pop181, $pop183
	i32.load	$push78=, 44($7)
	i64.const	$push284=, 0
	i32.const	$push184=, 128
	i32.add 	$push185=, $14, $pop184
	i32.const	$push283=, 40
	call    	db_update_i64@FUNCTION, $pop78, $pop284, $pop185, $pop283
	block   	
	i32.const	$push186=, 88
	i32.add 	$push187=, $14, $pop186
	i32.const	$push282=, 16
	i32.add 	$push281=, $pop187, $pop282
	tee_local	$push280=, $9=, $pop281
	i64.load	$push79=, 0($pop280)
	i64.lt_u	$push80=, $8, $pop79
	br_if   	0, $pop80
	i64.const	$push81=, 1
	i64.add 	$push82=, $8, $pop81
	i64.store	0($9), $pop82
.LBB11_22:
	end_block
	i32.const	$push188=, 72
	i32.add 	$push189=, $14, $pop188
	i32.const	$push83=, 12
	i32.add 	$push301=, $pop189, $pop83
	tee_local	$push300=, $9=, $pop301
	i32.const	$push299=, 12
	i32.add 	$push84=, $2, $pop299
	i32.load	$push85=, 0($pop84)
	i32.store	0($pop300), $pop85
	i32.const	$push190=, 72
	i32.add 	$push191=, $14, $pop190
	i32.const	$push86=, 8
	i32.add 	$push298=, $pop191, $pop86
	tee_local	$push297=, $7=, $pop298
	i32.const	$push296=, 8
	i32.add 	$push87=, $2, $pop296
	i32.load	$push88=, 0($pop87)
	i32.store	0($pop297), $pop88
	i32.const	$push89=, 4
	i32.add 	$push90=, $2, $pop89
	i32.load	$push91=, 0($pop90)
	i32.store	76($14), $pop91
	i32.load	$push92=, 0($2)
	i32.store	72($14), $pop92
	i64.load	$8=, 0($4)
	i32.const	$push192=, 8
	i32.add 	$push193=, $14, $pop192
	i32.const	$push295=, 12
	i32.add 	$push93=, $pop193, $pop295
	i32.load	$push94=, 0($9)
	i32.store	0($pop93), $pop94
	i32.const	$push194=, 8
	i32.add 	$push195=, $14, $pop194
	i32.const	$push294=, 8
	i32.add 	$push95=, $pop195, $pop294
	i32.load	$push96=, 0($7)
	i32.store	0($pop95), $pop96
	i32.load	$push97=, 76($14)
	i32.store	12($14), $pop97
	i32.load	$push98=, 72($14)
	i32.store	8($14), $pop98
	i32.const	$push196=, 8
	i32.add 	$push197=, $14, $pop196
	call    	_ZN5eosio5token11add_balanceEyNS_5assetEy@FUNCTION, $0, $8, $pop197, $8
	block   	
	i64.load	$push293=, 0($4)
	tee_local	$push292=, $5=, $pop293
	i64.eq  	$push99=, $pop292, $1
	br_if   	0, $pop99
	i64.load	$6=, 0($0)
	i64.const	$8=, 0
	i64.const	$11=, 59
	i32.const	$9=, .L.str.10
	i64.const	$12=, 0
.LBB11_24:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push302=, 5
	i64.gt_u	$push100=, $8, $pop302
	br_if   	0, $pop100
	i32.load8_s	$push307=, 0($9)
	tee_local	$push306=, $7=, $pop307
	i32.const	$push305=, -97
	i32.add 	$push102=, $pop306, $pop305
	i32.const	$push304=, 255
	i32.and 	$push103=, $pop102, $pop304
	i32.const	$push303=, 25
	i32.gt_u	$push104=, $pop103, $pop303
	br_if   	1, $pop104
	i32.const	$push308=, 165
	i32.add 	$7=, $7, $pop308
	br      	2
.LBB11_27:
	end_block
	i64.const	$13=, 0
	i64.const	$push309=, 11
	i64.le_u	$push101=, $8, $pop309
	br_if   	2, $pop101
	br      	3
.LBB11_28:
	end_block
	i32.const	$push314=, 208
	i32.add 	$push105=, $7, $pop314
	i32.const	$push313=, 0
	i32.const	$push312=, -49
	i32.add 	$push106=, $7, $pop312
	i32.const	$push311=, 255
	i32.and 	$push107=, $pop106, $pop311
	i32.const	$push310=, 5
	i32.lt_u	$push108=, $pop107, $pop310
	i32.select	$7=, $pop105, $pop313, $pop108
.LBB11_29:
	end_block
	i64.extend_u/i32	$push109=, $7
	i64.const	$push316=, 56
	i64.shl 	$push110=, $pop109, $pop316
	i64.const	$push315=, 56
	i64.shr_s	$13=, $pop110, $pop315
.LBB11_30:
	end_block
	i64.const	$push318=, 31
	i64.and 	$push112=, $13, $pop318
	i64.const	$push317=, 4294967295
	i64.and 	$push111=, $11, $pop317
	i64.shl 	$13=, $pop112, $pop111
.LBB11_31:
	end_block
	i32.const	$push324=, 1
	i32.add 	$9=, $9, $pop324
	i64.const	$push323=, 1
	i64.add 	$8=, $8, $pop323
	i64.or  	$12=, $13, $12
	i64.const	$push322=, -5
	i64.add 	$push321=, $11, $pop322
	tee_local	$push320=, $11=, $pop321
	i64.const	$push319=, -6
	i64.ne  	$push113=, $pop320, $pop319
	br_if   	0, $pop113
	end_loop
	i32.const	$push117=, 52
	i32.add 	$push118=, $14, $pop117
	i32.const	$push114=, 12
	i32.add 	$push115=, $2, $pop114
	i32.load	$push116=, 0($pop115)
	i32.store	0($pop118), $pop116
	i32.const	$push198=, 24
	i32.add 	$push199=, $14, $pop198
	i32.const	$push122=, 24
	i32.add 	$push339=, $pop199, $pop122
	tee_local	$push338=, $7=, $pop339
	i32.const	$push119=, 8
	i32.add 	$push120=, $2, $pop119
	i32.load	$push121=, 0($pop120)
	i32.store	0($pop338), $pop121
	i32.const	$push126=, 44
	i32.add 	$push127=, $14, $pop126
	i32.const	$push123=, 4
	i32.add 	$push124=, $2, $pop123
	i32.load	$push125=, 0($pop124)
	i32.store	0($pop127), $pop125
	i64.store	32($14), $1
	i64.store	24($14), $5
	i32.load	$push128=, 0($2)
	i32.store	40($14), $pop128
	i32.const	$push129=, 56
	i32.add 	$push130=, $14, $pop129
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop130, $3
	i32.const	$push131=, 16
	i32.call	$push337=, _Znwj@FUNCTION, $pop131
	tee_local	$push336=, $9=, $pop337
	i64.store	0($pop336), $5
	i64.store	8($9), $12
	i32.store	208($14), $9
	i32.const	$push335=, 16
	i32.add 	$push334=, $9, $pop335
	tee_local	$push333=, $9=, $pop334
	i32.store	216($14), $pop333
	i32.store	212($14), $9
	i64.load	$push132=, 24($14)
	i64.store	128($14), $pop132
	i64.load	$push133=, 32($14)
	i64.store	136($14), $pop133
	i32.const	$push200=, 128
	i32.add 	$push201=, $14, $pop200
	i32.const	$push332=, 24
	i32.add 	$push134=, $pop201, $pop332
	i64.load	$push135=, 0($7)
	i64.store	0($pop134), $pop135
	i64.load	$push136=, 40($14)
	i64.store	144($14), $pop136
	i32.const	$push202=, 128
	i32.add 	$push203=, $14, $pop202
	i32.const	$push137=, 40
	i32.add 	$push331=, $pop203, $pop137
	tee_local	$push330=, $7=, $pop331
	i32.const	$push204=, 24
	i32.add 	$push205=, $14, $pop204
	i32.const	$push329=, 40
	i32.add 	$push328=, $pop205, $pop329
	tee_local	$push327=, $9=, $pop328
	i32.load	$push138=, 0($pop327)
	i32.store	0($pop330), $pop138
	i64.load	$push139=, 56($14)
	i64.store	160($14), $pop139
	i32.const	$push140=, 0
	i32.store	56($14), $pop140
	i32.const	$push141=, 60
	i32.add 	$push142=, $14, $pop141
	i32.const	$push326=, 0
	i32.store	0($pop142), $pop326
	i32.const	$push325=, 0
	i32.store	0($9), $pop325
	i64.const	$push143=, -3617168760277827584
	i32.const	$push206=, 208
	i32.add 	$push207=, $14, $pop206
	i32.const	$push208=, 128
	i32.add 	$push209=, $14, $pop208
	call    	_ZN5eosio15dispatch_inlineIJyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE@FUNCTION, $6, $pop143, $pop207, $pop209
	block   	
	i32.load8_u	$push145=, 160($14)
	i32.const	$push144=, 1
	i32.and 	$push146=, $pop145, $pop144
	i32.eqz 	$push352=, $pop146
	br_if   	0, $pop352
	i32.load	$push147=, 0($7)
	call    	_ZdlPv@FUNCTION, $pop147
.LBB11_34:
	end_block
	block   	
	i32.load	$push341=, 208($14)
	tee_local	$push340=, $9=, $pop341
	i32.eqz 	$push353=, $pop340
	br_if   	0, $pop353
	i32.store	212($14), $9
	call    	_ZdlPv@FUNCTION, $9
.LBB11_36:
	end_block
	i32.const	$push148=, 56
	i32.add 	$push149=, $14, $pop148
	i32.load8_u	$push150=, 0($pop149)
	i32.const	$push151=, 1
	i32.and 	$push152=, $pop150, $pop151
	i32.eqz 	$push354=, $pop152
	br_if   	0, $pop354
	i32.const	$push153=, 64
	i32.add 	$push154=, $14, $pop153
	i32.load	$push155=, 0($pop154)
	call    	_ZdlPv@FUNCTION, $pop155
.LBB11_38:
	end_block
	block   	
	i32.load	$push343=, 112($14)
	tee_local	$push342=, $2=, $pop343
	i32.eqz 	$push355=, $pop342
	br_if   	0, $pop355
	block   	
	block   	
	i32.const	$push156=, 116
	i32.add 	$push347=, $14, $pop156
	tee_local	$push346=, $10=, $pop347
	i32.load	$push345=, 0($pop346)
	tee_local	$push344=, $9=, $pop345
	i32.eq  	$push157=, $pop344, $2
	br_if   	0, $pop157
.LBB11_41:
	loop    	
	i32.const	$push351=, -24
	i32.add 	$push350=, $9, $pop351
	tee_local	$push349=, $9=, $pop350
	i32.load	$7=, 0($pop349)
	i32.const	$push348=, 0
	i32.store	0($9), $pop348
	block   	
	i32.eqz 	$push356=, $7
	br_if   	0, $pop356
	call    	_ZdlPv@FUNCTION, $7
.LBB11_43:
	end_block
	i32.ne  	$push158=, $2, $9
	br_if   	0, $pop158
	end_loop
	i32.const	$push159=, 112
	i32.add 	$push160=, $14, $pop159
	i32.load	$9=, 0($pop160)
	br      	1
.LBB11_45:
	end_block
	copy_local	$9=, $2
.LBB11_46:
	end_block
	i32.store	0($10), $2
	call    	_ZdlPv@FUNCTION, $9
.LBB11_47:
	end_block
	i32.const	$push167=, 0
	i32.const	$push165=, 224
	i32.add 	$push166=, $14, $pop165
	i32.store	__stack_pointer($pop167), $pop166
	.endfunc
.Lfunc_end11:
	.size	_ZN5eosio5token5issueEyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE, .Lfunc_end11-_ZN5eosio5token5issueEyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE

	.hidden	_ZN5eosio5token11add_balanceEyNS_5assetEy
	.globl	_ZN5eosio5token11add_balanceEyNS_5assetEy
	.type	_ZN5eosio5token11add_balanceEyNS_5assetEy,@function
_ZN5eosio5token11add_balanceEyNS_5assetEy:
	.param  	i32, i64, i32, i64
	.local  	i64, i32, i64, i32, i32, i32
	i32.const	$push96=, 0
	i32.const	$push93=, 0
	i32.load	$push94=, __stack_pointer($pop93)
	i32.const	$push95=, 80
	i32.sub 	$push146=, $pop94, $pop95
	tee_local	$push145=, $9=, $pop146
	i32.store	__stack_pointer($pop96), $pop145
	i32.const	$8=, 0
	i32.const	$push100=, 8
	i32.add 	$push101=, $9, $pop100
	i32.const	$push144=, 32
	i32.add 	$push0=, $pop101, $pop144
	i32.const	$push143=, 0
	i32.store	0($pop0), $pop143
	i64.const	$push1=, -1
	i64.store	24($9), $pop1
	i64.const	$push142=, 0
	i64.store	32($9), $pop142
	i64.load	$push141=, 0($0)
	tee_local	$push140=, $6=, $pop141
	i64.store	8($9), $pop140
	i64.store	16($9), $1
	block   	
	block   	
	block   	
	block   	
	i64.const	$push3=, 3607749779137757184
	i64.load	$push139=, 8($2)
	tee_local	$push138=, $4=, $pop139
	i64.const	$push137=, 8
	i64.shr_u	$push2=, $pop138, $pop137
	i32.call	$push136=, db_find_i64@FUNCTION, $6, $1, $pop3, $pop2
	tee_local	$push135=, $0=, $pop136
	i32.const	$push134=, 0
	i32.lt_s	$push4=, $pop135, $pop134
	br_if   	0, $pop4
	i32.const	$push120=, 8
	i32.add 	$push121=, $9, $pop120
	i32.call	$push166=, _ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop121, $0
	tee_local	$push165=, $8=, $pop166
	i32.load	$push5=, 16($pop165)
	i32.const	$push122=, 8
	i32.add 	$push123=, $9, $pop122
	i32.eq  	$push6=, $pop5, $pop123
	i32.const	$push7=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop6, $pop7
	i32.const	$push9=, 1
	i32.const	$push8=, .L.str.58
	call    	eosio_assert@FUNCTION, $pop9, $pop8
	i32.load	$push10=, 16($8)
	i32.const	$push124=, 8
	i32.add 	$push125=, $9, $pop124
	i32.eq  	$push11=, $pop10, $pop125
	i32.const	$push12=, .L.str.59
	call    	eosio_assert@FUNCTION, $pop11, $pop12
	i64.load	$push13=, 8($9)
	i64.call	$push14=, current_receiver@FUNCTION
	i64.eq  	$push15=, $pop13, $pop14
	i32.const	$push16=, .L.str.60
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i64.load	$push164=, 8($8)
	tee_local	$push163=, $1=, $pop164
	i64.eq  	$push17=, $4, $pop163
	i32.const	$push18=, .L.str.62
	call    	eosio_assert@FUNCTION, $pop17, $pop18
	i64.load	$push20=, 0($8)
	i64.load	$push19=, 0($2)
	i64.add 	$push162=, $pop20, $pop19
	tee_local	$push161=, $6=, $pop162
	i64.store	0($8), $pop161
	i64.const	$push21=, -4611686018427387904
	i64.gt_s	$push22=, $6, $pop21
	i32.const	$push23=, .L.str.63
	call    	eosio_assert@FUNCTION, $pop22, $pop23
	i64.load	$push24=, 0($8)
	i64.const	$push25=, 4611686018427387904
	i64.lt_s	$push26=, $pop24, $pop25
	i32.const	$push27=, .L.str.64
	call    	eosio_assert@FUNCTION, $pop26, $pop27
	i64.const	$push160=, 8
	i64.shr_u	$push159=, $1, $pop160
	tee_local	$push158=, $1=, $pop159
	i64.load	$push28=, 8($8)
	i64.const	$push157=, 8
	i64.shr_u	$push29=, $pop28, $pop157
	i64.eq  	$push30=, $pop158, $pop29
	i32.const	$push31=, .L.str.61
	call    	eosio_assert@FUNCTION, $pop30, $pop31
	i32.const	$push156=, 1
	i32.const	$push32=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop156, $pop32
	i32.const	$push126=, 64
	i32.add 	$push127=, $9, $pop126
	i32.const	$push33=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop127, $8, $pop33
	i32.const	$push155=, 1
	i32.const	$push154=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop155, $pop154
	i32.const	$push128=, 64
	i32.add 	$push129=, $9, $pop128
	i32.const	$push153=, 8
	i32.or  	$push35=, $pop129, $pop153
	i32.const	$push152=, 8
	i32.add 	$push34=, $8, $pop152
	i32.const	$push151=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop35, $pop34, $pop151
	i32.load	$push36=, 20($8)
	i64.const	$push150=, 0
	i32.const	$push130=, 64
	i32.add 	$push131=, $9, $pop130
	i32.const	$push37=, 16
	call    	db_update_i64@FUNCTION, $pop36, $pop150, $pop131, $pop37
	i32.const	$push132=, 8
	i32.add 	$push133=, $9, $pop132
	i32.const	$push149=, 16
	i32.add 	$push148=, $pop133, $pop149
	tee_local	$push147=, $8=, $pop148
	i64.load	$push38=, 0($pop147)
	i64.lt_u	$push39=, $1, $pop38
	br_if   	1, $pop39
	i64.const	$push40=, 1
	i64.add 	$push41=, $1, $pop40
	i64.store	0($8), $pop41
	i32.load	$push168=, 32($9)
	tee_local	$push167=, $2=, $pop168
	br_if   	2, $pop167
	br      	3
.LBB12_3:
	end_block
	i64.load	$push42=, 8($9)
	i64.call	$push43=, current_receiver@FUNCTION
	i64.eq  	$push44=, $pop42, $pop43
	i32.const	$push45=, .L.str.49
	call    	eosio_assert@FUNCTION, $pop44, $pop45
	i32.const	$push173=, 32
	i32.call	$push172=, _Znwj@FUNCTION, $pop173
	tee_local	$push171=, $0=, $pop172
	i64.const	$push46=, 1398362884
	i64.store	8($pop171), $pop46
	i64.const	$push170=, 0
	i64.store	0($0), $pop170
	i32.const	$push169=, 1
	i32.const	$push47=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop169, $pop47
	i32.const	$push48=, 8
	i32.add 	$5=, $0, $pop48
	i64.const	$1=, 5462355
.LBB12_4:
	block   	
	loop    	
	i32.const	$7=, 0
	i32.wrap/i64	$push49=, $1
	i32.const	$push176=, 24
	i32.shl 	$push50=, $pop49, $pop176
	i32.const	$push175=, -1073741825
	i32.add 	$push51=, $pop50, $pop175
	i32.const	$push174=, 452984830
	i32.gt_u	$push52=, $pop51, $pop174
	br_if   	1, $pop52
	block   	
	i64.const	$push181=, 8
	i64.shr_u	$push180=, $1, $pop181
	tee_local	$push179=, $1=, $pop180
	i64.const	$push178=, 255
	i64.and 	$push53=, $pop179, $pop178
	i64.const	$push177=, 0
	i64.ne  	$push54=, $pop53, $pop177
	br_if   	0, $pop54
.LBB12_6:
	loop    	
	i64.const	$push186=, 8
	i64.shr_u	$push185=, $1, $pop186
	tee_local	$push184=, $1=, $pop185
	i64.const	$push183=, 255
	i64.and 	$push55=, $pop184, $pop183
	i64.const	$push182=, 0
	i64.ne  	$push56=, $pop55, $pop182
	br_if   	3, $pop56
	i32.const	$push190=, 1
	i32.add 	$push189=, $8, $pop190
	tee_local	$push188=, $8=, $pop189
	i32.const	$push187=, 7
	i32.lt_s	$push57=, $pop188, $pop187
	br_if   	0, $pop57
.LBB12_8:
	end_loop
	end_block
	i32.const	$7=, 1
	i32.const	$push194=, 1
	i32.add 	$push193=, $8, $pop194
	tee_local	$push192=, $8=, $pop193
	i32.const	$push191=, 7
	i32.lt_s	$push58=, $pop192, $pop191
	br_if   	0, $pop58
.LBB12_9:
	end_loop
	end_block
	i32.const	$push59=, .L.str
	call    	eosio_assert@FUNCTION, $7, $pop59
	i32.const	$push102=, 8
	i32.add 	$push103=, $9, $pop102
	i32.store	16($0), $pop103
	i32.const	$push60=, 8
	i32.add 	$push211=, $0, $pop60
	tee_local	$push210=, $8=, $pop211
	i32.const	$push209=, 8
	i32.add 	$push61=, $2, $pop209
	i64.load	$push62=, 0($pop61)
	i64.store	0($pop210), $pop62
	i64.load	$push63=, 0($2)
	i64.store	0($0), $pop63
	i32.const	$push65=, 1
	i32.const	$push64=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop65, $pop64
	i32.const	$push104=, 64
	i32.add 	$push105=, $9, $pop104
	i32.const	$push208=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop105, $0, $pop208
	i32.const	$push207=, 1
	i32.const	$push206=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop207, $pop206
	i32.const	$push106=, 64
	i32.add 	$push107=, $9, $pop106
	i32.const	$push205=, 8
	i32.or  	$push66=, $pop107, $pop205
	i32.const	$push204=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop66, $5, $pop204
	i32.const	$push108=, 8
	i32.add 	$push109=, $9, $pop108
	i32.const	$push203=, 8
	i32.add 	$push68=, $pop109, $pop203
	i64.load	$push69=, 0($pop68)
	i64.const	$push71=, 3607749779137757184
	i64.load	$push67=, 0($8)
	i64.const	$push202=, 8
	i64.shr_u	$push201=, $pop67, $pop202
	tee_local	$push200=, $1=, $pop201
	i32.const	$push110=, 64
	i32.add 	$push111=, $9, $pop110
	i32.const	$push70=, 16
	i32.call	$push199=, db_store_i64@FUNCTION, $pop69, $pop71, $3, $pop200, $pop111, $pop70
	tee_local	$push198=, $2=, $pop199
	i32.store	20($0), $pop198
	block   	
	i32.const	$push112=, 8
	i32.add 	$push113=, $9, $pop112
	i32.const	$push197=, 16
	i32.add 	$push196=, $pop113, $pop197
	tee_local	$push195=, $7=, $pop196
	i64.load	$push72=, 0($pop195)
	i64.lt_u	$push73=, $1, $pop72
	br_if   	0, $pop73
	i64.const	$push74=, 1
	i64.add 	$push75=, $1, $pop74
	i64.store	0($7), $pop75
.LBB12_11:
	end_block
	i32.store	56($9), $0
	i64.load	$push76=, 0($8)
	i64.const	$push218=, 8
	i64.shr_u	$push217=, $pop76, $pop218
	tee_local	$push216=, $1=, $pop217
	i64.store	64($9), $pop216
	i32.store	52($9), $2
	block   	
	block   	
	i32.const	$push80=, 36
	i32.add 	$push215=, $9, $pop80
	tee_local	$push214=, $7=, $pop215
	i32.load	$push213=, 0($pop214)
	tee_local	$push212=, $8=, $pop213
	i32.const	$push77=, 40
	i32.add 	$push78=, $9, $pop77
	i32.load	$push79=, 0($pop78)
	i32.ge_u	$push81=, $pop212, $pop79
	br_if   	0, $pop81
	i64.store	8($8), $1
	i32.store	16($8), $2
	i32.const	$push84=, 0
	i32.store	56($9), $pop84
	i32.store	0($8), $0
	i32.const	$push85=, 24
	i32.add 	$push86=, $8, $pop85
	i32.store	0($7), $pop86
	br      	1
.LBB12_13:
	end_block
	i32.const	$push82=, 32
	i32.add 	$push83=, $9, $pop82
	i32.const	$push114=, 56
	i32.add 	$push115=, $9, $pop114
	i32.const	$push116=, 64
	i32.add 	$push117=, $9, $pop116
	i32.const	$push118=, 52
	i32.add 	$push119=, $9, $pop118
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop83, $pop115, $pop117, $pop119
.LBB12_14:
	end_block
	i32.load	$8=, 56($9)
	i32.const	$push87=, 0
	i32.store	56($9), $pop87
	i32.eqz 	$push229=, $8
	br_if   	0, $pop229
	call    	_ZdlPv@FUNCTION, $8
.LBB12_16:
	end_block
	i32.load	$push220=, 32($9)
	tee_local	$push219=, $2=, $pop220
	i32.eqz 	$push230=, $pop219
	br_if   	1, $pop230
.LBB12_17:
	end_block
	block   	
	block   	
	i32.const	$push88=, 36
	i32.add 	$push224=, $9, $pop88
	tee_local	$push223=, $7=, $pop224
	i32.load	$push222=, 0($pop223)
	tee_local	$push221=, $8=, $pop222
	i32.eq  	$push89=, $pop221, $2
	br_if   	0, $pop89
.LBB12_19:
	loop    	
	i32.const	$push228=, -24
	i32.add 	$push227=, $8, $pop228
	tee_local	$push226=, $8=, $pop227
	i32.load	$0=, 0($pop226)
	i32.const	$push225=, 0
	i32.store	0($8), $pop225
	block   	
	i32.eqz 	$push231=, $0
	br_if   	0, $pop231
	call    	_ZdlPv@FUNCTION, $0
.LBB12_21:
	end_block
	i32.ne  	$push90=, $2, $8
	br_if   	0, $pop90
	end_loop
	i32.const	$push91=, 32
	i32.add 	$push92=, $9, $pop91
	i32.load	$8=, 0($pop92)
	br      	1
.LBB12_23:
	end_block
	copy_local	$8=, $2
.LBB12_24:
	end_block
	i32.store	0($7), $2
	call    	_ZdlPv@FUNCTION, $8
.LBB12_25:
	end_block
	i32.const	$push99=, 0
	i32.const	$push97=, 80
	i32.add 	$push98=, $9, $pop97
	i32.store	__stack_pointer($pop99), $pop98
	.endfunc
.Lfunc_end12:
	.size	_ZN5eosio5token11add_balanceEyNS_5assetEy, .Lfunc_end12-_ZN5eosio5token11add_balanceEyNS_5assetEy

	.section	.text._ZN5eosio15dispatch_inlineIJyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE,"axG",@progbits,_ZN5eosio15dispatch_inlineIJyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE,comdat
	.hidden	_ZN5eosio15dispatch_inlineIJyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE
	.weak	_ZN5eosio15dispatch_inlineIJyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE
	.type	_ZN5eosio15dispatch_inlineIJyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE,@function
_ZN5eosio15dispatch_inlineIJyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE:
	.param  	i64, i64, i32, i32
	.local  	i32, i32, i32, i32, i32, i32
	i32.const	$push42=, 0
	i32.const	$push39=, 0
	i32.load	$push40=, __stack_pointer($pop39)
	i32.const	$push41=, 96
	i32.sub 	$push69=, $pop40, $pop41
	tee_local	$push68=, $9=, $pop69
	i32.store	__stack_pointer($pop42), $pop68
	i32.const	$push67=, 0
	i32.store	16($9), $pop67
	i64.const	$push66=, 0
	i64.store	8($9), $pop66
	i32.const	$6=, 0
	i32.const	$7=, 0
	i32.const	$8=, 0
	block   	
	block   	
	i32.load	$push1=, 4($2)
	i32.load	$push0=, 0($2)
	i32.sub 	$push65=, $pop1, $pop0
	tee_local	$push64=, $4=, $pop65
	i32.const	$push2=, 4
	i32.shr_s	$push63=, $pop64, $pop2
	tee_local	$push62=, $5=, $pop63
	i32.eqz 	$push109=, $pop62
	br_if   	0, $pop109
	i32.const	$push3=, 268435456
	i32.ge_u	$push4=, $5, $pop3
	br_if   	1, $pop4
	i32.const	$push7=, 16
	i32.add 	$push8=, $9, $pop7
	i32.call	$push78=, _Znwj@FUNCTION, $4
	tee_local	$push77=, $8=, $pop78
	i32.const	$push5=, 4
	i32.shl 	$push6=, $5, $pop5
	i32.add 	$push76=, $pop77, $pop6
	tee_local	$push75=, $6=, $pop76
	i32.store	0($pop8), $pop75
	i32.store	8($9), $8
	i32.store	12($9), $8
	block   	
	i32.const	$push74=, 4
	i32.add 	$push9=, $2, $pop74
	i32.load	$push10=, 0($pop9)
	i32.load	$push73=, 0($2)
	tee_local	$push72=, $7=, $pop73
	i32.sub 	$push71=, $pop10, $pop72
	tee_local	$push70=, $2=, $pop71
	i32.const	$push11=, 1
	i32.lt_s	$push12=, $pop70, $pop11
	br_if   	0, $pop12
	i32.call	$drop=, memcpy@FUNCTION, $8, $7, $2
	i32.add 	$push80=, $8, $2
	tee_local	$push79=, $7=, $pop80
	i32.store	12($9), $pop79
	br      	1
.LBB13_4:
	end_block
	copy_local	$7=, $8
.LBB13_5:
	end_block
	i32.const	$push13=, 44
	i32.add 	$push14=, $9, $pop13
	i32.store	0($pop14), $7
	i64.store	32($9), $1
	i32.const	$push15=, 16
	i32.add 	$push16=, $9, $pop15
	i32.const	$push93=, 0
	i32.store	0($pop16), $pop93
	i32.const	$push17=, 48
	i32.add 	$push18=, $9, $pop17
	i32.store	0($pop18), $6
	i64.store	24($9), $0
	i32.store	40($9), $8
	i64.const	$push92=, 0
	i64.store	8($9), $pop92
	i32.const	$push91=, 0
	i32.store	52($9), $pop91
	i32.const	$push46=, 24
	i32.add 	$push47=, $9, $pop46
	i32.const	$push19=, 32
	i32.add 	$push20=, $pop47, $pop19
	i32.const	$push90=, 0
	i32.store	0($pop20), $pop90
	i32.const	$push48=, 24
	i32.add 	$push49=, $9, $pop48
	i32.const	$push21=, 36
	i32.add 	$push22=, $pop49, $pop21
	i32.const	$push89=, 0
	i32.store	0($pop22), $pop89
	i32.const	$push88=, 36
	i32.add 	$push25=, $3, $pop88
	i32.load	$push26=, 0($pop25)
	i32.load8_u	$push87=, 32($3)
	tee_local	$push86=, $8=, $pop87
	i32.const	$push85=, 1
	i32.shr_u	$push24=, $pop86, $pop85
	i32.const	$push84=, 1
	i32.and 	$push23=, $8, $pop84
	i32.select	$push83=, $pop26, $pop24, $pop23
	tee_local	$push82=, $2=, $pop83
	i32.const	$push81=, 32
	i32.add 	$8=, $pop82, $pop81
	i64.extend_u/i32	$0=, $2
	i32.const	$push27=, 52
	i32.add 	$2=, $9, $pop27
.LBB13_6:
	loop    	
	i32.const	$push98=, 1
	i32.add 	$8=, $8, $pop98
	i64.const	$push97=, 7
	i64.shr_u	$push96=, $0, $pop97
	tee_local	$push95=, $0=, $pop96
	i64.const	$push94=, 0
	i64.ne  	$push28=, $pop95, $pop94
	br_if   	0, $pop28
	end_loop
	block   	
	block   	
	i32.eqz 	$push110=, $8
	br_if   	0, $pop110
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $2, $8
	i32.const	$push29=, 56
	i32.add 	$push30=, $9, $pop29
	i32.load	$2=, 0($pop30)
	i32.const	$push31=, 52
	i32.add 	$push32=, $9, $pop31
	i32.load	$8=, 0($pop32)
	br      	1
.LBB13_9:
	end_block
	i32.const	$2=, 0
	i32.const	$8=, 0
.LBB13_10:
	end_block
	i32.store	84($9), $8
	i32.store	80($9), $8
	i32.store	88($9), $2
	i32.const	$push50=, 80
	i32.add 	$push51=, $9, $pop50
	i32.store	64($9), $pop51
	i32.store	72($9), $3
	i32.const	$push52=, 72
	i32.add 	$push53=, $9, $pop52
	i32.const	$push54=, 64
	i32.add 	$push55=, $9, $pop54
	call    	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_@FUNCTION, $pop53, $pop55
	i32.const	$push56=, 80
	i32.add 	$push57=, $9, $pop56
	i32.const	$push58=, 24
	i32.add 	$push59=, $9, $pop58
	call    	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop57, $pop59
	i32.load	$push102=, 80($9)
	tee_local	$push101=, $8=, $pop102
	i32.load	$push33=, 84($9)
	i32.sub 	$push34=, $pop33, $8
	call    	send_inline@FUNCTION, $pop101, $pop34
	block   	
	i32.load	$push100=, 80($9)
	tee_local	$push99=, $8=, $pop100
	i32.eqz 	$push111=, $pop99
	br_if   	0, $pop111
	i32.store	84($9), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB13_12:
	end_block
	block   	
	i32.load	$push104=, 52($9)
	tee_local	$push103=, $8=, $pop104
	i32.eqz 	$push112=, $pop103
	br_if   	0, $pop112
	i32.const	$push35=, 56
	i32.add 	$push36=, $9, $pop35
	i32.store	0($pop36), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB13_14:
	end_block
	block   	
	i32.load	$push106=, 40($9)
	tee_local	$push105=, $8=, $pop106
	i32.eqz 	$push113=, $pop105
	br_if   	0, $pop113
	i32.const	$push37=, 44
	i32.add 	$push38=, $9, $pop37
	i32.store	0($pop38), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB13_16:
	end_block
	block   	
	i32.load	$push108=, 8($9)
	tee_local	$push107=, $8=, $pop108
	i32.eqz 	$push114=, $pop107
	br_if   	0, $pop114
	i32.store	12($9), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB13_18:
	end_block
	i32.const	$push45=, 0
	i32.const	$push43=, 96
	i32.add 	$push44=, $9, $pop43
	i32.store	__stack_pointer($pop45), $pop44
	return
.LBB13_19:
	end_block
	i32.const	$push60=, 8
	i32.add 	$push61=, $9, $pop60
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop61
	unreachable
	.endfunc
.Lfunc_end13:
	.size	_ZN5eosio15dispatch_inlineIJyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE, .Lfunc_end13-_ZN5eosio15dispatch_inlineIJyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE

	.section	.text._ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,"axG",@progbits,_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,comdat
	.hidden	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
	.weak	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj
	.type	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj,@function
_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push19=, 8($0)
	tee_local	$push18=, $2=, $pop19
	i32.load	$push17=, 4($0)
	tee_local	$push16=, $6=, $pop17
	i32.sub 	$push0=, $pop18, $pop16
	i32.ge_u	$push1=, $pop0, $1
	br_if   	0, $pop1
	i32.load	$push25=, 0($0)
	tee_local	$push24=, $5=, $pop25
	i32.sub 	$push23=, $6, $pop24
	tee_local	$push22=, $3=, $pop23
	i32.add 	$push21=, $pop22, $1
	tee_local	$push20=, $4=, $pop21
	i32.const	$push4=, -1
	i32.le_s	$push5=, $pop20, $pop4
	br_if   	2, $pop5
	i32.const	$6=, 2147483647
	block   	
	i32.sub 	$push27=, $2, $5
	tee_local	$push26=, $2=, $pop27
	i32.const	$push6=, 1073741822
	i32.gt_u	$push7=, $pop26, $pop6
	br_if   	0, $pop7
	i32.const	$push8=, 1
	i32.shl 	$push31=, $2, $pop8
	tee_local	$push30=, $6=, $pop31
	i32.lt_u	$push9=, $6, $4
	i32.select	$push29=, $4, $pop30, $pop9
	tee_local	$push28=, $6=, $pop29
	i32.eqz 	$push52=, $pop28
	br_if   	2, $pop52
.LBB14_4:
	end_block
	i32.call	$2=, _Znwj@FUNCTION, $6
	br      	3
.LBB14_5:
	end_block
	i32.const	$push2=, 4
	i32.add 	$0=, $0, $pop2
.LBB14_6:
	loop    	
	i32.const	$push51=, 0
	i32.store8	0($6), $pop51
	i32.load	$push3=, 0($0)
	i32.const	$push50=, 1
	i32.add 	$push49=, $pop3, $pop50
	tee_local	$push48=, $6=, $pop49
	i32.store	0($0), $pop48
	i32.const	$push47=, -1
	i32.add 	$push46=, $1, $pop47
	tee_local	$push45=, $1=, $pop46
	br_if   	0, $pop45
	br      	4
.LBB14_7:
	end_loop
	end_block
	i32.const	$6=, 0
	i32.const	$2=, 0
	br      	1
.LBB14_8:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB14_9:
	end_block
	i32.add 	$4=, $2, $6
	i32.add 	$push33=, $2, $3
	tee_local	$push32=, $5=, $pop33
	copy_local	$6=, $pop32
.LBB14_10:
	loop    	
	i32.const	$push38=, 0
	i32.store8	0($6), $pop38
	i32.const	$push37=, 1
	i32.add 	$6=, $6, $pop37
	i32.const	$push36=, -1
	i32.add 	$push35=, $1, $pop36
	tee_local	$push34=, $1=, $pop35
	br_if   	0, $pop34
	end_loop
	i32.const	$push10=, 4
	i32.add 	$push44=, $0, $pop10
	tee_local	$push43=, $3=, $pop44
	i32.load	$push11=, 0($pop43)
	i32.load	$push42=, 0($0)
	tee_local	$push41=, $1=, $pop42
	i32.sub 	$push40=, $pop11, $pop41
	tee_local	$push39=, $2=, $pop40
	i32.sub 	$5=, $5, $pop39
	block   	
	i32.const	$push12=, 1
	i32.lt_s	$push13=, $2, $pop12
	br_if   	0, $pop13
	i32.call	$drop=, memcpy@FUNCTION, $5, $1, $2
	i32.load	$1=, 0($0)
.LBB14_13:
	end_block
	i32.store	0($0), $5
	i32.store	0($3), $6
	i32.const	$push14=, 8
	i32.add 	$push15=, $0, $pop14
	i32.store	0($pop15), $4
	i32.eqz 	$push53=, $1
	br_if   	0, $pop53
	call    	_ZdlPv@FUNCTION, $1
	return
.LBB14_15:
	end_block
	.endfunc
.Lfunc_end14:
	.size	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj, .Lfunc_end14-_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj

	.section	.text._ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_,"axG",@progbits,_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_,comdat
	.hidden	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_
	.weak	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_
	.type	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_,@function
_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_:
	.param  	i32, i32
	.local  	i32, i32
	i32.load	$2=, 0($0)
	i32.load	$push58=, 0($1)
	tee_local	$push57=, $3=, $pop58
	i32.load	$push1=, 8($pop57)
	i32.load	$push0=, 4($3)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($3)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $2, $pop7
	i32.load	$push8=, 4($3)
	i32.const	$push56=, 8
	i32.add 	$push9=, $pop8, $pop56
	i32.store	4($3), $pop9
	i32.load	$0=, 0($0)
	i32.load	$push55=, 0($1)
	tee_local	$push54=, $3=, $pop55
	i32.load	$push11=, 8($pop54)
	i32.load	$push10=, 4($3)
	i32.sub 	$push12=, $pop11, $pop10
	i32.const	$push53=, 7
	i32.gt_s	$push13=, $pop12, $pop53
	i32.const	$push52=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop13, $pop52
	i32.load	$push15=, 4($3)
	i32.const	$push51=, 8
	i32.add 	$push14=, $0, $pop51
	i32.const	$push50=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop15, $pop14, $pop50
	i32.load	$push16=, 4($3)
	i32.const	$push49=, 8
	i32.add 	$push17=, $pop16, $pop49
	i32.store	4($3), $pop17
	i32.load	$push48=, 0($1)
	tee_local	$push47=, $3=, $pop48
	i32.load	$push19=, 8($pop47)
	i32.load	$push18=, 4($3)
	i32.sub 	$push20=, $pop19, $pop18
	i32.const	$push46=, 7
	i32.gt_s	$push21=, $pop20, $pop46
	i32.const	$push45=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop21, $pop45
	i32.load	$push24=, 4($3)
	i32.const	$push22=, 16
	i32.add 	$push23=, $0, $pop22
	i32.const	$push44=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop24, $pop23, $pop44
	i32.load	$push25=, 4($3)
	i32.const	$push43=, 8
	i32.add 	$push42=, $pop25, $pop43
	tee_local	$push41=, $2=, $pop42
	i32.store	4($3), $pop41
	i32.load	$push26=, 8($3)
	i32.sub 	$push27=, $pop26, $2
	i32.const	$push40=, 7
	i32.gt_s	$push28=, $pop27, $pop40
	i32.const	$push39=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop28, $pop39
	i32.load	$push31=, 4($3)
	i32.const	$push29=, 24
	i32.add 	$push30=, $0, $pop29
	i32.const	$push38=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop31, $pop30, $pop38
	i32.load	$push32=, 4($3)
	i32.const	$push37=, 8
	i32.add 	$push33=, $pop32, $pop37
	i32.store	4($3), $pop33
	i32.load	$push36=, 0($1)
	i32.const	$push34=, 32
	i32.add 	$push35=, $0, $pop34
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop36, $pop35
	.endfunc
.Lfunc_end15:
	.size	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_, .Lfunc_end15-_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorIKNSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_lsINS8_10datastreamIPcEEJyyS9_SF_EEERT_SO_RKNS7_IJDpT0_EEEEUlRKSN_E_EEvSV_RKT0_

	.section	.text._ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_,"axG",@progbits,_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_,comdat
	.hidden	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
	.weak	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
	.type	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_,@function
_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i64, i32, i32
	i32.const	$push32=, 0
	i32.const	$push29=, 0
	i32.load	$push30=, __stack_pointer($pop29)
	i32.const	$push31=, 16
	i32.sub 	$push45=, $pop30, $pop31
	tee_local	$push44=, $8=, $pop45
	i32.store	__stack_pointer($pop32), $pop44
	i32.const	$push1=, 0
	i32.store	8($0), $pop1
	i64.const	$push43=, 0
	i64.store	0($0):p2align=2, $pop43
	i32.const	$5=, 16
	i32.const	$push42=, 16
	i32.add 	$2=, $1, $pop42
	i32.const	$push2=, 20
	i32.add 	$push3=, $1, $pop2
	i32.load	$push41=, 0($pop3)
	tee_local	$push40=, $7=, $pop41
	i32.load	$push39=, 16($1)
	tee_local	$push38=, $3=, $pop39
	i32.sub 	$push37=, $pop40, $pop38
	tee_local	$push36=, $4=, $pop37
	i32.const	$push4=, 4
	i32.shr_s	$push5=, $pop36, $pop4
	i64.extend_u/i32	$6=, $pop5
.LBB16_1:
	loop    	
	i32.const	$push50=, 1
	i32.add 	$5=, $5, $pop50
	i64.const	$push49=, 7
	i64.shr_u	$push48=, $6, $pop49
	tee_local	$push47=, $6=, $pop48
	i64.const	$push46=, 0
	i64.ne  	$push6=, $pop47, $pop46
	br_if   	0, $pop6
	end_loop
	block   	
	i32.eq  	$push7=, $3, $7
	br_if   	0, $pop7
	i32.const	$push8=, -16
	i32.and 	$push9=, $4, $pop8
	i32.add 	$5=, $pop9, $5
.LBB16_4:
	end_block
	i32.load	$push54=, 28($1)
	tee_local	$push53=, $7=, $pop54
	i32.sub 	$push10=, $pop53, $5
	i32.const	$push11=, 32
	i32.add 	$push12=, $1, $pop11
	i32.load	$push52=, 0($pop12)
	tee_local	$push51=, $3=, $pop52
	i32.sub 	$5=, $pop10, $pop51
	i32.const	$push13=, 28
	i32.add 	$4=, $1, $pop13
	i32.sub 	$push14=, $3, $7
	i64.extend_u/i32	$6=, $pop14
.LBB16_5:
	loop    	
	i32.const	$push59=, -1
	i32.add 	$5=, $5, $pop59
	i64.const	$push58=, 7
	i64.shr_u	$push57=, $6, $pop58
	tee_local	$push56=, $6=, $pop57
	i64.const	$push55=, 0
	i64.ne  	$push15=, $pop56, $pop55
	br_if   	0, $pop15
	end_loop
	i32.const	$7=, 0
	block   	
	block   	
	i32.eqz 	$push68=, $5
	br_if   	0, $pop68
	i32.const	$push60=, 0
	i32.sub 	$push0=, $pop60, $5
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $0, $pop0
	i32.const	$push16=, 4
	i32.add 	$push17=, $0, $pop16
	i32.load	$7=, 0($pop17)
	i32.load	$5=, 0($0)
	br      	1
.LBB16_8:
	end_block
	i32.const	$5=, 0
.LBB16_9:
	end_block
	i32.store	0($8), $5
	i32.store	8($8), $7
	i32.sub 	$push18=, $7, $5
	i32.const	$push19=, 7
	i32.gt_s	$push20=, $pop18, $pop19
	i32.const	$push21=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop20, $pop21
	i32.const	$push22=, 8
	i32.call	$drop=, memcpy@FUNCTION, $5, $1, $pop22
	i32.const	$push67=, 8
	i32.add 	$push66=, $5, $pop67
	tee_local	$push65=, $0=, $pop66
	i32.sub 	$push23=, $7, $pop65
	i32.const	$push64=, 7
	i32.gt_s	$push24=, $pop23, $pop64
	i32.const	$push63=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop24, $pop63
	i32.const	$push62=, 8
	i32.add 	$push25=, $1, $pop62
	i32.const	$push61=, 8
	i32.call	$drop=, memcpy@FUNCTION, $0, $pop25, $pop61
	i32.const	$push26=, 16
	i32.add 	$push27=, $5, $pop26
	i32.store	4($8), $pop27
	i32.call	$push28=, _ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE@FUNCTION, $8, $2
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE@FUNCTION, $pop28, $4
	i32.const	$push35=, 0
	i32.const	$push33=, 16
	i32.add 	$push34=, $8, $pop33
	i32.store	__stack_pointer($pop35), $pop34
	.endfunc
.Lfunc_end16:
	.size	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_, .Lfunc_end16-_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_

	.section	.text._ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,@function
_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i64, i32, i32, i32
	i32.const	$push30=, 0
	i32.const	$push27=, 0
	i32.load	$push28=, __stack_pointer($pop27)
	i32.const	$push29=, 16
	i32.sub 	$push38=, $pop28, $pop29
	tee_local	$push37=, $7=, $pop38
	i32.store	__stack_pointer($pop30), $pop37
	i32.load	$push1=, 4($1)
	i32.load	$push0=, 0($1)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push36=, 4
	i32.shr_s	$push3=, $pop2, $pop36
	i64.extend_u/i32	$4=, $pop3
	i32.load	$5=, 4($0)
	i32.const	$push7=, 8
	i32.add 	$2=, $0, $pop7
.LBB17_1:
	loop    	
	i32.wrap/i64	$3=, $4
	i64.const	$push55=, 7
	i64.shr_u	$push54=, $4, $pop55
	tee_local	$push53=, $4=, $pop54
	i64.const	$push52=, 0
	i64.ne  	$push51=, $pop53, $pop52
	tee_local	$push50=, $6=, $pop51
	i32.const	$push49=, 7
	i32.shl 	$push5=, $pop50, $pop49
	i32.const	$push48=, 127
	i32.and 	$push4=, $3, $pop48
	i32.or  	$push6=, $pop5, $pop4
	i32.store8	15($7), $pop6
	i32.load	$push8=, 0($2)
	i32.sub 	$push9=, $pop8, $5
	i32.const	$push47=, 0
	i32.gt_s	$push10=, $pop9, $pop47
	i32.const	$push46=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop10, $pop46
	i32.const	$push45=, 4
	i32.add 	$push44=, $0, $pop45
	tee_local	$push43=, $3=, $pop44
	i32.load	$push11=, 0($pop43)
	i32.const	$push34=, 15
	i32.add 	$push35=, $7, $pop34
	i32.const	$push42=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $pop35, $pop42
	i32.load	$push12=, 0($3)
	i32.const	$push41=, 1
	i32.add 	$push40=, $pop12, $pop41
	tee_local	$push39=, $5=, $pop40
	i32.store	0($3), $pop39
	br_if   	0, $6
	end_loop
	block   	
	i32.load	$push60=, 0($1)
	tee_local	$push59=, $6=, $pop60
	i32.const	$push58=, 4
	i32.add 	$push13=, $1, $pop58
	i32.load	$push57=, 0($pop13)
	tee_local	$push56=, $1=, $pop57
	i32.eq  	$push14=, $pop59, $pop56
	br_if   	0, $pop14
	i32.const	$push61=, 4
	i32.add 	$3=, $0, $pop61
.LBB17_4:
	loop    	
	i32.const	$push80=, 8
	i32.add 	$push79=, $0, $pop80
	tee_local	$push78=, $2=, $pop79
	i32.load	$push15=, 0($pop78)
	i32.sub 	$push16=, $pop15, $5
	i32.const	$push77=, 7
	i32.gt_s	$push17=, $pop16, $pop77
	i32.const	$push76=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop17, $pop76
	i32.load	$push18=, 0($3)
	i32.const	$push75=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop18, $6, $pop75
	i32.load	$push19=, 0($3)
	i32.const	$push74=, 8
	i32.add 	$push73=, $pop19, $pop74
	tee_local	$push72=, $5=, $pop73
	i32.store	0($3), $pop72
	i32.load	$push20=, 0($2)
	i32.sub 	$push21=, $pop20, $5
	i32.const	$push71=, 7
	i32.gt_s	$push22=, $pop21, $pop71
	i32.const	$push70=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop22, $pop70
	i32.load	$push24=, 0($3)
	i32.const	$push69=, 8
	i32.add 	$push23=, $6, $pop69
	i32.const	$push68=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop24, $pop23, $pop68
	i32.load	$push25=, 0($3)
	i32.const	$push67=, 8
	i32.add 	$push66=, $pop25, $pop67
	tee_local	$push65=, $5=, $pop66
	i32.store	0($3), $pop65
	i32.const	$push64=, 16
	i32.add 	$push63=, $6, $pop64
	tee_local	$push62=, $6=, $pop63
	i32.ne  	$push26=, $pop62, $1
	br_if   	0, $pop26
.LBB17_5:
	end_loop
	end_block
	i32.const	$push33=, 0
	i32.const	$push31=, 16
	i32.add 	$push32=, $7, $pop31
	i32.store	__stack_pointer($pop33), $pop32
	copy_local	$push81=, $0
	.endfunc
.Lfunc_end17:
	.size	_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE, .Lfunc_end17-_ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i64, i32
	i32.const	$push28=, 0
	i32.const	$push25=, 0
	i32.load	$push26=, __stack_pointer($pop25)
	i32.const	$push27=, 16
	i32.sub 	$push35=, $pop26, $pop27
	tee_local	$push34=, $8=, $pop35
	i32.store	__stack_pointer($pop28), $pop34
	i32.load	$push1=, 4($1)
	i32.load	$push0=, 0($1)
	i32.sub 	$push2=, $pop1, $pop0
	i64.extend_u/i32	$7=, $pop2
	i32.load	$6=, 4($0)
	i32.const	$push6=, 8
	i32.add 	$4=, $0, $pop6
	i32.const	$push10=, 4
	i32.add 	$5=, $0, $pop10
.LBB18_1:
	loop    	
	i32.wrap/i64	$2=, $7
	i64.const	$push49=, 7
	i64.shr_u	$push48=, $7, $pop49
	tee_local	$push47=, $7=, $pop48
	i64.const	$push46=, 0
	i64.ne  	$push45=, $pop47, $pop46
	tee_local	$push44=, $3=, $pop45
	i32.const	$push43=, 7
	i32.shl 	$push4=, $pop44, $pop43
	i32.const	$push42=, 127
	i32.and 	$push3=, $2, $pop42
	i32.or  	$push5=, $pop4, $pop3
	i32.store8	15($8), $pop5
	i32.load	$push7=, 0($4)
	i32.sub 	$push8=, $pop7, $6
	i32.const	$push41=, 0
	i32.gt_s	$push9=, $pop8, $pop41
	i32.const	$push40=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop9, $pop40
	i32.load	$push11=, 0($5)
	i32.const	$push32=, 15
	i32.add 	$push33=, $8, $pop32
	i32.const	$push39=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $pop33, $pop39
	i32.load	$push12=, 0($5)
	i32.const	$push38=, 1
	i32.add 	$push37=, $pop12, $pop38
	tee_local	$push36=, $6=, $pop37
	i32.store	0($5), $pop36
	br_if   	0, $3
	end_loop
	i32.const	$push16=, 8
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($pop17)
	i32.sub 	$push19=, $pop18, $6
	i32.const	$push13=, 4
	i32.add 	$push14=, $1, $pop13
	i32.load	$push15=, 0($pop14)
	i32.load	$push56=, 0($1)
	tee_local	$push55=, $2=, $pop56
	i32.sub 	$push54=, $pop15, $pop55
	tee_local	$push53=, $5=, $pop54
	i32.ge_s	$push20=, $pop19, $pop53
	i32.const	$push21=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop20, $pop21
	i32.const	$push52=, 4
	i32.add 	$push51=, $0, $pop52
	tee_local	$push50=, $6=, $pop51
	i32.load	$push22=, 0($pop50)
	i32.call	$drop=, memcpy@FUNCTION, $pop22, $2, $5
	i32.load	$push23=, 0($6)
	i32.add 	$push24=, $pop23, $5
	i32.store	0($6), $pop24
	i32.const	$push31=, 0
	i32.const	$push29=, 16
	i32.add 	$push30=, $8, $pop29
	i32.store	__stack_pointer($pop31), $pop30
	copy_local	$push57=, $0
	.endfunc
.Lfunc_end18:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE, .Lfunc_end18-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i64, i32
	i32.const	$push31=, 0
	i32.const	$push28=, 0
	i32.load	$push29=, __stack_pointer($pop28)
	i32.const	$push30=, 16
	i32.sub 	$push42=, $pop29, $pop30
	tee_local	$push41=, $8=, $pop42
	i32.store	__stack_pointer($pop31), $pop41
	i32.load	$push2=, 4($1)
	i32.load8_u	$push40=, 0($1)
	tee_local	$push39=, $5=, $pop40
	i32.const	$push38=, 1
	i32.shr_u	$push1=, $pop39, $pop38
	i32.const	$push37=, 1
	i32.and 	$push0=, $5, $pop37
	i32.select	$push3=, $pop2, $pop1, $pop0
	i64.extend_u/i32	$7=, $pop3
	i32.load	$6=, 4($0)
	i32.const	$push7=, 8
	i32.add 	$4=, $0, $pop7
	i32.const	$push11=, 4
	i32.add 	$5=, $0, $pop11
.LBB19_1:
	loop    	
	i32.wrap/i64	$2=, $7
	i64.const	$push56=, 7
	i64.shr_u	$push55=, $7, $pop56
	tee_local	$push54=, $7=, $pop55
	i64.const	$push53=, 0
	i64.ne  	$push52=, $pop54, $pop53
	tee_local	$push51=, $3=, $pop52
	i32.const	$push50=, 7
	i32.shl 	$push5=, $pop51, $pop50
	i32.const	$push49=, 127
	i32.and 	$push4=, $2, $pop49
	i32.or  	$push6=, $pop5, $pop4
	i32.store8	15($8), $pop6
	i32.load	$push8=, 0($4)
	i32.sub 	$push9=, $pop8, $6
	i32.const	$push48=, 0
	i32.gt_s	$push10=, $pop9, $pop48
	i32.const	$push47=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop10, $pop47
	i32.load	$push12=, 0($5)
	i32.const	$push35=, 15
	i32.add 	$push36=, $8, $pop35
	i32.const	$push46=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop36, $pop46
	i32.load	$push13=, 0($5)
	i32.const	$push45=, 1
	i32.add 	$push44=, $pop13, $pop45
	tee_local	$push43=, $6=, $pop44
	i32.store	0($5), $pop43
	br_if   	0, $3
	end_loop
	block   	
	i32.const	$push65=, 4
	i32.add 	$push15=, $1, $pop65
	i32.load	$push16=, 0($pop15)
	i32.load8_u	$push64=, 0($1)
	tee_local	$push63=, $5=, $pop64
	i32.const	$push62=, 1
	i32.shr_u	$push14=, $pop63, $pop62
	i32.const	$push61=, 1
	i32.and 	$push60=, $5, $pop61
	tee_local	$push59=, $2=, $pop60
	i32.select	$push58=, $pop16, $pop14, $pop59
	tee_local	$push57=, $5=, $pop58
	i32.eqz 	$push70=, $pop57
	br_if   	0, $pop70
	i32.load	$3=, 8($1)
	i32.const	$push17=, 8
	i32.add 	$push18=, $0, $pop17
	i32.load	$push19=, 0($pop18)
	i32.sub 	$push20=, $pop19, $6
	i32.ge_s	$push21=, $pop20, $5
	i32.const	$push22=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop21, $pop22
	i32.const	$push69=, 4
	i32.add 	$push68=, $0, $pop69
	tee_local	$push67=, $6=, $pop68
	i32.load	$push25=, 0($pop67)
	i32.const	$push66=, 1
	i32.add 	$push23=, $1, $pop66
	i32.select	$push24=, $3, $pop23, $2
	i32.call	$drop=, memcpy@FUNCTION, $pop25, $pop24, $5
	i32.load	$push26=, 0($6)
	i32.add 	$push27=, $pop26, $5
	i32.store	0($6), $pop27
.LBB19_4:
	end_block
	i32.const	$push34=, 0
	i32.const	$push32=, 16
	i32.add 	$push33=, $8, $pop32
	i32.store	__stack_pointer($pop34), $pop33
	copy_local	$push71=, $0
	.endfunc
.Lfunc_end19:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE, .Lfunc_end19-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE

	.section	.text._ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push44=, 0
	i32.const	$push41=, 0
	i32.load	$push42=, __stack_pointer($pop41)
	i32.const	$push43=, 48
	i32.sub 	$push68=, $pop42, $pop43
	tee_local	$push67=, $9=, $pop68
	i32.store	__stack_pointer($pop44), $pop67
	copy_local	$push66=, $9
	tee_local	$push65=, $8=, $pop66
	i32.store	44($pop65), $1
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push64=, 0($pop3)
	tee_local	$push63=, $7=, $pop64
	i32.load	$push62=, 24($0)
	tee_local	$push61=, $2=, $pop62
	i32.eq  	$push4=, $pop63, $pop61
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push69=, -24
	i32.add 	$6=, $7, $pop69
.LBB20_2:
	loop    	
	i32.const	$push70=, 16
	i32.add 	$push6=, $6, $pop70
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push74=, -24
	i32.add 	$push73=, $6, $pop74
	tee_local	$push72=, $4=, $pop73
	copy_local	$6=, $pop72
	i32.add 	$push9=, $4, $3
	i32.const	$push71=, -24
	i32.ne  	$push10=, $pop9, $pop71
	br_if   	0, $pop10
.LBB20_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
	i32.const	$push12=, -24
	i32.add 	$push13=, $7, $pop12
	i32.load	$6=, 0($pop13)
	br      	1
.LBB20_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push77=, 0
	i32.call	$push76=, db_get_i64@FUNCTION, $1, $pop14, $pop77
	tee_local	$push75=, $6=, $pop76
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop75, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.51
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB20_8:
	end_block
	i32.const	$push40=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push79=, $9, $pop25
	tee_local	$push78=, $4=, $pop79
	copy_local	$push60=, $pop78
	i32.store	__stack_pointer($pop40), $pop60
.LBB20_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push26=, $4, $6
	i32.store	40($8), $pop26
	block   	
	i32.const	$push27=, 513
	i32.lt_u	$push28=, $6, $pop27
	br_if   	0, $pop28
	call    	free@FUNCTION, $4
.LBB20_11:
	end_block
	i32.const	$push48=, 32
	i32.add 	$push49=, $8, $pop48
	i32.store	12($8), $pop49
	i32.const	$push50=, 44
	i32.add 	$push51=, $8, $pop50
	i32.store	16($8), $pop51
	i32.store	8($8), $0
	i32.const	$push29=, 32
	i32.call	$push90=, _Znwj@FUNCTION, $pop29
	tee_local	$push89=, $4=, $pop90
	i32.const	$push52=, 8
	i32.add 	$push53=, $8, $pop52
	i32.call	$6=, _ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_@FUNCTION, $pop89, $0, $pop53
	i32.store	24($8), $4
	i64.load	$push30=, 8($4)
	i64.const	$push31=, 8
	i64.shr_u	$push88=, $pop30, $pop31
	tee_local	$push87=, $5=, $pop88
	i64.store	8($8), $pop87
	i32.load	$push86=, 20($4)
	tee_local	$push85=, $1=, $pop86
	i32.store	4($8), $pop85
	block   	
	block   	
	i32.const	$push34=, 28
	i32.add 	$push84=, $0, $pop34
	tee_local	$push83=, $3=, $pop84
	i32.load	$push82=, 0($pop83)
	tee_local	$push81=, $7=, $pop82
	i32.const	$push80=, 32
	i32.add 	$push32=, $0, $pop80
	i32.load	$push33=, 0($pop32)
	i32.ge_u	$push35=, $pop81, $pop33
	br_if   	0, $pop35
	i64.store	8($7), $5
	i32.store	16($7), $1
	i32.const	$push36=, 0
	i32.store	24($8), $pop36
	i32.store	0($7), $4
	i32.const	$push37=, 24
	i32.add 	$push38=, $7, $pop37
	i32.store	0($3), $pop38
	br      	1
.LBB20_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push54=, 24
	i32.add 	$push55=, $8, $pop54
	i32.const	$push56=, 8
	i32.add 	$push57=, $8, $pop56
	i32.const	$push58=, 4
	i32.add 	$push59=, $8, $pop58
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop55, $pop57, $pop59
.LBB20_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push39=, 0
	i32.store	24($8), $pop39
	i32.eqz 	$push91=, $4
	br_if   	0, $pop91
	call    	_ZdlPv@FUNCTION, $4
.LBB20_16:
	end_block
	i32.const	$push47=, 0
	i32.const	$push45=, 48
	i32.add 	$push46=, $8, $pop45
	i32.store	__stack_pointer($pop47), $pop46
	copy_local	$push92=, $6
	.endfunc
.Lfunc_end20:
	.size	_ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl, .Lfunc_end20-_ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push46=, 0($0)
	tee_local	$push45=, $6=, $pop46
	i32.sub 	$push1=, $pop0, $pop45
	i32.const	$push44=, 24
	i32.div_s	$push43=, $pop1, $pop44
	tee_local	$push42=, $4=, $pop43
	i32.const	$push2=, 1
	i32.add 	$push41=, $pop42, $pop2
	tee_local	$push40=, $5=, $pop41
	i32.const	$push3=, 178956971
	i32.ge_u	$push4=, $pop40, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 178956970
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $6
	i32.const	$push49=, 24
	i32.div_s	$push48=, $pop6, $pop49
	tee_local	$push47=, $6=, $pop48
	i32.const	$push7=, 89478484
	i32.gt_u	$push8=, $pop47, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push53=, $6, $pop9
	tee_local	$push52=, $7=, $pop53
	i32.lt_u	$push10=, $7, $5
	i32.select	$push51=, $5, $pop52, $pop10
	tee_local	$push50=, $7=, $pop51
	i32.eqz 	$push79=, $pop50
	br_if   	1, $pop79
.LBB21_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB21_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB21_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB21_6:
	end_block
	i32.load	$5=, 0($1)
	i32.const	$push62=, 0
	i32.store	0($1), $pop62
	i32.const	$push13=, 24
	i32.mul 	$push14=, $4, $pop13
	i32.add 	$push61=, $6, $pop14
	tee_local	$push60=, $1=, $pop61
	i32.store	0($pop60), $5
	i64.load	$push15=, 0($2)
	i64.store	8($1), $pop15
	i32.load	$push16=, 0($3)
	i32.store	16($1), $pop16
	i32.const	$push59=, 24
	i32.mul 	$push17=, $7, $pop59
	i32.add 	$4=, $6, $pop17
	i32.const	$push58=, 24
	i32.add 	$5=, $1, $pop58
	block   	
	block   	
	i32.const	$push18=, 4
	i32.add 	$push19=, $0, $pop18
	i32.load	$push57=, 0($pop19)
	tee_local	$push56=, $6=, $pop57
	i32.load	$push55=, 0($0)
	tee_local	$push54=, $7=, $pop55
	i32.eq  	$push20=, $pop56, $pop54
	br_if   	0, $pop20
.LBB21_8:
	loop    	
	i32.const	$push74=, -24
	i32.add 	$push73=, $6, $pop74
	tee_local	$push72=, $2=, $pop73
	i32.load	$3=, 0($pop72)
	i32.const	$push71=, 0
	i32.store	0($2), $pop71
	i32.const	$push70=, -24
	i32.add 	$push21=, $1, $pop70
	i32.store	0($pop21), $3
	i32.const	$push69=, -8
	i32.add 	$push22=, $1, $pop69
	i32.const	$push68=, -8
	i32.add 	$push23=, $6, $pop68
	i32.load	$push24=, 0($pop23)
	i32.store	0($pop22), $pop24
	i32.const	$push67=, -12
	i32.add 	$push25=, $1, $pop67
	i32.const	$push66=, -12
	i32.add 	$push26=, $6, $pop66
	i32.load	$push27=, 0($pop26)
	i32.store	0($pop25), $pop27
	i32.const	$push65=, -16
	i32.add 	$push28=, $1, $pop65
	i32.const	$push64=, -16
	i32.add 	$push29=, $6, $pop64
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push63=, -24
	i32.add 	$1=, $1, $pop63
	copy_local	$6=, $2
	i32.ne  	$push31=, $7, $2
	br_if   	0, $pop31
	end_loop
	i32.const	$push32=, 4
	i32.add 	$push33=, $0, $pop32
	i32.load	$7=, 0($pop33)
	i32.load	$6=, 0($0)
	br      	1
.LBB21_10:
	end_block
	copy_local	$6=, $7
.LBB21_11:
	end_block
	i32.store	0($0), $1
	i32.const	$push34=, 4
	i32.add 	$push35=, $0, $pop34
	i32.store	0($pop35), $5
	i32.const	$push36=, 8
	i32.add 	$push37=, $0, $pop36
	i32.store	0($pop37), $4
	block   	
	i32.eq  	$push38=, $7, $6
	br_if   	0, $pop38
.LBB21_13:
	loop    	
	i32.const	$push78=, -24
	i32.add 	$push77=, $7, $pop78
	tee_local	$push76=, $7=, $pop77
	i32.load	$1=, 0($pop76)
	i32.const	$push75=, 0
	i32.store	0($7), $pop75
	block   	
	i32.eqz 	$push80=, $1
	br_if   	0, $pop80
	call    	_ZdlPv@FUNCTION, $1
.LBB21_15:
	end_block
	i32.ne  	$push39=, $6, $7
	br_if   	0, $pop39
.LBB21_16:
	end_loop
	end_block
	block   	
	i32.eqz 	$push81=, $6
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $6
.LBB21_18:
	end_block
	.endfunc
.Lfunc_end21:
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end21-_ZNSt3__16vectorIN5eosio11multi_indexILy3607749779137757184ENS1_5token7accountEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.section	.text._ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_,"axG",@progbits,_ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_,comdat
	.hidden	_ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_
	.weak	_ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_
	.type	_ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_,@function
_ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i64, i32, i32
	i64.const	$push0=, 1398362884
	i64.store	8($0), $pop0
	i64.const	$push34=, 0
	i64.store	0($0), $pop34
	i32.const	$push33=, 1
	i32.const	$push1=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop33, $pop1
	i64.load	$push2=, 8($0)
	i64.const	$push32=, 8
	i64.shr_u	$3=, $pop2, $pop32
	i32.const	$4=, 0
.LBB22_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push3=, $3
	i32.const	$push37=, 24
	i32.shl 	$push4=, $pop3, $pop37
	i32.const	$push36=, -1073741825
	i32.add 	$push5=, $pop4, $pop36
	i32.const	$push35=, 452984830
	i32.gt_u	$push6=, $pop5, $pop35
	br_if   	1, $pop6
	block   	
	i64.const	$push42=, 8
	i64.shr_u	$push41=, $3, $pop42
	tee_local	$push40=, $3=, $pop41
	i64.const	$push39=, 255
	i64.and 	$push7=, $pop40, $pop39
	i64.const	$push38=, 0
	i64.ne  	$push8=, $pop7, $pop38
	br_if   	0, $pop8
.LBB22_3:
	loop    	
	i64.const	$push47=, 8
	i64.shr_u	$push46=, $3, $pop47
	tee_local	$push45=, $3=, $pop46
	i64.const	$push44=, 255
	i64.and 	$push9=, $pop45, $pop44
	i64.const	$push43=, 0
	i64.ne  	$push10=, $pop9, $pop43
	br_if   	3, $pop10
	i32.const	$push51=, 1
	i32.add 	$push50=, $4, $pop51
	tee_local	$push49=, $4=, $pop50
	i32.const	$push48=, 7
	i32.lt_s	$push11=, $pop49, $pop48
	br_if   	0, $pop11
.LBB22_5:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push55=, 1
	i32.add 	$push54=, $4, $pop55
	tee_local	$push53=, $4=, $pop54
	i32.const	$push52=, 7
	i32.lt_s	$push12=, $pop53, $pop52
	br_if   	0, $pop12
	br      	2
.LBB22_6:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB22_7:
	end_block
	i32.const	$push13=, .L.str
	call    	eosio_assert@FUNCTION, $5, $pop13
	i32.store	16($0), $1
	i32.load	$push65=, 4($2)
	tee_local	$push64=, $4=, $pop65
	i32.load	$push15=, 8($pop64)
	i32.load	$push14=, 4($4)
	i32.sub 	$push16=, $pop15, $pop14
	i32.const	$push17=, 7
	i32.gt_u	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	i32.load	$push20=, 4($4)
	i32.const	$push21=, 8
	i32.call	$drop=, memcpy@FUNCTION, $0, $pop20, $pop21
	i32.load	$push22=, 4($4)
	i32.const	$push63=, 8
	i32.add 	$push62=, $pop22, $pop63
	tee_local	$push61=, $5=, $pop62
	i32.store	4($4), $pop61
	i32.load	$push23=, 8($4)
	i32.sub 	$push24=, $pop23, $5
	i32.const	$push60=, 7
	i32.gt_u	$push25=, $pop24, $pop60
	i32.const	$push59=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop25, $pop59
	i32.const	$push58=, 8
	i32.add 	$push26=, $0, $pop58
	i32.load	$push27=, 4($4)
	i32.const	$push57=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop27, $pop57
	i32.load	$push28=, 4($4)
	i32.const	$push56=, 8
	i32.add 	$push29=, $pop28, $pop56
	i32.store	4($4), $pop29
	i32.load	$push30=, 8($2)
	i32.load	$push31=, 0($pop30)
	i32.store	20($0), $pop31
	copy_local	$push66=, $0
	.endfunc
.Lfunc_end22:
	.size	_ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_, .Lfunc_end22-_ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_

	.text
	.hidden	_ZN5eosio5token8transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE
	.globl	_ZN5eosio5token8transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE
	.type	_ZN5eosio5token8transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE,@function
_ZN5eosio5token8transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE:
	.param  	i32, i64, i64, i32, i32
	.local  	i64, i32, i64, i32, i64, i32, i32
	i32.const	$push60=, 0
	i32.const	$push57=, 0
	i32.load	$push58=, __stack_pointer($pop57)
	i32.const	$push59=, 112
	i32.sub 	$push94=, $pop58, $pop59
	tee_local	$push93=, $11=, $pop94
	i32.store	__stack_pointer($pop60), $pop93
	i64.ne  	$push0=, $1, $2
	i32.const	$push1=, .L.str.11
	call    	eosio_assert@FUNCTION, $pop0, $pop1
	call    	require_auth@FUNCTION, $1
	i32.call	$push2=, is_account@FUNCTION, $2
	i32.const	$push3=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i64.load	$5=, 8($3)
	i32.const	$8=, 0
	i32.const	$push4=, 104
	i32.add 	$push5=, $11, $pop4
	i32.const	$push92=, 0
	i32.store	0($pop5), $pop92
	i64.const	$push91=, 8
	i64.shr_u	$push90=, $5, $pop91
	tee_local	$push89=, $9=, $pop90
	i64.store	80($11), $pop89
	i64.const	$push6=, -1
	i64.store	88($11), $pop6
	i64.const	$push88=, 0
	i64.store	96($11), $pop88
	i64.load	$push7=, 0($0)
	i64.store	72($11), $pop7
	i32.const	$push64=, 72
	i32.add 	$push65=, $11, $pop64
	i32.const	$push8=, .L.str.13
	i32.call	$6=, _ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc@FUNCTION, $pop65, $9, $pop8
	call    	require_recipient@FUNCTION, $1
	call    	require_recipient@FUNCTION, $2
	block   	
	i64.load	$push87=, 0($3)
	tee_local	$push86=, $7=, $pop87
	i64.const	$push9=, 4611686018427387903
	i64.add 	$push10=, $pop86, $pop9
	i64.const	$push11=, 9223372036854775806
	i64.gt_u	$push12=, $pop10, $pop11
	br_if   	0, $pop12
	i32.const	$10=, 0
.LBB23_2:
	block   	
	loop    	
	i32.wrap/i64	$push13=, $9
	i32.const	$push97=, 24
	i32.shl 	$push14=, $pop13, $pop97
	i32.const	$push96=, -1073741825
	i32.add 	$push15=, $pop14, $pop96
	i32.const	$push95=, 452984830
	i32.gt_u	$push16=, $pop15, $pop95
	br_if   	1, $pop16
	block   	
	i64.const	$push102=, 8
	i64.shr_u	$push101=, $9, $pop102
	tee_local	$push100=, $9=, $pop101
	i64.const	$push99=, 255
	i64.and 	$push17=, $pop100, $pop99
	i64.const	$push98=, 0
	i64.ne  	$push18=, $pop17, $pop98
	br_if   	0, $pop18
.LBB23_4:
	loop    	
	i64.const	$push107=, 8
	i64.shr_u	$push106=, $9, $pop107
	tee_local	$push105=, $9=, $pop106
	i64.const	$push104=, 255
	i64.and 	$push19=, $pop105, $pop104
	i64.const	$push103=, 0
	i64.ne  	$push20=, $pop19, $pop103
	br_if   	3, $pop20
	i32.const	$push111=, 1
	i32.add 	$push110=, $10, $pop111
	tee_local	$push109=, $10=, $pop110
	i32.const	$push108=, 7
	i32.lt_s	$push21=, $pop109, $pop108
	br_if   	0, $pop21
.LBB23_6:
	end_loop
	end_block
	i32.const	$8=, 1
	i32.const	$push115=, 1
	i32.add 	$push114=, $10, $pop115
	tee_local	$push113=, $10=, $pop114
	i32.const	$push112=, 7
	i32.lt_s	$push22=, $pop113, $pop112
	br_if   	0, $pop22
	br      	2
.LBB23_7:
	end_loop
	end_block
	i32.const	$8=, 0
.LBB23_8:
	end_block
	i32.const	$push23=, .L.str.6
	call    	eosio_assert@FUNCTION, $8, $pop23
	i64.const	$push119=, 0
	i64.gt_s	$push24=, $7, $pop119
	i32.const	$push25=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop24, $pop25
	i64.load	$push26=, 8($6)
	i64.eq  	$push27=, $5, $pop26
	i32.const	$push28=, .L.str.8
	call    	eosio_assert@FUNCTION, $pop27, $pop28
	block   	
	block   	
	i32.load8_u	$push118=, 0($4)
	tee_local	$push117=, $10=, $pop118
	i32.const	$push116=, 1
	i32.and 	$push29=, $pop117, $pop116
	br_if   	0, $pop29
	i32.const	$push120=, 1
	i32.shr_u	$10=, $10, $pop120
	br      	1
.LBB23_10:
	end_block
	i32.load	$10=, 4($4)
.LBB23_11:
	end_block
	i32.const	$push30=, 257
	i32.lt_u	$push31=, $10, $pop30
	i32.const	$push32=, .L.str.4
	call    	eosio_assert@FUNCTION, $pop31, $pop32
	i32.call	$10=, has_auth@FUNCTION, $2
	i32.const	$push66=, 56
	i32.add 	$push67=, $11, $pop66
	i32.const	$push33=, 8
	i32.add 	$push135=, $pop67, $pop33
	tee_local	$push134=, $8=, $pop135
	i32.const	$push133=, 8
	i32.add 	$push132=, $3, $pop133
	tee_local	$push131=, $4=, $pop132
	i64.load	$push34=, 0($pop131)
	i64.store	0($pop134), $pop34
	i64.load	$9=, 0($3)
	i32.const	$push68=, 24
	i32.add 	$push69=, $11, $pop68
	i32.const	$push35=, 12
	i32.add 	$push36=, $pop69, $pop35
	i32.const	$push70=, 56
	i32.add 	$push71=, $11, $pop70
	i32.const	$push130=, 12
	i32.add 	$push37=, $pop71, $pop130
	i32.load	$push38=, 0($pop37)
	i32.store	0($pop36), $pop38
	i32.const	$push72=, 24
	i32.add 	$push73=, $11, $pop72
	i32.const	$push129=, 8
	i32.add 	$push39=, $pop73, $pop129
	i32.load	$push40=, 0($8)
	i32.store	0($pop39), $pop40
	i64.store	56($11), $9
	i32.load	$push41=, 60($11)
	i32.store	28($11), $pop41
	i32.load	$push42=, 56($11)
	i32.store	24($11), $pop42
	i32.const	$push74=, 24
	i32.add 	$push75=, $11, $pop74
	call    	_ZN5eosio5token11sub_balanceEyNS_5assetE@FUNCTION, $0, $1, $pop75
	i32.const	$push76=, 40
	i32.add 	$push77=, $11, $pop76
	i32.const	$push128=, 8
	i32.add 	$push127=, $pop77, $pop128
	tee_local	$push126=, $8=, $pop127
	i64.load	$push43=, 0($4)
	i64.store	0($pop126), $pop43
	i64.load	$9=, 0($3)
	i32.const	$push78=, 8
	i32.add 	$push79=, $11, $pop78
	i32.const	$push125=, 12
	i32.add 	$push44=, $pop79, $pop125
	i32.const	$push80=, 40
	i32.add 	$push81=, $11, $pop80
	i32.const	$push124=, 12
	i32.add 	$push45=, $pop81, $pop124
	i32.load	$push46=, 0($pop45)
	i32.store	0($pop44), $pop46
	i32.const	$push82=, 8
	i32.add 	$push83=, $11, $pop82
	i32.const	$push123=, 8
	i32.add 	$push47=, $pop83, $pop123
	i32.load	$push48=, 0($8)
	i32.store	0($pop47), $pop48
	i64.store	40($11), $9
	i32.load	$push49=, 44($11)
	i32.store	12($11), $pop49
	i32.load	$push50=, 40($11)
	i32.store	8($11), $pop50
	i32.const	$push84=, 8
	i32.add 	$push85=, $11, $pop84
	i64.select	$push51=, $2, $1, $10
	call    	_ZN5eosio5token11add_balanceEyNS_5assetEy@FUNCTION, $0, $2, $pop85, $pop51
	block   	
	i32.load	$push122=, 96($11)
	tee_local	$push121=, $8=, $pop122
	i32.eqz 	$push144=, $pop121
	br_if   	0, $pop144
	block   	
	block   	
	i32.const	$push52=, 100
	i32.add 	$push139=, $11, $pop52
	tee_local	$push138=, $0=, $pop139
	i32.load	$push137=, 0($pop138)
	tee_local	$push136=, $10=, $pop137
	i32.eq  	$push53=, $pop136, $8
	br_if   	0, $pop53
.LBB23_14:
	loop    	
	i32.const	$push143=, -24
	i32.add 	$push142=, $10, $pop143
	tee_local	$push141=, $10=, $pop142
	i32.load	$3=, 0($pop141)
	i32.const	$push140=, 0
	i32.store	0($10), $pop140
	block   	
	i32.eqz 	$push145=, $3
	br_if   	0, $pop145
	call    	_ZdlPv@FUNCTION, $3
.LBB23_16:
	end_block
	i32.ne  	$push54=, $8, $10
	br_if   	0, $pop54
	end_loop
	i32.const	$push55=, 96
	i32.add 	$push56=, $11, $pop55
	i32.load	$10=, 0($pop56)
	br      	1
.LBB23_18:
	end_block
	copy_local	$10=, $8
.LBB23_19:
	end_block
	i32.store	0($0), $8
	call    	_ZdlPv@FUNCTION, $10
.LBB23_20:
	end_block
	i32.const	$push63=, 0
	i32.const	$push61=, 112
	i32.add 	$push62=, $11, $pop61
	i32.store	__stack_pointer($pop63), $pop62
	.endfunc
.Lfunc_end23:
	.size	_ZN5eosio5token8transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE, .Lfunc_end23-_ZN5eosio5token8transferEyyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE

	.section	.text._ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc,"axG",@progbits,_ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc,comdat
	.hidden	_ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc
	.weak	_ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc
	.type	_ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc,@function
_ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc:
	.param  	i32, i64, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	block   	
	i32.const	$push0=, 28
	i32.add 	$push1=, $0, $pop0
	i32.load	$push28=, 0($pop1)
	tee_local	$push27=, $7=, $pop28
	i32.load	$push26=, 24($0)
	tee_local	$push25=, $3=, $pop26
	i32.eq  	$push2=, $pop27, $pop25
	br_if   	0, $pop2
	i32.const	$push29=, -24
	i32.add 	$6=, $7, $pop29
	i32.const	$push3=, 0
	i32.sub 	$4=, $pop3, $3
.LBB24_2:
	loop    	
	i32.load	$push4=, 0($6)
	i64.load	$push5=, 8($pop4)
	i64.const	$push30=, 8
	i64.shr_u	$push6=, $pop5, $pop30
	i64.eq  	$push7=, $pop6, $1
	br_if   	1, $pop7
	copy_local	$7=, $6
	i32.const	$push34=, -24
	i32.add 	$push33=, $6, $pop34
	tee_local	$push32=, $5=, $pop33
	copy_local	$6=, $pop32
	i32.add 	$push8=, $5, $4
	i32.const	$push31=, -24
	i32.ne  	$push9=, $pop8, $pop31
	br_if   	0, $pop9
.LBB24_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push10=, $7, $3
	br_if   	0, $pop10
	i32.const	$push11=, -24
	i32.add 	$push12=, $7, $pop11
	i32.load	$push36=, 0($pop12)
	tee_local	$push35=, $6=, $pop36
	i32.load	$push13=, 40($pop35)
	i32.eq  	$push14=, $pop13, $0
	i32.const	$push15=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop14, $pop15
	br      	1
.LBB24_6:
	end_block
	i32.const	$6=, 0
	i64.load	$push17=, 0($0)
	i64.load	$push16=, 8($0)
	i64.const	$push18=, -4157508551318700032
	i32.call	$push39=, db_find_i64@FUNCTION, $pop17, $pop16, $pop18, $1
	tee_local	$push38=, $5=, $pop39
	i32.const	$push37=, 0
	i32.lt_s	$push19=, $pop38, $pop37
	br_if   	0, $pop19
	i32.call	$push41=, _ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE31load_object_by_primary_iteratorEl@FUNCTION, $0, $5
	tee_local	$push40=, $6=, $pop41
	i32.load	$push20=, 40($pop40)
	i32.eq  	$push21=, $pop20, $0
	i32.const	$push22=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop21, $pop22
.LBB24_8:
	end_block
	i32.const	$push23=, 0
	i32.ne  	$push24=, $6, $pop23
	call    	eosio_assert@FUNCTION, $pop24, $2
	copy_local	$push42=, $6
	.endfunc
.Lfunc_end24:
	.size	_ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc, .Lfunc_end24-_ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc

	.text
	.hidden	_ZN5eosio5token11sub_balanceEyNS_5assetE
	.globl	_ZN5eosio5token11sub_balanceEyNS_5assetE
	.type	_ZN5eosio5token11sub_balanceEyNS_5assetE,@function
_ZN5eosio5token11sub_balanceEyNS_5assetE:
	.param  	i32, i64, i32
	.local  	i64, i64, i32, i64, i32, i32
	i32.const	$push53=, 0
	i32.const	$push50=, 0
	i32.load	$push51=, __stack_pointer($pop50)
	i32.const	$push52=, 64
	i32.sub 	$push79=, $pop51, $pop52
	tee_local	$push78=, $8=, $pop79
	i32.store	__stack_pointer($pop53), $pop78
	i32.const	$push0=, 40
	i32.add 	$push1=, $8, $pop0
	i32.const	$push2=, 0
	i32.store	0($pop1), $pop2
	i64.store	16($8), $1
	i64.const	$push3=, -1
	i64.store	24($8), $pop3
	i64.const	$push4=, 0
	i64.store	32($8), $pop4
	i64.load	$push5=, 0($0)
	i64.store	8($8), $pop5
	i32.const	$push57=, 8
	i32.add 	$push58=, $8, $pop57
	i64.load	$push77=, 8($2)
	tee_local	$push76=, $3=, $pop77
	i64.const	$push75=, 8
	i64.shr_u	$push6=, $pop76, $pop75
	i32.const	$push7=, .L.str.15
	i32.call	$push74=, _ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc@FUNCTION, $pop58, $pop6, $pop7
	tee_local	$push73=, $0=, $pop74
	i64.load	$push8=, 0($pop73)
	i64.load	$push72=, 0($2)
	tee_local	$push71=, $4=, $pop72
	i64.ge_s	$push9=, $pop8, $pop71
	i32.const	$push10=, .L.str.16
	call    	eosio_assert@FUNCTION, $pop9, $pop10
	block   	
	block   	
	block   	
	i64.load	$push11=, 0($0)
	i64.ne  	$push12=, $4, $pop11
	br_if   	0, $pop12
	i32.const	$push59=, 8
	i32.add 	$push60=, $8, $pop59
	call    	_ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE5eraseERKS2_@FUNCTION, $pop60, $0
	i32.load	$push81=, 32($8)
	tee_local	$push80=, $5=, $pop81
	br_if   	1, $pop80
	br      	2
.LBB25_2:
	end_block
	i32.load	$push13=, 16($0)
	i32.const	$push61=, 8
	i32.add 	$push62=, $8, $pop61
	i32.eq  	$push14=, $pop13, $pop62
	i32.const	$push15=, .L.str.59
	call    	eosio_assert@FUNCTION, $pop14, $pop15
	i64.load	$push16=, 8($8)
	i64.call	$push17=, current_receiver@FUNCTION
	i64.eq  	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.60
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	i64.load	$push97=, 8($0)
	tee_local	$push96=, $6=, $pop97
	i64.eq  	$push20=, $3, $pop96
	i32.const	$push21=, .L.str.45
	call    	eosio_assert@FUNCTION, $pop20, $pop21
	i64.load	$push22=, 0($0)
	i64.sub 	$push95=, $pop22, $4
	tee_local	$push94=, $4=, $pop95
	i64.store	0($0), $pop94
	i64.const	$push23=, -4611686018427387904
	i64.gt_s	$push24=, $4, $pop23
	i32.const	$push25=, .L.str.46
	call    	eosio_assert@FUNCTION, $pop24, $pop25
	i64.load	$push26=, 0($0)
	i64.const	$push27=, 4611686018427387904
	i64.lt_s	$push28=, $pop26, $pop27
	i32.const	$push29=, .L.str.47
	call    	eosio_assert@FUNCTION, $pop28, $pop29
	i64.const	$push93=, 8
	i64.shr_u	$push92=, $6, $pop93
	tee_local	$push91=, $4=, $pop92
	i64.load	$push30=, 8($0)
	i64.const	$push90=, 8
	i64.shr_u	$push31=, $pop30, $pop90
	i64.eq  	$push32=, $pop91, $pop31
	i32.const	$push33=, .L.str.61
	call    	eosio_assert@FUNCTION, $pop32, $pop33
	i32.const	$push35=, 1
	i32.const	$push34=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop35, $pop34
	i32.const	$push63=, 48
	i32.add 	$push64=, $8, $pop63
	i32.const	$push36=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop64, $0, $pop36
	i32.const	$push89=, 1
	i32.const	$push88=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop89, $pop88
	i32.const	$push65=, 48
	i32.add 	$push66=, $8, $pop65
	i32.const	$push87=, 8
	i32.or  	$push38=, $pop66, $pop87
	i32.const	$push86=, 8
	i32.add 	$push37=, $0, $pop86
	i32.const	$push85=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop38, $pop37, $pop85
	i32.load	$push39=, 20($0)
	i32.const	$push67=, 48
	i32.add 	$push68=, $8, $pop67
	i32.const	$push40=, 16
	call    	db_update_i64@FUNCTION, $pop39, $1, $pop68, $pop40
	block   	
	i32.const	$push69=, 8
	i32.add 	$push70=, $8, $pop69
	i32.const	$push84=, 16
	i32.add 	$push83=, $pop70, $pop84
	tee_local	$push82=, $0=, $pop83
	i64.load	$push41=, 0($pop82)
	i64.lt_u	$push42=, $4, $pop41
	br_if   	0, $pop42
	i64.const	$push43=, 1
	i64.add 	$push44=, $4, $pop43
	i64.store	0($0), $pop44
.LBB25_4:
	end_block
	i32.load	$push99=, 32($8)
	tee_local	$push98=, $5=, $pop99
	i32.eqz 	$push108=, $pop98
	br_if   	1, $pop108
.LBB25_5:
	end_block
	block   	
	block   	
	i32.const	$push45=, 36
	i32.add 	$push103=, $8, $pop45
	tee_local	$push102=, $7=, $pop103
	i32.load	$push101=, 0($pop102)
	tee_local	$push100=, $0=, $pop101
	i32.eq  	$push46=, $pop100, $5
	br_if   	0, $pop46
.LBB25_7:
	loop    	
	i32.const	$push107=, -24
	i32.add 	$push106=, $0, $pop107
	tee_local	$push105=, $0=, $pop106
	i32.load	$2=, 0($pop105)
	i32.const	$push104=, 0
	i32.store	0($0), $pop104
	block   	
	i32.eqz 	$push109=, $2
	br_if   	0, $pop109
	call    	_ZdlPv@FUNCTION, $2
.LBB25_9:
	end_block
	i32.ne  	$push47=, $5, $0
	br_if   	0, $pop47
	end_loop
	i32.const	$push48=, 32
	i32.add 	$push49=, $8, $pop48
	i32.load	$0=, 0($pop49)
	br      	1
.LBB25_11:
	end_block
	copy_local	$0=, $5
.LBB25_12:
	end_block
	i32.store	0($7), $5
	call    	_ZdlPv@FUNCTION, $0
.LBB25_13:
	end_block
	i32.const	$push56=, 0
	i32.const	$push54=, 64
	i32.add 	$push55=, $8, $pop54
	i32.store	__stack_pointer($pop56), $pop55
	.endfunc
.Lfunc_end25:
	.size	_ZN5eosio5token11sub_balanceEyNS_5assetE, .Lfunc_end25-_ZN5eosio5token11sub_balanceEyNS_5assetE

	.section	.text._ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc,"axG",@progbits,_ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc,comdat
	.hidden	_ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc
	.weak	_ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc
	.type	_ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc,@function
_ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc:
	.param  	i32, i64, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	block   	
	i32.const	$push0=, 28
	i32.add 	$push1=, $0, $pop0
	i32.load	$push28=, 0($pop1)
	tee_local	$push27=, $7=, $pop28
	i32.load	$push26=, 24($0)
	tee_local	$push25=, $3=, $pop26
	i32.eq  	$push2=, $pop27, $pop25
	br_if   	0, $pop2
	i32.const	$push29=, -24
	i32.add 	$6=, $7, $pop29
	i32.const	$push3=, 0
	i32.sub 	$4=, $pop3, $3
.LBB26_2:
	loop    	
	i32.load	$push4=, 0($6)
	i64.load	$push5=, 8($pop4)
	i64.const	$push30=, 8
	i64.shr_u	$push6=, $pop5, $pop30
	i64.eq  	$push7=, $pop6, $1
	br_if   	1, $pop7
	copy_local	$7=, $6
	i32.const	$push34=, -24
	i32.add 	$push33=, $6, $pop34
	tee_local	$push32=, $5=, $pop33
	copy_local	$6=, $pop32
	i32.add 	$push8=, $5, $4
	i32.const	$push31=, -24
	i32.ne  	$push9=, $pop8, $pop31
	br_if   	0, $pop9
.LBB26_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push10=, $7, $3
	br_if   	0, $pop10
	i32.const	$push11=, -24
	i32.add 	$push12=, $7, $pop11
	i32.load	$push36=, 0($pop12)
	tee_local	$push35=, $6=, $pop36
	i32.load	$push13=, 16($pop35)
	i32.eq  	$push14=, $pop13, $0
	i32.const	$push15=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop14, $pop15
	br      	1
.LBB26_6:
	end_block
	i32.const	$6=, 0
	i64.load	$push17=, 0($0)
	i64.load	$push16=, 8($0)
	i64.const	$push18=, 3607749779137757184
	i32.call	$push39=, db_find_i64@FUNCTION, $pop17, $pop16, $pop18, $1
	tee_local	$push38=, $5=, $pop39
	i32.const	$push37=, 0
	i32.lt_s	$push19=, $pop38, $pop37
	br_if   	0, $pop19
	i32.call	$push41=, _ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl@FUNCTION, $0, $5
	tee_local	$push40=, $6=, $pop41
	i32.load	$push20=, 16($pop40)
	i32.eq  	$push21=, $pop20, $0
	i32.const	$push22=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop21, $pop22
.LBB26_8:
	end_block
	i32.const	$push23=, 0
	i32.ne  	$push24=, $6, $pop23
	call    	eosio_assert@FUNCTION, $pop24, $2
	copy_local	$push42=, $6
	.endfunc
.Lfunc_end26:
	.size	_ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc, .Lfunc_end26-_ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc

	.section	.text._ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE5eraseERKS2_,"axG",@progbits,_ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE5eraseERKS2_,comdat
	.hidden	_ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE5eraseERKS2_
	.weak	_ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE5eraseERKS2_
	.type	_ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE5eraseERKS2_,@function
_ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE5eraseERKS2_:
	.param  	i32, i32
	.local  	i64, i32, i32, i32, i32, i32, i32
	i32.load	$push0=, 16($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.67
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.68
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	block   	
	i32.const	$push7=, 28
	i32.add 	$push39=, $0, $pop7
	tee_local	$push38=, $5=, $pop39
	i32.load	$push37=, 0($pop38)
	tee_local	$push36=, $7=, $pop37
	i32.load	$push35=, 24($0)
	tee_local	$push34=, $3=, $pop35
	i32.eq  	$push8=, $pop36, $pop34
	br_if   	0, $pop8
	i64.load	$2=, 8($1)
	i32.const	$push9=, 0
	i32.sub 	$6=, $pop9, $3
	i32.const	$push40=, -24
	i32.add 	$8=, $7, $pop40
.LBB27_2:
	loop    	
	i32.load	$push10=, 0($8)
	i64.load	$push11=, 8($pop10)
	i64.xor 	$push12=, $pop11, $2
	i64.const	$push41=, 256
	i64.lt_u	$push13=, $pop12, $pop41
	br_if   	1, $pop13
	copy_local	$7=, $8
	i32.const	$push45=, -24
	i32.add 	$push44=, $8, $pop45
	tee_local	$push43=, $4=, $pop44
	copy_local	$8=, $pop43
	i32.add 	$push14=, $4, $6
	i32.const	$push42=, -24
	i32.ne  	$push15=, $pop14, $pop42
	br_if   	0, $pop15
.LBB27_4:
	end_loop
	end_block
	i32.ne  	$push16=, $7, $3
	i32.const	$push17=, .L.str.69
	call    	eosio_assert@FUNCTION, $pop16, $pop17
	i32.const	$push48=, -24
	i32.add 	$8=, $7, $pop48
	block   	
	block   	
	i32.load	$push47=, 0($5)
	tee_local	$push46=, $4=, $pop47
	i32.eq  	$push18=, $7, $pop46
	br_if   	0, $pop18
	i32.const	$push49=, 0
	i32.sub 	$3=, $pop49, $4
	copy_local	$7=, $8
.LBB27_6:
	loop    	
	i32.const	$push53=, 24
	i32.add 	$push52=, $7, $pop53
	tee_local	$push51=, $8=, $pop52
	i32.load	$6=, 0($pop51)
	i32.const	$push50=, 0
	i32.store	0($8), $pop50
	i32.load	$4=, 0($7)
	i32.store	0($7), $6
	block   	
	i32.eqz 	$push65=, $4
	br_if   	0, $pop65
	call    	_ZdlPv@FUNCTION, $4
.LBB27_8:
	end_block
	i32.const	$push58=, 16
	i32.add 	$push19=, $7, $pop58
	i32.const	$push57=, 40
	i32.add 	$push20=, $7, $pop57
	i32.load	$push21=, 0($pop20)
	i32.store	0($pop19), $pop21
	i32.const	$push56=, 8
	i32.add 	$push22=, $7, $pop56
	i32.const	$push55=, 32
	i32.add 	$push23=, $7, $pop55
	i64.load	$push24=, 0($pop23)
	i64.store	0($pop22), $pop24
	copy_local	$7=, $8
	i32.add 	$push25=, $8, $3
	i32.const	$push54=, -24
	i32.ne  	$push26=, $pop25, $pop54
	br_if   	0, $pop26
	end_loop
	i32.const	$push27=, 28
	i32.add 	$push28=, $0, $pop27
	i32.load	$push60=, 0($pop28)
	tee_local	$push59=, $7=, $pop60
	i32.eq  	$push29=, $pop59, $8
	br_if   	1, $pop29
.LBB27_10:
	end_block
.LBB27_11:
	loop    	
	i32.const	$push64=, -24
	i32.add 	$push63=, $7, $pop64
	tee_local	$push62=, $7=, $pop63
	i32.load	$4=, 0($pop62)
	i32.const	$push61=, 0
	i32.store	0($7), $pop61
	block   	
	i32.eqz 	$push66=, $4
	br_if   	0, $pop66
	call    	_ZdlPv@FUNCTION, $4
.LBB27_13:
	end_block
	i32.ne  	$push30=, $8, $7
	br_if   	0, $pop30
.LBB27_14:
	end_loop
	end_block
	i32.const	$push31=, 28
	i32.add 	$push32=, $0, $pop31
	i32.store	0($pop32), $8
	i32.load	$push33=, 20($1)
	call    	db_remove_i64@FUNCTION, $pop33
	.endfunc
.Lfunc_end27:
	.size	_ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE5eraseERKS2_, .Lfunc_end27-_ZN5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE5eraseERKS2_

	.text
	.hidden	_ZN13horuspaytoken12horustokenio10stakehorusEyyN5eosio5assetE
	.globl	_ZN13horuspaytoken12horustokenio10stakehorusEyyN5eosio5assetE
	.type	_ZN13horuspaytoken12horustokenio10stakehorusEyyN5eosio5assetE,@function
_ZN13horuspaytoken12horustokenio10stakehorusEyyN5eosio5assetE:
	.param  	i32, i64, i64, i32
	.local  	i32, i32, i64, i64, i32, i32, i32, i32, i32
	i32.const	$push149=, 0
	i32.const	$push146=, 0
	i32.load	$push147=, __stack_pointer($pop146)
	i32.const	$push148=, 96
	i32.sub 	$push169=, $pop147, $pop148
	tee_local	$push168=, $12=, $pop169
	i32.store	__stack_pointer($pop149), $pop168
	i64.store	88($12), $1
	i64.store	80($12), $2
	call    	require_auth@FUNCTION, $1
	i32.const	$push167=, 1
	i32.const	$push0=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop167, $pop0
	i32.const	$9=, 0
	i64.const	$7=, 5462355
.LBB28_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push1=, $7
	i32.const	$push172=, 24
	i32.shl 	$push2=, $pop1, $pop172
	i32.const	$push171=, -1073741825
	i32.add 	$push3=, $pop2, $pop171
	i32.const	$push170=, 452984830
	i32.gt_u	$push4=, $pop3, $pop170
	br_if   	1, $pop4
	block   	
	i64.const	$push177=, 8
	i64.shr_u	$push176=, $7, $pop177
	tee_local	$push175=, $7=, $pop176
	i64.const	$push174=, 255
	i64.and 	$push5=, $pop175, $pop174
	i64.const	$push173=, 0
	i64.ne  	$push6=, $pop5, $pop173
	br_if   	0, $pop6
.LBB28_3:
	loop    	
	i64.const	$push182=, 8
	i64.shr_u	$push181=, $7, $pop182
	tee_local	$push180=, $7=, $pop181
	i64.const	$push179=, 255
	i64.and 	$push7=, $pop180, $pop179
	i64.const	$push178=, 0
	i64.ne  	$push8=, $pop7, $pop178
	br_if   	3, $pop8
	i32.const	$push186=, 1
	i32.add 	$push185=, $9, $pop186
	tee_local	$push184=, $9=, $pop185
	i32.const	$push183=, 7
	i32.lt_s	$push9=, $pop184, $pop183
	br_if   	0, $pop9
.LBB28_5:
	end_loop
	end_block
	i32.const	$8=, 1
	i32.const	$push190=, 1
	i32.add 	$push189=, $9, $pop190
	tee_local	$push188=, $9=, $pop189
	i32.const	$push187=, 7
	i32.lt_s	$push10=, $pop188, $pop187
	br_if   	0, $pop10
	br      	2
.LBB28_6:
	end_loop
	end_block
	i32.const	$8=, 0
.LBB28_7:
	end_block
	i32.const	$push11=, .L.str
	call    	eosio_assert@FUNCTION, $8, $pop11
	i32.call	$push12=, is_account@FUNCTION, $2
	i32.const	$push13=, .L.str.18
	call    	eosio_assert@FUNCTION, $pop12, $pop13
	i32.const	$8=, 0
	i32.const	$5=, 0
	block   	
	i64.load	$push192=, 0($3)
	tee_local	$push191=, $2=, $pop192
	i64.const	$push14=, 4611686018427387903
	i64.add 	$push15=, $pop191, $pop14
	i64.const	$push16=, 9223372036854775806
	i64.gt_u	$push17=, $pop15, $pop16
	br_if   	0, $pop17
	i64.load	$push18=, 8($3)
	i64.const	$push193=, 8
	i64.shr_u	$7=, $pop18, $pop193
	i32.const	$9=, 0
.LBB28_9:
	block   	
	loop    	
	i32.wrap/i64	$push19=, $7
	i32.const	$push196=, 24
	i32.shl 	$push20=, $pop19, $pop196
	i32.const	$push195=, -1073741825
	i32.add 	$push21=, $pop20, $pop195
	i32.const	$push194=, 452984830
	i32.gt_u	$push22=, $pop21, $pop194
	br_if   	1, $pop22
	block   	
	i64.const	$push201=, 8
	i64.shr_u	$push200=, $7, $pop201
	tee_local	$push199=, $7=, $pop200
	i64.const	$push198=, 255
	i64.and 	$push23=, $pop199, $pop198
	i64.const	$push197=, 0
	i64.ne  	$push24=, $pop23, $pop197
	br_if   	0, $pop24
.LBB28_11:
	loop    	
	i64.const	$push206=, 8
	i64.shr_u	$push205=, $7, $pop206
	tee_local	$push204=, $7=, $pop205
	i64.const	$push203=, 255
	i64.and 	$push25=, $pop204, $pop203
	i64.const	$push202=, 0
	i64.ne  	$push26=, $pop25, $pop202
	br_if   	3, $pop26
	i32.const	$push210=, 1
	i32.add 	$push209=, $9, $pop210
	tee_local	$push208=, $9=, $pop209
	i32.const	$push207=, 7
	i32.lt_s	$push27=, $pop208, $pop207
	br_if   	0, $pop27
.LBB28_13:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push214=, 1
	i32.add 	$push213=, $9, $pop214
	tee_local	$push212=, $9=, $pop213
	i32.const	$push211=, 7
	i32.lt_s	$push28=, $pop212, $pop211
	br_if   	0, $pop28
	br      	2
.LBB28_14:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB28_15:
	end_block
	i32.const	$push29=, .L.str.19
	call    	eosio_assert@FUNCTION, $5, $pop29
	i32.const	$push215=, 1
	i32.const	$push30=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop215, $pop30
	i64.const	$7=, 357913743176
.LBB28_16:
	block   	
	block   	
	loop    	
	i32.const	$9=, 0
	i32.wrap/i64	$push31=, $7
	i32.const	$push218=, 24
	i32.shl 	$push32=, $pop31, $pop218
	i32.const	$push217=, -1073741825
	i32.add 	$push33=, $pop32, $pop217
	i32.const	$push216=, 452984830
	i32.gt_u	$push34=, $pop33, $pop216
	br_if   	1, $pop34
	block   	
	i64.const	$push223=, 8
	i64.shr_u	$push222=, $7, $pop223
	tee_local	$push221=, $7=, $pop222
	i64.const	$push220=, 255
	i64.and 	$push35=, $pop221, $pop220
	i64.const	$push219=, 0
	i64.ne  	$push36=, $pop35, $pop219
	br_if   	0, $pop36
.LBB28_18:
	loop    	
	i64.const	$push228=, 8
	i64.shr_u	$push227=, $7, $pop228
	tee_local	$push226=, $7=, $pop227
	i64.const	$push225=, 255
	i64.and 	$push37=, $pop226, $pop225
	i64.const	$push224=, 0
	i64.ne  	$push38=, $pop37, $pop224
	br_if   	3, $pop38
	i32.const	$push232=, 1
	i32.add 	$push231=, $8, $pop232
	tee_local	$push230=, $8=, $pop231
	i32.const	$push229=, 7
	i32.lt_s	$push39=, $pop230, $pop229
	br_if   	0, $pop39
.LBB28_20:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push236=, 1
	i32.add 	$push235=, $8, $pop236
	tee_local	$push234=, $8=, $pop235
	i32.const	$push233=, 7
	i32.lt_s	$push40=, $pop234, $pop233
	br_if   	0, $pop40
	br      	2
.LBB28_21:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB28_22:
	end_block
	i32.const	$push41=, .L.str
	call    	eosio_assert@FUNCTION, $5, $pop41
	i64.load	$push241=, 8($3)
	tee_local	$push240=, $6=, $pop241
	i64.const	$push239=, 91625918253060
	i64.eq  	$push42=, $pop240, $pop239
	i32.const	$push43=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop42, $pop43
	i64.const	$push44=, 63
	i64.shr_u	$push45=, $2, $pop44
	i32.wrap/i64	$push46=, $pop45
	i32.const	$push238=, 1
	i32.xor 	$push47=, $pop46, $pop238
	i32.const	$push48=, .L.str.21
	call    	eosio_assert@FUNCTION, $pop47, $pop48
	i32.const	$push237=, 1
	i32.const	$push49=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop237, $pop49
	i64.const	$7=, 357913743176
.LBB28_23:
	block   	
	block   	
	loop    	
	i32.const	$10=, 0
	i32.wrap/i64	$push50=, $7
	i32.const	$push244=, 24
	i32.shl 	$push51=, $pop50, $pop244
	i32.const	$push243=, -1073741825
	i32.add 	$push52=, $pop51, $pop243
	i32.const	$push242=, 452984830
	i32.gt_u	$push53=, $pop52, $pop242
	br_if   	1, $pop53
	block   	
	i64.const	$push249=, 8
	i64.shr_u	$push248=, $7, $pop249
	tee_local	$push247=, $7=, $pop248
	i64.const	$push246=, 255
	i64.and 	$push54=, $pop247, $pop246
	i64.const	$push245=, 0
	i64.ne  	$push55=, $pop54, $pop245
	br_if   	0, $pop55
.LBB28_25:
	loop    	
	i64.const	$push254=, 8
	i64.shr_u	$push253=, $7, $pop254
	tee_local	$push252=, $7=, $pop253
	i64.const	$push251=, 255
	i64.and 	$push56=, $pop252, $pop251
	i64.const	$push250=, 0
	i64.ne  	$push57=, $pop56, $pop250
	br_if   	3, $pop57
	i32.const	$push258=, 1
	i32.add 	$push257=, $9, $pop258
	tee_local	$push256=, $9=, $pop257
	i32.const	$push255=, 7
	i32.lt_s	$push58=, $pop256, $pop255
	br_if   	0, $pop58
.LBB28_27:
	end_loop
	end_block
	i32.const	$8=, 1
	i32.const	$push262=, 1
	i32.add 	$push261=, $9, $pop262
	tee_local	$push260=, $9=, $pop261
	i32.const	$push259=, 7
	i32.lt_s	$push59=, $pop260, $pop259
	br_if   	0, $pop59
	br      	2
.LBB28_28:
	end_loop
	end_block
	i32.const	$8=, 0
.LBB28_29:
	end_block
	i32.const	$push60=, .L.str
	call    	eosio_assert@FUNCTION, $8, $pop60
	i64.const	$push273=, 91625918253060
	i64.eq  	$push61=, $6, $pop273
	i32.const	$push62=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop61, $pop62
	i64.const	$push63=, 99999
	i64.gt_s	$push64=, $2, $pop63
	i32.const	$push65=, .L.str.22
	call    	eosio_assert@FUNCTION, $pop64, $pop65
	i32.const	$push153=, 40
	i32.add 	$push154=, $12, $pop153
	i32.const	$push66=, 32
	i32.add 	$push67=, $pop154, $pop66
	i32.const	$push272=, 0
	i32.store	0($pop67), $pop272
	i64.store	48($12), $1
	i64.const	$push68=, -1
	i64.store	56($12), $pop68
	i64.const	$push69=, 0
	i64.store	64($12), $pop69
	i64.load	$push271=, 0($0)
	tee_local	$push270=, $7=, $pop271
	i64.store	40($12), $pop270
	i32.const	$push269=, 32
	i32.add 	$push70=, $12, $pop269
	i32.const	$push268=, 0
	i32.store	0($pop70), $pop268
	i64.store	8($12), $1
	i64.store	0($12), $7
	i64.const	$push267=, -1
	i64.store	16($12), $pop267
	i64.const	$push266=, 0
	i64.store	24($12), $pop266
	block   	
	block   	
	block   	
	i64.const	$push73=, 3607749779137757184
	i64.const	$push71=, 8
	i64.shr_u	$push72=, $6, $pop71
	i32.call	$push265=, db_find_i64@FUNCTION, $7, $1, $pop73, $pop72
	tee_local	$push264=, $9=, $pop265
	i32.const	$push263=, 0
	i32.lt_s	$push74=, $pop264, $pop263
	br_if   	0, $pop74
	i32.call	$push279=, _ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE31load_object_by_primary_iteratorEl@FUNCTION, $12, $9
	tee_local	$push278=, $11=, $pop279
	i32.load	$push75=, 16($pop278)
	i32.eq  	$push76=, $pop75, $12
	i32.const	$push77=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop76, $pop77
	i64.load	$1=, 88($12)
	i32.const	$push80=, 68
	i32.add 	$push81=, $12, $pop80
	i32.load	$push277=, 0($pop81)
	tee_local	$push276=, $5=, $pop277
	i32.const	$push78=, 64
	i32.add 	$push79=, $12, $pop78
	i32.load	$push275=, 0($pop79)
	tee_local	$push274=, $10=, $pop275
	i32.ne  	$push82=, $pop276, $pop274
	br_if   	1, $pop82
	br      	2
.LBB28_31:
	end_block
	i32.const	$5=, 0
	i32.const	$11=, 0
	i32.const	$push281=, 0
	i32.const	$push280=, 0
	i32.eq  	$push83=, $pop281, $pop280
	br_if   	1, $pop83
.LBB28_32:
	end_block
	i32.const	$push282=, -24
	i32.add 	$9=, $5, $pop282
	i32.const	$push84=, 0
	i32.sub 	$4=, $pop84, $10
.LBB28_33:
	loop    	
	i32.load	$push85=, 0($9)
	i64.load	$push86=, 0($pop85)
	i64.eq  	$push87=, $pop86, $1
	br_if   	1, $pop87
	copy_local	$5=, $9
	i32.const	$push286=, -24
	i32.add 	$push285=, $9, $pop286
	tee_local	$push284=, $8=, $pop285
	copy_local	$9=, $pop284
	i32.add 	$push88=, $8, $4
	i32.const	$push283=, -24
	i32.ne  	$push89=, $pop88, $pop283
	br_if   	0, $pop89
.LBB28_35:
	end_loop
	end_block
	block   	
	block   	
	block   	
	block   	
	i32.eq  	$push90=, $5, $10
	br_if   	0, $pop90
	i32.const	$push91=, -24
	i32.add 	$push92=, $5, $pop91
	i32.load	$push288=, 0($pop92)
	tee_local	$push287=, $9=, $pop288
	i32.load	$push93=, 24($pop287)
	i32.const	$push165=, 40
	i32.add 	$push166=, $12, $pop165
	i32.eq  	$push94=, $pop93, $pop166
	i32.const	$push95=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop94, $pop95
	br_if   	1, $9
	br      	2
.LBB28_37:
	end_block
	i64.load	$push99=, 40($12)
	i32.const	$push96=, 48
	i32.add 	$push97=, $12, $pop96
	i64.load	$push98=, 0($pop97)
	i64.const	$push100=, -3020372000712425472
	i32.call	$push290=, db_find_i64@FUNCTION, $pop99, $pop98, $pop100, $1
	tee_local	$push289=, $9=, $pop290
	i32.const	$push101=, 0
	i32.lt_s	$push102=, $pop289, $pop101
	br_if   	1, $pop102
	i32.const	$push161=, 40
	i32.add 	$push162=, $12, $pop161
	i32.call	$push292=, _ZNK5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop162, $9
	tee_local	$push291=, $9=, $pop292
	i32.load	$push103=, 24($pop291)
	i32.const	$push163=, 40
	i32.add 	$push164=, $12, $pop163
	i32.eq  	$push104=, $pop103, $pop164
	i32.const	$push105=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop104, $pop105
.LBB28_39:
	end_block
	i32.const	$push106=, 16
	i32.add 	$push107=, $9, $pop106
	i64.load	$2=, 0($pop107)
	i64.load	$6=, 8($9)
	br      	1
.LBB28_40:
	end_block
	i32.const	$push293=, 1
	i32.const	$push108=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop293, $pop108
	i64.const	$7=, 357913743176
	i64.const	$2=, 91625918253060
	i32.const	$9=, 0
.LBB28_41:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push109=, $7
	i32.const	$push296=, 24
	i32.shl 	$push110=, $pop109, $pop296
	i32.const	$push295=, -1073741825
	i32.add 	$push111=, $pop110, $pop295
	i32.const	$push294=, 452984830
	i32.gt_u	$push112=, $pop111, $pop294
	br_if   	1, $pop112
	block   	
	i64.const	$push301=, 8
	i64.shr_u	$push300=, $7, $pop301
	tee_local	$push299=, $7=, $pop300
	i64.const	$push298=, 255
	i64.and 	$push113=, $pop299, $pop298
	i64.const	$push297=, 0
	i64.ne  	$push114=, $pop113, $pop297
	br_if   	0, $pop114
.LBB28_43:
	loop    	
	i64.const	$push306=, 8
	i64.shr_u	$push305=, $7, $pop306
	tee_local	$push304=, $7=, $pop305
	i64.const	$push303=, 255
	i64.and 	$push115=, $pop304, $pop303
	i64.const	$push302=, 0
	i64.ne  	$push116=, $pop115, $pop302
	br_if   	3, $pop116
	i32.const	$push310=, 1
	i32.add 	$push309=, $9, $pop310
	tee_local	$push308=, $9=, $pop309
	i32.const	$push307=, 7
	i32.lt_s	$push117=, $pop308, $pop307
	br_if   	0, $pop117
.LBB28_45:
	end_loop
	end_block
	i32.const	$8=, 1
	i32.const	$push314=, 1
	i32.add 	$push313=, $9, $pop314
	tee_local	$push312=, $9=, $pop313
	i32.const	$push311=, 7
	i32.lt_s	$push118=, $pop312, $pop311
	br_if   	0, $pop118
	br      	2
.LBB28_46:
	end_loop
	end_block
	i32.const	$8=, 0
.LBB28_47:
	end_block
	i32.const	$push119=, .L.str
	call    	eosio_assert@FUNCTION, $8, $pop119
	i64.const	$6=, 0
.LBB28_48:
	end_block
	i64.load	$7=, 0($11)
	i64.load	$push320=, 8($11)
	tee_local	$push319=, $1=, $pop320
	i64.eq  	$push120=, $2, $pop319
	i32.const	$push121=, .L.str.45
	call    	eosio_assert@FUNCTION, $pop120, $pop121
	i64.sub 	$push318=, $7, $6
	tee_local	$push317=, $7=, $pop318
	i64.const	$push122=, -4611686018427387904
	i64.gt_s	$push123=, $pop317, $pop122
	i32.const	$push124=, .L.str.46
	call    	eosio_assert@FUNCTION, $pop123, $pop124
	i64.const	$push125=, 4611686018427387904
	i64.lt_s	$push126=, $7, $pop125
	i32.const	$push127=, .L.str.47
	call    	eosio_assert@FUNCTION, $pop126, $pop127
	i32.const	$push128=, 8
	i32.add 	$push129=, $3, $pop128
	i64.load	$push130=, 0($pop129)
	i64.eq  	$push131=, $1, $pop130
	i32.const	$push132=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop131, $pop132
	i64.load	$push133=, 0($3)
	i64.le_s	$push134=, $pop133, $7
	i32.const	$push135=, .L.str.23
	call    	eosio_assert@FUNCTION, $pop134, $pop135
	i32.const	$push155=, 88
	i32.add 	$push156=, $12, $pop155
	i32.const	$push157=, 80
	i32.add 	$push158=, $12, $pop157
	call    	_ZN13horuspaytoken12horustokenio14delegate_horusERyS1_RKN5eosio5assetE@FUNCTION, $0, $pop156, $pop158, $3
	i32.const	$push159=, 88
	i32.add 	$push160=, $12, $pop159
	call    	_ZN13horuspaytoken12horustokenio21update_user_resourcesERyRKN5eosio5assetE@FUNCTION, $0, $pop160, $3
	block   	
	i32.load	$push316=, 24($12)
	tee_local	$push315=, $5=, $pop316
	i32.eqz 	$push339=, $pop315
	br_if   	0, $pop339
	block   	
	block   	
	i32.const	$push136=, 28
	i32.add 	$push324=, $12, $pop136
	tee_local	$push323=, $4=, $pop324
	i32.load	$push322=, 0($pop323)
	tee_local	$push321=, $9=, $pop322
	i32.eq  	$push137=, $pop321, $5
	br_if   	0, $pop137
.LBB28_51:
	loop    	
	i32.const	$push328=, -24
	i32.add 	$push327=, $9, $pop328
	tee_local	$push326=, $9=, $pop327
	i32.load	$8=, 0($pop326)
	i32.const	$push325=, 0
	i32.store	0($9), $pop325
	block   	
	i32.eqz 	$push340=, $8
	br_if   	0, $pop340
	call    	_ZdlPv@FUNCTION, $8
.LBB28_53:
	end_block
	i32.ne  	$push138=, $5, $9
	br_if   	0, $pop138
	end_loop
	i32.const	$push139=, 24
	i32.add 	$push140=, $12, $pop139
	i32.load	$9=, 0($pop140)
	br      	1
.LBB28_55:
	end_block
	copy_local	$9=, $5
.LBB28_56:
	end_block
	i32.store	0($4), $5
	call    	_ZdlPv@FUNCTION, $9
.LBB28_57:
	end_block
	block   	
	i32.load	$push330=, 64($12)
	tee_local	$push329=, $5=, $pop330
	i32.eqz 	$push341=, $pop329
	br_if   	0, $pop341
	block   	
	block   	
	i32.const	$push141=, 68
	i32.add 	$push334=, $12, $pop141
	tee_local	$push333=, $4=, $pop334
	i32.load	$push332=, 0($pop333)
	tee_local	$push331=, $9=, $pop332
	i32.eq  	$push142=, $pop331, $5
	br_if   	0, $pop142
.LBB28_60:
	loop    	
	i32.const	$push338=, -24
	i32.add 	$push337=, $9, $pop338
	tee_local	$push336=, $9=, $pop337
	i32.load	$8=, 0($pop336)
	i32.const	$push335=, 0
	i32.store	0($9), $pop335
	block   	
	i32.eqz 	$push342=, $8
	br_if   	0, $pop342
	call    	_ZdlPv@FUNCTION, $8
.LBB28_62:
	end_block
	i32.ne  	$push143=, $5, $9
	br_if   	0, $pop143
	end_loop
	i32.const	$push144=, 64
	i32.add 	$push145=, $12, $pop144
	i32.load	$9=, 0($pop145)
	br      	1
.LBB28_64:
	end_block
	copy_local	$9=, $5
.LBB28_65:
	end_block
	i32.store	0($4), $5
	call    	_ZdlPv@FUNCTION, $9
.LBB28_66:
	end_block
	i32.const	$push152=, 0
	i32.const	$push150=, 96
	i32.add 	$push151=, $12, $pop150
	i32.store	__stack_pointer($pop152), $pop151
	.endfunc
.Lfunc_end28:
	.size	_ZN13horuspaytoken12horustokenio10stakehorusEyyN5eosio5assetE, .Lfunc_end28-_ZN13horuspaytoken12horustokenio10stakehorusEyyN5eosio5assetE

	.section	.text._ZNK5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32, i32
	i32.const	$push43=, 0
	i32.const	$push40=, 0
	i32.load	$push41=, __stack_pointer($pop40)
	i32.const	$push42=, 48
	i32.sub 	$push67=, $pop41, $pop42
	tee_local	$push66=, $9=, $pop67
	i32.store	__stack_pointer($pop43), $pop66
	copy_local	$push65=, $9
	tee_local	$push64=, $8=, $pop65
	i32.store	44($pop64), $1
	block   	
	i32.const	$push2=, 28
	i32.add 	$push3=, $0, $pop2
	i32.load	$push63=, 0($pop3)
	tee_local	$push62=, $7=, $pop63
	i32.load	$push61=, 24($0)
	tee_local	$push60=, $2=, $pop61
	i32.eq  	$push4=, $pop62, $pop60
	br_if   	0, $pop4
	i32.const	$push5=, 0
	i32.sub 	$3=, $pop5, $2
	i32.const	$push68=, -24
	i32.add 	$6=, $7, $pop68
.LBB29_2:
	loop    	
	i32.const	$push69=, 16
	i32.add 	$push6=, $6, $pop69
	i32.load	$push7=, 0($pop6)
	i32.eq  	$push8=, $pop7, $1
	br_if   	1, $pop8
	copy_local	$7=, $6
	i32.const	$push73=, -24
	i32.add 	$push72=, $6, $pop73
	tee_local	$push71=, $4=, $pop72
	copy_local	$6=, $pop71
	i32.add 	$push9=, $4, $3
	i32.const	$push70=, -24
	i32.ne  	$push10=, $pop9, $pop70
	br_if   	0, $pop10
.LBB29_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
	i32.const	$push12=, -24
	i32.add 	$push13=, $7, $pop12
	i32.load	$6=, 0($pop13)
	br      	1
.LBB29_6:
	end_block
	i32.const	$push14=, 0
	i32.const	$push76=, 0
	i32.call	$push75=, db_get_i64@FUNCTION, $1, $pop14, $pop76
	tee_local	$push74=, $6=, $pop75
	i32.const	$push15=, 31
	i32.shr_u	$push16=, $pop74, $pop15
	i32.const	$push17=, 1
	i32.xor 	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.51
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	block   	
	block   	
	i32.const	$push20=, 513
	i32.lt_u	$push21=, $6, $pop20
	br_if   	0, $pop21
	i32.call	$4=, malloc@FUNCTION, $6
	br      	1
.LBB29_8:
	end_block
	i32.const	$push39=, 0
	i32.const	$push22=, 15
	i32.add 	$push23=, $6, $pop22
	i32.const	$push24=, -16
	i32.and 	$push25=, $pop23, $pop24
	i32.sub 	$push78=, $9, $pop25
	tee_local	$push77=, $4=, $pop78
	copy_local	$push59=, $pop77
	i32.store	__stack_pointer($pop39), $pop59
.LBB29_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $6
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push26=, $4, $6
	i32.store	40($8), $pop26
	block   	
	i32.const	$push27=, 513
	i32.lt_u	$push28=, $6, $pop27
	br_if   	0, $pop28
	call    	free@FUNCTION, $4
.LBB29_11:
	end_block
	i32.const	$push47=, 32
	i32.add 	$push48=, $8, $pop47
	i32.store	12($8), $pop48
	i32.const	$push49=, 44
	i32.add 	$push50=, $8, $pop49
	i32.store	16($8), $pop50
	i32.store	8($8), $0
	i32.const	$push29=, 40
	i32.call	$push88=, _Znwj@FUNCTION, $pop29
	tee_local	$push87=, $4=, $pop88
	i32.const	$push51=, 8
	i32.add 	$push52=, $8, $pop51
	i32.call	$6=, _ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_@FUNCTION, $pop87, $0, $pop52
	i32.store	24($8), $4
	i64.load	$push86=, 0($4)
	tee_local	$push85=, $5=, $pop86
	i64.store	8($8), $pop85
	i32.load	$push84=, 28($4)
	tee_local	$push83=, $1=, $pop84
	i32.store	4($8), $pop83
	block   	
	block   	
	i32.const	$push33=, 28
	i32.add 	$push82=, $0, $pop33
	tee_local	$push81=, $3=, $pop82
	i32.load	$push80=, 0($pop81)
	tee_local	$push79=, $7=, $pop80
	i32.const	$push30=, 32
	i32.add 	$push31=, $0, $pop30
	i32.load	$push32=, 0($pop31)
	i32.ge_u	$push34=, $pop79, $pop32
	br_if   	0, $pop34
	i64.store	8($7), $5
	i32.store	16($7), $1
	i32.const	$push35=, 0
	i32.store	24($8), $pop35
	i32.store	0($7), $4
	i32.const	$push36=, 24
	i32.add 	$push37=, $7, $pop36
	i32.store	0($3), $pop37
	br      	1
.LBB29_13:
	end_block
	i32.const	$push1=, 24
	i32.add 	$push0=, $0, $pop1
	i32.const	$push53=, 24
	i32.add 	$push54=, $8, $pop53
	i32.const	$push55=, 8
	i32.add 	$push56=, $8, $pop55
	i32.const	$push57=, 4
	i32.add 	$push58=, $8, $pop57
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop0, $pop54, $pop56, $pop58
.LBB29_14:
	end_block
	i32.load	$4=, 24($8)
	i32.const	$push38=, 0
	i32.store	24($8), $pop38
	i32.eqz 	$push89=, $4
	br_if   	0, $pop89
	call    	_ZdlPv@FUNCTION, $4
.LBB29_16:
	end_block
	i32.const	$push46=, 0
	i32.const	$push44=, 48
	i32.add 	$push45=, $8, $pop44
	i32.store	__stack_pointer($pop46), $pop45
	copy_local	$push90=, $6
	.endfunc
.Lfunc_end29:
	.size	_ZNK5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE31load_object_by_primary_iteratorEl, .Lfunc_end29-_ZNK5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN13horuspaytoken12horustokenio14delegate_horusERyS1_RKN5eosio5assetE,"axG",@progbits,_ZN13horuspaytoken12horustokenio14delegate_horusERyS1_RKN5eosio5assetE,comdat
	.hidden	_ZN13horuspaytoken12horustokenio14delegate_horusERyS1_RKN5eosio5assetE
	.weak	_ZN13horuspaytoken12horustokenio14delegate_horusERyS1_RKN5eosio5assetE
	.type	_ZN13horuspaytoken12horustokenio14delegate_horusERyS1_RKN5eosio5assetE,@function
_ZN13horuspaytoken12horustokenio14delegate_horusERyS1_RKN5eosio5assetE:
	.param  	i32, i32, i32, i32
	.local  	i64, i32
	i32.const	$push24=, 0
	i32.const	$push21=, 0
	i32.load	$push22=, __stack_pointer($pop21)
	i32.const	$push23=, 64
	i32.sub 	$push48=, $pop22, $pop23
	tee_local	$push47=, $5=, $pop48
	i32.store	__stack_pointer($pop24), $pop47
	i64.const	$push0=, -1
	i64.store	40($5), $pop0
	i32.const	$push1=, 0
	i32.store	48($5), $pop1
	i64.load	$push2=, 0($0)
	i64.store	24($5), $pop2
	i64.load	$push46=, 0($1)
	tee_local	$push45=, $4=, $pop46
	i64.store	32($5), $pop45
	i32.const	$push3=, 52
	i32.add 	$push44=, $5, $pop3
	tee_local	$push43=, $0=, $pop44
	i32.const	$push42=, 0
	i32.store	0($pop43), $pop42
	i32.const	$push28=, 24
	i32.add 	$push29=, $5, $pop28
	i32.const	$push4=, 32
	i32.add 	$push5=, $pop29, $pop4
	i32.const	$push41=, 0
	i32.store	0($pop5), $pop41
	i32.store	4($5), $1
	i32.store	8($5), $2
	i32.const	$push30=, 24
	i32.add 	$push31=, $5, $pop30
	i32.store	0($5), $pop31
	i32.store	12($5), $3
	i32.const	$push32=, 16
	i32.add 	$push33=, $5, $pop32
	i32.const	$push34=, 24
	i32.add 	$push35=, $5, $pop34
	call    	_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_@FUNCTION, $pop33, $pop35, $4, $5
	i64.load	$push8=, 8($3)
	i32.load	$push40=, 20($5)
	tee_local	$push39=, $1=, $pop40
	i32.const	$push38=, 32
	i32.add 	$push6=, $pop39, $pop38
	i64.load	$push7=, 0($pop6)
	i64.eq  	$push9=, $pop8, $pop7
	i32.const	$push10=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop9, $pop10
	i64.load	$push12=, 0($3)
	i64.load	$push11=, 24($1)
	i64.eq  	$push13=, $pop12, $pop11
	i32.const	$push14=, .L.str.48
	call    	eosio_assert@FUNCTION, $pop13, $pop14
	block   	
	i32.load	$push37=, 48($5)
	tee_local	$push36=, $2=, $pop37
	i32.eqz 	$push55=, $pop36
	br_if   	0, $pop55
	block   	
	block   	
	i32.load	$push50=, 0($0)
	tee_local	$push49=, $3=, $pop50
	i32.eq  	$push15=, $pop49, $2
	br_if   	0, $pop15
.LBB30_3:
	loop    	
	i32.const	$push54=, -24
	i32.add 	$push53=, $3, $pop54
	tee_local	$push52=, $3=, $pop53
	i32.load	$1=, 0($pop52)
	i32.const	$push51=, 0
	i32.store	0($3), $pop51
	block   	
	i32.eqz 	$push56=, $1
	br_if   	0, $pop56
	call    	_ZdlPv@FUNCTION, $1
.LBB30_5:
	end_block
	i32.ne  	$push16=, $2, $3
	br_if   	0, $pop16
	end_loop
	i32.const	$push17=, 48
	i32.add 	$push18=, $5, $pop17
	i32.load	$3=, 0($pop18)
	br      	1
.LBB30_7:
	end_block
	copy_local	$3=, $2
.LBB30_8:
	end_block
	i32.const	$push19=, 52
	i32.add 	$push20=, $5, $pop19
	i32.store	0($pop20), $2
	call    	_ZdlPv@FUNCTION, $3
.LBB30_9:
	end_block
	i32.const	$push27=, 0
	i32.const	$push25=, 64
	i32.add 	$push26=, $5, $pop25
	i32.store	__stack_pointer($pop27), $pop26
	.endfunc
.Lfunc_end30:
	.size	_ZN13horuspaytoken12horustokenio14delegate_horusERyS1_RKN5eosio5assetE, .Lfunc_end30-_ZN13horuspaytoken12horustokenio14delegate_horusERyS1_RKN5eosio5assetE

	.section	.text._ZN13horuspaytoken12horustokenio21update_user_resourcesERyRKN5eosio5assetE,"axG",@progbits,_ZN13horuspaytoken12horustokenio21update_user_resourcesERyRKN5eosio5assetE,comdat
	.hidden	_ZN13horuspaytoken12horustokenio21update_user_resourcesERyRKN5eosio5assetE
	.weak	_ZN13horuspaytoken12horustokenio21update_user_resourcesERyRKN5eosio5assetE
	.type	_ZN13horuspaytoken12horustokenio21update_user_resourcesERyRKN5eosio5assetE,@function
_ZN13horuspaytoken12horustokenio21update_user_resourcesERyRKN5eosio5assetE:
	.param  	i32, i32, i32
	.local  	i64, i32, i64, i32
	i32.const	$push72=, 0
	i32.const	$push69=, 0
	i32.load	$push70=, __stack_pointer($pop69)
	i32.const	$push71=, 64
	i32.sub 	$push106=, $pop70, $pop71
	tee_local	$push105=, $6=, $pop106
	i32.store	__stack_pointer($pop72), $pop105
	i64.const	$push0=, -1
	i64.store	32($6), $pop0
	i32.const	$push1=, 0
	i32.store	40($6), $pop1
	i64.load	$push104=, 0($0)
	tee_local	$push103=, $3=, $pop104
	i64.store	16($6), $pop103
	i64.load	$push102=, 0($1)
	tee_local	$push101=, $5=, $pop102
	i64.store	24($6), $pop101
	i32.const	$push2=, 44
	i32.add 	$push3=, $6, $pop2
	i32.const	$push100=, 0
	i32.store	0($pop3), $pop100
	i32.const	$push4=, 48
	i32.add 	$push5=, $6, $pop4
	i32.const	$push99=, 0
	i32.store	0($pop5), $pop99
	block   	
	block   	
	i64.const	$push6=, -3020372000712425472
	i32.call	$push98=, db_find_i64@FUNCTION, $3, $5, $pop6, $5
	tee_local	$push97=, $0=, $pop98
	i32.const	$push96=, 0
	i32.lt_s	$push7=, $pop97, $pop96
	br_if   	0, $pop7
	i32.const	$push86=, 16
	i32.add 	$push87=, $6, $pop86
	i32.call	$push108=, _ZNK5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop87, $0
	tee_local	$push107=, $0=, $pop108
	i32.load	$push8=, 24($pop107)
	i32.const	$push88=, 16
	i32.add 	$push89=, $6, $pop88
	i32.eq  	$push9=, $pop8, $pop89
	i32.const	$push10=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop9, $pop10
	i32.store	56($6), $2
	i32.const	$push12=, 1
	i32.const	$push11=, .L.str.58
	call    	eosio_assert@FUNCTION, $pop12, $pop11
	i32.const	$push90=, 16
	i32.add 	$push91=, $6, $pop90
	i64.const	$push13=, 0
	i32.const	$push92=, 56
	i32.add 	$push93=, $6, $pop92
	call    	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE6modifyIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E0_EEvRKS2_yOSA_@FUNCTION, $pop91, $0, $pop13, $pop93
	i32.const	$push94=, 16
	i32.add 	$push95=, $6, $pop94
	copy_local	$4=, $pop95
	br      	1
.LBB31_2:
	end_block
	i64.load	$5=, 0($1)
	i32.store	12($6), $2
	i32.store	8($6), $1
	i32.const	$push76=, 56
	i32.add 	$push77=, $6, $pop76
	i32.const	$push78=, 16
	i32.add 	$push79=, $6, $pop78
	i32.const	$push80=, 8
	i32.add 	$push81=, $6, $pop80
	call    	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_@FUNCTION, $pop77, $pop79, $5, $pop81
	i32.load	$0=, 60($6)
	i32.load	$4=, 56($6)
.LBB31_3:
	end_block
	i32.const	$push109=, 1
	i32.const	$push14=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop109, $pop14
	i64.const	$5=, 357913743176
	i32.const	$1=, 0
.LBB31_4:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push15=, $5
	i32.const	$push112=, 24
	i32.shl 	$push16=, $pop15, $pop112
	i32.const	$push111=, -1073741825
	i32.add 	$push17=, $pop16, $pop111
	i32.const	$push110=, 452984830
	i32.gt_u	$push18=, $pop17, $pop110
	br_if   	1, $pop18
	block   	
	i64.const	$push117=, 8
	i64.shr_u	$push116=, $5, $pop117
	tee_local	$push115=, $5=, $pop116
	i64.const	$push114=, 255
	i64.and 	$push19=, $pop115, $pop114
	i64.const	$push113=, 0
	i64.ne  	$push20=, $pop19, $pop113
	br_if   	0, $pop20
.LBB31_6:
	loop    	
	i64.const	$push122=, 8
	i64.shr_u	$push121=, $5, $pop122
	tee_local	$push120=, $5=, $pop121
	i64.const	$push119=, 255
	i64.and 	$push21=, $pop120, $pop119
	i64.const	$push118=, 0
	i64.ne  	$push22=, $pop21, $pop118
	br_if   	3, $pop22
	i32.const	$push126=, 1
	i32.add 	$push125=, $1, $pop126
	tee_local	$push124=, $1=, $pop125
	i32.const	$push123=, 7
	i32.lt_s	$push23=, $pop124, $pop123
	br_if   	0, $pop23
.LBB31_8:
	end_loop
	end_block
	i32.const	$2=, 1
	i32.const	$push130=, 1
	i32.add 	$push129=, $1, $pop130
	tee_local	$push128=, $1=, $pop129
	i32.const	$push127=, 7
	i32.lt_s	$push24=, $pop128, $pop127
	br_if   	0, $pop24
	br      	2
.LBB31_9:
	end_loop
	end_block
	i32.const	$2=, 0
.LBB31_10:
	end_block
	i32.const	$push25=, .L.str
	call    	eosio_assert@FUNCTION, $2, $pop25
	i64.const	$push133=, 91625918253060
	i32.const	$push26=, 16
	i32.add 	$push27=, $0, $pop26
	i64.load	$push28=, 0($pop27)
	i64.eq  	$push29=, $pop133, $pop28
	i32.const	$push30=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop29, $pop30
	i64.load	$push31=, 8($0)
	i64.const	$push32=, 63
	i64.shr_u	$push33=, $pop31, $pop32
	i32.wrap/i64	$push34=, $pop33
	i32.const	$push132=, 1
	i32.xor 	$push35=, $pop34, $pop132
	i32.const	$push36=, .L.str.57
	call    	eosio_assert@FUNCTION, $pop35, $pop36
	i32.const	$push131=, 1
	i32.const	$push37=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop131, $pop37
	i64.const	$5=, 357913743176
	i32.const	$1=, 0
.LBB31_11:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push38=, $5
	i32.const	$push136=, 24
	i32.shl 	$push39=, $pop38, $pop136
	i32.const	$push135=, -1073741825
	i32.add 	$push40=, $pop39, $pop135
	i32.const	$push134=, 452984830
	i32.gt_u	$push41=, $pop40, $pop134
	br_if   	1, $pop41
	block   	
	i64.const	$push141=, 8
	i64.shr_u	$push140=, $5, $pop141
	tee_local	$push139=, $5=, $pop140
	i64.const	$push138=, 255
	i64.and 	$push42=, $pop139, $pop138
	i64.const	$push137=, 0
	i64.ne  	$push43=, $pop42, $pop137
	br_if   	0, $pop43
.LBB31_13:
	loop    	
	i64.const	$push146=, 8
	i64.shr_u	$push145=, $5, $pop146
	tee_local	$push144=, $5=, $pop145
	i64.const	$push143=, 255
	i64.and 	$push44=, $pop144, $pop143
	i64.const	$push142=, 0
	i64.ne  	$push45=, $pop44, $pop142
	br_if   	3, $pop45
	i32.const	$push150=, 1
	i32.add 	$push149=, $1, $pop150
	tee_local	$push148=, $1=, $pop149
	i32.const	$push147=, 7
	i32.lt_s	$push46=, $pop148, $pop147
	br_if   	0, $pop46
.LBB31_15:
	end_loop
	end_block
	i32.const	$2=, 1
	i32.const	$push154=, 1
	i32.add 	$push153=, $1, $pop154
	tee_local	$push152=, $1=, $pop153
	i32.const	$push151=, 7
	i32.lt_s	$push47=, $pop152, $pop151
	br_if   	0, $pop47
	br      	2
.LBB31_16:
	end_loop
	end_block
	i32.const	$2=, 0
.LBB31_17:
	end_block
	i32.const	$push48=, .L.str
	call    	eosio_assert@FUNCTION, $2, $pop48
	i32.const	$push49=, 16
	i32.add 	$push50=, $0, $pop49
	i64.load	$push51=, 0($pop50)
	i64.const	$push155=, 91625918253060
	i64.eq  	$push52=, $pop51, $pop155
	i32.const	$push53=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop52, $pop53
	block   	
	i32.const	$push54=, 8
	i32.add 	$push55=, $0, $pop54
	i64.load	$push56=, 0($pop55)
	i64.const	$push57=, 0
	i64.ne  	$push58=, $pop56, $pop57
	br_if   	0, $pop58
	i32.const	$push59=, 0
	i32.ne  	$push160=, $0, $pop59
	tee_local	$push159=, $1=, $pop160
	i32.const	$push60=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop159, $pop60
	i32.const	$push61=, .L.str.66
	call    	eosio_assert@FUNCTION, $1, $pop61
	block   	
	i32.load	$push62=, 28($0)
	i32.const	$push82=, 56
	i32.add 	$push83=, $6, $pop82
	i32.call	$push158=, db_next_i64@FUNCTION, $pop62, $pop83
	tee_local	$push157=, $1=, $pop158
	i32.const	$push156=, 0
	i32.lt_s	$push63=, $pop157, $pop156
	br_if   	0, $pop63
	i32.call	$drop=, _ZNK5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE31load_object_by_primary_iteratorEl@FUNCTION, $4, $1
.LBB31_20:
	end_block
	i32.const	$push84=, 16
	i32.add 	$push85=, $6, $pop84
	call    	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE5eraseERKS2_@FUNCTION, $pop85, $0
.LBB31_21:
	end_block
	block   	
	i32.load	$push162=, 40($6)
	tee_local	$push161=, $2=, $pop162
	i32.eqz 	$push171=, $pop161
	br_if   	0, $pop171
	block   	
	block   	
	i32.const	$push64=, 44
	i32.add 	$push166=, $6, $pop64
	tee_local	$push165=, $4=, $pop166
	i32.load	$push164=, 0($pop165)
	tee_local	$push163=, $1=, $pop164
	i32.eq  	$push65=, $pop163, $2
	br_if   	0, $pop65
.LBB31_24:
	loop    	
	i32.const	$push170=, -24
	i32.add 	$push169=, $1, $pop170
	tee_local	$push168=, $1=, $pop169
	i32.load	$0=, 0($pop168)
	i32.const	$push167=, 0
	i32.store	0($1), $pop167
	block   	
	i32.eqz 	$push172=, $0
	br_if   	0, $pop172
	call    	_ZdlPv@FUNCTION, $0
.LBB31_26:
	end_block
	i32.ne  	$push66=, $2, $1
	br_if   	0, $pop66
	end_loop
	i32.const	$push67=, 40
	i32.add 	$push68=, $6, $pop67
	i32.load	$1=, 0($pop68)
	br      	1
.LBB31_28:
	end_block
	copy_local	$1=, $2
.LBB31_29:
	end_block
	i32.store	0($4), $2
	call    	_ZdlPv@FUNCTION, $1
.LBB31_30:
	end_block
	i32.const	$push75=, 0
	i32.const	$push73=, 64
	i32.add 	$push74=, $6, $pop73
	i32.store	__stack_pointer($pop75), $pop74
	.endfunc
.Lfunc_end31:
	.size	_ZN13horuspaytoken12horustokenio21update_user_resourcesERyRKN5eosio5assetE, .Lfunc_end31-_ZN13horuspaytoken12horustokenio21update_user_resourcesERyRKN5eosio5assetE

	.section	.text._ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE6modifyIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E0_EEvRKS2_yOSA_,"axG",@progbits,_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE6modifyIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E0_EEvRKS2_yOSA_,comdat
	.hidden	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE6modifyIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E0_EEvRKS2_yOSA_
	.weak	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE6modifyIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E0_EEvRKS2_yOSA_
	.type	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE6modifyIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E0_EEvRKS2_yOSA_,@function
_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE6modifyIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E0_EEvRKS2_yOSA_:
	.param  	i32, i32, i64, i32
	.local  	i64, i32, i64, i32
	i32.const	$push43=, 0
	i32.const	$push40=, 0
	i32.load	$push41=, __stack_pointer($pop40)
	i32.const	$push42=, 32
	i32.sub 	$push64=, $pop41, $pop42
	tee_local	$push63=, $7=, $pop64
	i32.store	__stack_pointer($pop43), $pop63
	i32.load	$push0=, 24($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.59
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.60
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	i64.load	$4=, 0($1)
	i32.load	$push62=, 0($3)
	tee_local	$push61=, $3=, $pop62
	i64.load	$push8=, 8($pop61)
	i32.const	$push60=, 16
	i32.add 	$push59=, $1, $pop60
	tee_local	$push58=, $5=, $pop59
	i64.load	$push7=, 0($pop58)
	i64.eq  	$push9=, $pop8, $pop7
	i32.const	$push10=, .L.str.62
	call    	eosio_assert@FUNCTION, $pop9, $pop10
	i64.load	$push12=, 8($1)
	i64.load	$push11=, 0($3)
	i64.add 	$push57=, $pop12, $pop11
	tee_local	$push56=, $6=, $pop57
	i64.store	8($1), $pop56
	i64.const	$push13=, -4611686018427387904
	i64.gt_s	$push14=, $6, $pop13
	i32.const	$push15=, .L.str.63
	call    	eosio_assert@FUNCTION, $pop14, $pop15
	i64.load	$push16=, 8($1)
	i64.const	$push17=, 4611686018427387904
	i64.lt_s	$push18=, $pop16, $pop17
	i32.const	$push19=, .L.str.64
	call    	eosio_assert@FUNCTION, $pop18, $pop19
	i64.load	$push20=, 0($1)
	i64.eq  	$push21=, $4, $pop20
	i32.const	$push22=, .L.str.61
	call    	eosio_assert@FUNCTION, $pop21, $pop22
	i32.const	$push24=, 1
	i32.const	$push23=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop24, $pop23
	i32.const	$push25=, 8
	i32.call	$drop=, memcpy@FUNCTION, $7, $1, $pop25
	i32.const	$push55=, 1
	i32.const	$push54=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop55, $pop54
	i32.const	$push53=, 8
	i32.or  	$push27=, $7, $pop53
	i32.const	$push52=, 8
	i32.add 	$push26=, $1, $pop52
	i32.const	$push51=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop26, $pop51
	i32.const	$push50=, 1
	i32.const	$push49=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop50, $pop49
	i32.const	$push48=, 16
	i32.add 	$push28=, $7, $pop48
	i32.const	$push47=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop28, $5, $pop47
	i32.load	$push29=, 28($1)
	i32.const	$push30=, 24
	call    	db_update_i64@FUNCTION, $pop29, $2, $7, $pop30
	block   	
	i64.load	$push31=, 16($0)
	i64.lt_u	$push32=, $4, $pop31
	br_if   	0, $pop32
	i32.const	$push65=, 16
	i32.add 	$push39=, $0, $pop65
	i64.const	$push37=, -2
	i64.const	$push35=, 1
	i64.add 	$push36=, $4, $pop35
	i64.const	$push33=, -3
	i64.gt_u	$push34=, $4, $pop33
	i64.select	$push38=, $pop37, $pop36, $pop34
	i64.store	0($pop39), $pop38
.LBB32_2:
	end_block
	i32.const	$push46=, 0
	i32.const	$push44=, 32
	i32.add 	$push45=, $7, $pop44
	i32.store	__stack_pointer($pop46), $pop45
	.endfunc
.Lfunc_end32:
	.size	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE6modifyIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E0_EEvRKS2_yOSA_, .Lfunc_end32-_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE6modifyIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E0_EEvRKS2_yOSA_

	.section	.text._ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_,"axG",@progbits,_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_,comdat
	.hidden	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_
	.weak	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_
	.type	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_,@function
_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_:
	.param  	i32, i32, i64, i32
	.local  	i32, i32, i32, i32
	i32.const	$push32=, 0
	i32.const	$push29=, 0
	i32.load	$push30=, __stack_pointer($pop29)
	i32.const	$push31=, 48
	i32.sub 	$push51=, $pop30, $pop31
	tee_local	$push50=, $7=, $pop51
	i32.store	__stack_pointer($pop32), $pop50
	i64.store	40($7), $2
	i64.load	$push0=, 0($1)
	i64.call	$push1=, current_receiver@FUNCTION
	i64.eq  	$push2=, $pop0, $pop1
	i32.const	$push3=, .L.str.49
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i32.store	20($7), $3
	i32.store	16($7), $1
	i32.const	$push36=, 40
	i32.add 	$push37=, $7, $pop36
	i32.store	24($7), $pop37
	i32.const	$push4=, 40
	i32.call	$push49=, _Znwj@FUNCTION, $pop4
	tee_local	$push48=, $4=, $pop49
	i64.const	$push5=, 1398362884
	i64.store	16($pop48), $pop5
	i64.const	$push47=, 0
	i64.store	8($4), $pop47
	i32.const	$push46=, 1
	i32.const	$push6=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop46, $pop6
	i64.const	$2=, 5462355
	i32.const	$3=, 0
.LBB33_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push7=, $2
	i32.const	$push54=, 24
	i32.shl 	$push8=, $pop7, $pop54
	i32.const	$push53=, -1073741825
	i32.add 	$push9=, $pop8, $pop53
	i32.const	$push52=, 452984830
	i32.gt_u	$push10=, $pop9, $pop52
	br_if   	1, $pop10
	block   	
	i64.const	$push59=, 8
	i64.shr_u	$push58=, $2, $pop59
	tee_local	$push57=, $2=, $pop58
	i64.const	$push56=, 255
	i64.and 	$push11=, $pop57, $pop56
	i64.const	$push55=, 0
	i64.ne  	$push12=, $pop11, $pop55
	br_if   	0, $pop12
.LBB33_3:
	loop    	
	i64.const	$push64=, 8
	i64.shr_u	$push63=, $2, $pop64
	tee_local	$push62=, $2=, $pop63
	i64.const	$push61=, 255
	i64.and 	$push13=, $pop62, $pop61
	i64.const	$push60=, 0
	i64.ne  	$push14=, $pop13, $pop60
	br_if   	3, $pop14
	i32.const	$push68=, 1
	i32.add 	$push67=, $3, $pop68
	tee_local	$push66=, $3=, $pop67
	i32.const	$push65=, 7
	i32.lt_s	$push15=, $pop66, $pop65
	br_if   	0, $pop15
.LBB33_5:
	end_loop
	end_block
	i32.const	$6=, 1
	i32.const	$push72=, 1
	i32.add 	$push71=, $3, $pop72
	tee_local	$push70=, $3=, $pop71
	i32.const	$push69=, 7
	i32.lt_s	$push16=, $pop70, $pop69
	br_if   	0, $pop16
	br      	2
.LBB33_6:
	end_loop
	end_block
	i32.const	$6=, 0
.LBB33_7:
	end_block
	i32.const	$push17=, .L.str
	call    	eosio_assert@FUNCTION, $6, $pop17
	i32.store	24($4), $1
	i32.const	$push38=, 16
	i32.add 	$push39=, $7, $pop38
	call    	_ZZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_@FUNCTION, $pop39, $4
	i32.store	32($7), $4
	i64.load	$push80=, 0($4)
	tee_local	$push79=, $2=, $pop80
	i64.store	16($7), $pop79
	i32.load	$push78=, 28($4)
	tee_local	$push77=, $6=, $pop78
	i32.store	12($7), $pop77
	block   	
	block   	
	i32.const	$push21=, 28
	i32.add 	$push76=, $1, $pop21
	tee_local	$push75=, $5=, $pop76
	i32.load	$push74=, 0($pop75)
	tee_local	$push73=, $3=, $pop74
	i32.const	$push18=, 32
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 0($pop19)
	i32.ge_u	$push22=, $pop73, $pop20
	br_if   	0, $pop22
	i64.store	8($3), $2
	i32.store	16($3), $6
	i32.const	$push25=, 0
	i32.store	32($7), $pop25
	i32.store	0($3), $4
	i32.const	$push26=, 24
	i32.add 	$push27=, $3, $pop26
	i32.store	0($5), $pop27
	br      	1
.LBB33_9:
	end_block
	i32.const	$push23=, 24
	i32.add 	$push24=, $1, $pop23
	i32.const	$push40=, 32
	i32.add 	$push41=, $7, $pop40
	i32.const	$push42=, 16
	i32.add 	$push43=, $7, $pop42
	i32.const	$push44=, 12
	i32.add 	$push45=, $7, $pop44
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop24, $pop41, $pop43, $pop45
.LBB33_10:
	end_block
	i32.store	4($0), $4
	i32.store	0($0), $1
	i32.load	$3=, 32($7)
	i32.const	$push28=, 0
	i32.store	32($7), $pop28
	block   	
	i32.eqz 	$push81=, $3
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $3
.LBB33_12:
	end_block
	i32.const	$push35=, 0
	i32.const	$push33=, 48
	i32.add 	$push34=, $7, $pop33
	i32.store	__stack_pointer($pop35), $pop34
	.endfunc
.Lfunc_end33:
	.size	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_, .Lfunc_end33-_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_

	.section	.text._ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE5eraseERKS2_,"axG",@progbits,_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE5eraseERKS2_,comdat
	.hidden	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE5eraseERKS2_
	.weak	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE5eraseERKS2_
	.type	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE5eraseERKS2_,@function
_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE5eraseERKS2_:
	.param  	i32, i32
	.local  	i64, i32, i32, i32, i32, i32, i32
	i32.load	$push0=, 24($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.67
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.68
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	block   	
	i32.const	$push7=, 28
	i32.add 	$push38=, $0, $pop7
	tee_local	$push37=, $5=, $pop38
	i32.load	$push36=, 0($pop37)
	tee_local	$push35=, $7=, $pop36
	i32.load	$push34=, 24($0)
	tee_local	$push33=, $3=, $pop34
	i32.eq  	$push8=, $pop35, $pop33
	br_if   	0, $pop8
	i64.load	$2=, 0($1)
	i32.const	$push9=, 0
	i32.sub 	$6=, $pop9, $3
	i32.const	$push39=, -24
	i32.add 	$8=, $7, $pop39
.LBB34_2:
	loop    	
	i32.load	$push10=, 0($8)
	i64.load	$push11=, 0($pop10)
	i64.eq  	$push12=, $pop11, $2
	br_if   	1, $pop12
	copy_local	$7=, $8
	i32.const	$push43=, -24
	i32.add 	$push42=, $8, $pop43
	tee_local	$push41=, $4=, $pop42
	copy_local	$8=, $pop41
	i32.add 	$push13=, $4, $6
	i32.const	$push40=, -24
	i32.ne  	$push14=, $pop13, $pop40
	br_if   	0, $pop14
.LBB34_4:
	end_loop
	end_block
	i32.ne  	$push15=, $7, $3
	i32.const	$push16=, .L.str.69
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i32.const	$push46=, -24
	i32.add 	$8=, $7, $pop46
	block   	
	block   	
	i32.load	$push45=, 0($5)
	tee_local	$push44=, $4=, $pop45
	i32.eq  	$push17=, $7, $pop44
	br_if   	0, $pop17
	i32.const	$push47=, 0
	i32.sub 	$3=, $pop47, $4
	copy_local	$7=, $8
.LBB34_6:
	loop    	
	i32.const	$push51=, 24
	i32.add 	$push50=, $7, $pop51
	tee_local	$push49=, $8=, $pop50
	i32.load	$6=, 0($pop49)
	i32.const	$push48=, 0
	i32.store	0($8), $pop48
	i32.load	$4=, 0($7)
	i32.store	0($7), $6
	block   	
	i32.eqz 	$push63=, $4
	br_if   	0, $pop63
	call    	_ZdlPv@FUNCTION, $4
.LBB34_8:
	end_block
	i32.const	$push56=, 16
	i32.add 	$push18=, $7, $pop56
	i32.const	$push55=, 40
	i32.add 	$push19=, $7, $pop55
	i32.load	$push20=, 0($pop19)
	i32.store	0($pop18), $pop20
	i32.const	$push54=, 8
	i32.add 	$push21=, $7, $pop54
	i32.const	$push53=, 32
	i32.add 	$push22=, $7, $pop53
	i64.load	$push23=, 0($pop22)
	i64.store	0($pop21), $pop23
	copy_local	$7=, $8
	i32.add 	$push24=, $8, $3
	i32.const	$push52=, -24
	i32.ne  	$push25=, $pop24, $pop52
	br_if   	0, $pop25
	end_loop
	i32.const	$push26=, 28
	i32.add 	$push27=, $0, $pop26
	i32.load	$push58=, 0($pop27)
	tee_local	$push57=, $7=, $pop58
	i32.eq  	$push28=, $pop57, $8
	br_if   	1, $pop28
.LBB34_10:
	end_block
.LBB34_11:
	loop    	
	i32.const	$push62=, -24
	i32.add 	$push61=, $7, $pop62
	tee_local	$push60=, $7=, $pop61
	i32.load	$4=, 0($pop60)
	i32.const	$push59=, 0
	i32.store	0($7), $pop59
	block   	
	i32.eqz 	$push64=, $4
	br_if   	0, $pop64
	call    	_ZdlPv@FUNCTION, $4
.LBB34_13:
	end_block
	i32.ne  	$push29=, $8, $7
	br_if   	0, $pop29
.LBB34_14:
	end_loop
	end_block
	i32.const	$push30=, 28
	i32.add 	$push31=, $0, $pop30
	i32.store	0($pop31), $8
	i32.load	$push32=, 28($1)
	call    	db_remove_i64@FUNCTION, $pop32
	.endfunc
.Lfunc_end34:
	.size	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE5eraseERKS2_, .Lfunc_end34-_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE5eraseERKS2_

	.section	.text._ZZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_,"axG",@progbits,_ZZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_,comdat
	.hidden	_ZZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_
	.weak	_ZZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_
	.type	_ZZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_,@function
_ZZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_:
	.param  	i32, i32
	.local  	i32, i64, i32, i32, i32
	i32.const	$push29=, 0
	i32.const	$push26=, 0
	i32.load	$push27=, __stack_pointer($pop26)
	i32.const	$push28=, 32
	i32.sub 	$push53=, $pop27, $pop28
	tee_local	$push52=, $6=, $pop53
	i32.store	__stack_pointer($pop29), $pop52
	i32.load	$push51=, 4($0)
	tee_local	$push50=, $4=, $pop51
	i32.load	$push0=, 0($pop50)
	i64.load	$push1=, 0($pop0)
	i64.store	0($1), $pop1
	i32.load	$2=, 0($0)
	i32.load	$push49=, 4($4)
	tee_local	$push48=, $4=, $pop49
	i64.load	$push2=, 0($pop48)
	i64.store	8($1), $pop2
	i32.const	$push47=, 16
	i32.add 	$push46=, $1, $pop47
	tee_local	$push45=, $5=, $pop46
	i32.const	$push3=, 8
	i32.add 	$push4=, $4, $pop3
	i64.load	$push5=, 0($pop4)
	i64.store	0($pop45), $pop5
	i32.const	$push7=, 1
	i32.const	$push6=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop7, $pop6
	i32.const	$push44=, 8
	i32.call	$drop=, memcpy@FUNCTION, $6, $1, $pop44
	i32.const	$push43=, 1
	i32.const	$push42=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop43, $pop42
	i32.const	$push41=, 8
	i32.or  	$push9=, $6, $pop41
	i32.const	$push40=, 8
	i32.add 	$push8=, $1, $pop40
	i32.const	$push39=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop9, $pop8, $pop39
	i32.const	$push38=, 1
	i32.const	$push37=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop38, $pop37
	i32.const	$push36=, 16
	i32.add 	$push10=, $6, $pop36
	i32.const	$push35=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop10, $5, $pop35
	i64.load	$push11=, 8($2)
	i64.const	$push15=, -3020372000712425472
	i32.load	$push12=, 8($0)
	i64.load	$push13=, 0($pop12)
	i64.load	$push34=, 0($1)
	tee_local	$push33=, $3=, $pop34
	i32.const	$push14=, 24
	i32.call	$push16=, db_store_i64@FUNCTION, $pop11, $pop15, $pop13, $pop33, $6, $pop14
	i32.store	28($1), $pop16
	block   	
	i64.load	$push17=, 16($2)
	i64.lt_u	$push18=, $3, $pop17
	br_if   	0, $pop18
	i32.const	$push54=, 16
	i32.add 	$push25=, $2, $pop54
	i64.const	$push23=, -2
	i64.const	$push21=, 1
	i64.add 	$push22=, $3, $pop21
	i64.const	$push19=, -3
	i64.gt_u	$push20=, $3, $pop19
	i64.select	$push24=, $pop23, $pop22, $pop20
	i64.store	0($pop25), $pop24
.LBB35_2:
	end_block
	i32.const	$push32=, 0
	i32.const	$push30=, 32
	i32.add 	$push31=, $6, $pop30
	i32.store	__stack_pointer($pop32), $pop31
	.endfunc
.Lfunc_end35:
	.size	_ZZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_, .Lfunc_end35-_ZZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE7emplaceIZNS1_12horustokenio21update_user_resourcesERyRKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push46=, 0($0)
	tee_local	$push45=, $6=, $pop46
	i32.sub 	$push1=, $pop0, $pop45
	i32.const	$push44=, 24
	i32.div_s	$push43=, $pop1, $pop44
	tee_local	$push42=, $4=, $pop43
	i32.const	$push2=, 1
	i32.add 	$push41=, $pop42, $pop2
	tee_local	$push40=, $5=, $pop41
	i32.const	$push3=, 178956971
	i32.ge_u	$push4=, $pop40, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 178956970
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $6
	i32.const	$push49=, 24
	i32.div_s	$push48=, $pop6, $pop49
	tee_local	$push47=, $6=, $pop48
	i32.const	$push7=, 89478484
	i32.gt_u	$push8=, $pop47, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push53=, $6, $pop9
	tee_local	$push52=, $7=, $pop53
	i32.lt_u	$push10=, $7, $5
	i32.select	$push51=, $5, $pop52, $pop10
	tee_local	$push50=, $7=, $pop51
	i32.eqz 	$push79=, $pop50
	br_if   	1, $pop79
.LBB36_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB36_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB36_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB36_6:
	end_block
	i32.load	$5=, 0($1)
	i32.const	$push62=, 0
	i32.store	0($1), $pop62
	i32.const	$push13=, 24
	i32.mul 	$push14=, $4, $pop13
	i32.add 	$push61=, $6, $pop14
	tee_local	$push60=, $1=, $pop61
	i32.store	0($pop60), $5
	i64.load	$push15=, 0($2)
	i64.store	8($1), $pop15
	i32.load	$push16=, 0($3)
	i32.store	16($1), $pop16
	i32.const	$push59=, 24
	i32.mul 	$push17=, $7, $pop59
	i32.add 	$4=, $6, $pop17
	i32.const	$push58=, 24
	i32.add 	$5=, $1, $pop58
	block   	
	block   	
	i32.const	$push18=, 4
	i32.add 	$push19=, $0, $pop18
	i32.load	$push57=, 0($pop19)
	tee_local	$push56=, $6=, $pop57
	i32.load	$push55=, 0($0)
	tee_local	$push54=, $7=, $pop55
	i32.eq  	$push20=, $pop56, $pop54
	br_if   	0, $pop20
.LBB36_8:
	loop    	
	i32.const	$push74=, -24
	i32.add 	$push73=, $6, $pop74
	tee_local	$push72=, $2=, $pop73
	i32.load	$3=, 0($pop72)
	i32.const	$push71=, 0
	i32.store	0($2), $pop71
	i32.const	$push70=, -24
	i32.add 	$push21=, $1, $pop70
	i32.store	0($pop21), $3
	i32.const	$push69=, -8
	i32.add 	$push22=, $1, $pop69
	i32.const	$push68=, -8
	i32.add 	$push23=, $6, $pop68
	i32.load	$push24=, 0($pop23)
	i32.store	0($pop22), $pop24
	i32.const	$push67=, -12
	i32.add 	$push25=, $1, $pop67
	i32.const	$push66=, -12
	i32.add 	$push26=, $6, $pop66
	i32.load	$push27=, 0($pop26)
	i32.store	0($pop25), $pop27
	i32.const	$push65=, -16
	i32.add 	$push28=, $1, $pop65
	i32.const	$push64=, -16
	i32.add 	$push29=, $6, $pop64
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push63=, -24
	i32.add 	$1=, $1, $pop63
	copy_local	$6=, $2
	i32.ne  	$push31=, $7, $2
	br_if   	0, $pop31
	end_loop
	i32.const	$push32=, 4
	i32.add 	$push33=, $0, $pop32
	i32.load	$7=, 0($pop33)
	i32.load	$6=, 0($0)
	br      	1
.LBB36_10:
	end_block
	copy_local	$6=, $7
.LBB36_11:
	end_block
	i32.store	0($0), $1
	i32.const	$push34=, 4
	i32.add 	$push35=, $0, $pop34
	i32.store	0($pop35), $5
	i32.const	$push36=, 8
	i32.add 	$push37=, $0, $pop36
	i32.store	0($pop37), $4
	block   	
	i32.eq  	$push38=, $7, $6
	br_if   	0, $pop38
.LBB36_13:
	loop    	
	i32.const	$push78=, -24
	i32.add 	$push77=, $7, $pop78
	tee_local	$push76=, $7=, $pop77
	i32.load	$1=, 0($pop76)
	i32.const	$push75=, 0
	i32.store	0($7), $pop75
	block   	
	i32.eqz 	$push80=, $1
	br_if   	0, $pop80
	call    	_ZdlPv@FUNCTION, $1
.LBB36_15:
	end_block
	i32.ne  	$push39=, $6, $7
	br_if   	0, $pop39
.LBB36_16:
	end_loop
	end_block
	block   	
	i32.eqz 	$push81=, $6
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $6
.LBB36_18:
	end_block
	.endfunc
.Lfunc_end36:
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end36-_ZNSt3__16vectorIN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.section	.text._ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_,"axG",@progbits,_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_,comdat
	.hidden	_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_
	.weak	_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_
	.type	_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_,@function
_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_:
	.param  	i32, i32, i64, i32
	.local  	i32, i32, i32, i32
	i32.const	$push32=, 0
	i32.const	$push29=, 0
	i32.load	$push30=, __stack_pointer($pop29)
	i32.const	$push31=, 48
	i32.sub 	$push51=, $pop30, $pop31
	tee_local	$push50=, $7=, $pop51
	i32.store	__stack_pointer($pop32), $pop50
	i64.store	40($7), $2
	i64.load	$push0=, 0($1)
	i64.call	$push1=, current_receiver@FUNCTION
	i64.eq  	$push2=, $pop0, $pop1
	i32.const	$push3=, .L.str.49
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i32.store	20($7), $3
	i32.store	16($7), $1
	i32.const	$push36=, 40
	i32.add 	$push37=, $7, $pop36
	i32.store	24($7), $pop37
	i32.const	$push4=, 56
	i32.call	$push49=, _Znwj@FUNCTION, $pop4
	tee_local	$push48=, $4=, $pop49
	i64.const	$push5=, 1398362884
	i64.store	32($pop48), $pop5
	i64.const	$push47=, 0
	i64.store	24($4), $pop47
	i32.const	$push46=, 1
	i32.const	$push6=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop46, $pop6
	i64.const	$2=, 5462355
	i32.const	$3=, 0
.LBB37_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push7=, $2
	i32.const	$push54=, 24
	i32.shl 	$push8=, $pop7, $pop54
	i32.const	$push53=, -1073741825
	i32.add 	$push9=, $pop8, $pop53
	i32.const	$push52=, 452984830
	i32.gt_u	$push10=, $pop9, $pop52
	br_if   	1, $pop10
	block   	
	i64.const	$push59=, 8
	i64.shr_u	$push58=, $2, $pop59
	tee_local	$push57=, $2=, $pop58
	i64.const	$push56=, 255
	i64.and 	$push11=, $pop57, $pop56
	i64.const	$push55=, 0
	i64.ne  	$push12=, $pop11, $pop55
	br_if   	0, $pop12
.LBB37_3:
	loop    	
	i64.const	$push64=, 8
	i64.shr_u	$push63=, $2, $pop64
	tee_local	$push62=, $2=, $pop63
	i64.const	$push61=, 255
	i64.and 	$push13=, $pop62, $pop61
	i64.const	$push60=, 0
	i64.ne  	$push14=, $pop13, $pop60
	br_if   	3, $pop14
	i32.const	$push68=, 1
	i32.add 	$push67=, $3, $pop68
	tee_local	$push66=, $3=, $pop67
	i32.const	$push65=, 7
	i32.lt_s	$push15=, $pop66, $pop65
	br_if   	0, $pop15
.LBB37_5:
	end_loop
	end_block
	i32.const	$6=, 1
	i32.const	$push72=, 1
	i32.add 	$push71=, $3, $pop72
	tee_local	$push70=, $3=, $pop71
	i32.const	$push69=, 7
	i32.lt_s	$push16=, $pop70, $pop69
	br_if   	0, $pop16
	br      	2
.LBB37_6:
	end_loop
	end_block
	i32.const	$6=, 0
.LBB37_7:
	end_block
	i32.const	$push17=, .L.str
	call    	eosio_assert@FUNCTION, $6, $pop17
	i32.store	44($4), $1
	i32.const	$push38=, 16
	i32.add 	$push39=, $7, $pop38
	call    	_ZZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_@FUNCTION, $pop39, $4
	i32.store	32($7), $4
	i64.load	$push80=, 0($4)
	tee_local	$push79=, $2=, $pop80
	i64.store	16($7), $pop79
	i32.load	$push78=, 48($4)
	tee_local	$push77=, $6=, $pop78
	i32.store	12($7), $pop77
	block   	
	block   	
	i32.const	$push21=, 28
	i32.add 	$push76=, $1, $pop21
	tee_local	$push75=, $5=, $pop76
	i32.load	$push74=, 0($pop75)
	tee_local	$push73=, $3=, $pop74
	i32.const	$push18=, 32
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 0($pop19)
	i32.ge_u	$push22=, $pop73, $pop20
	br_if   	0, $pop22
	i64.store	8($3), $2
	i32.store	16($3), $6
	i32.const	$push25=, 0
	i32.store	32($7), $pop25
	i32.store	0($3), $4
	i32.const	$push26=, 24
	i32.add 	$push27=, $3, $pop26
	i32.store	0($5), $pop27
	br      	1
.LBB37_9:
	end_block
	i32.const	$push23=, 24
	i32.add 	$push24=, $1, $pop23
	i32.const	$push40=, 32
	i32.add 	$push41=, $7, $pop40
	i32.const	$push42=, 16
	i32.add 	$push43=, $7, $pop42
	i32.const	$push44=, 12
	i32.add 	$push45=, $7, $pop44
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop24, $pop41, $pop43, $pop45
.LBB37_10:
	end_block
	i32.store	4($0), $4
	i32.store	0($0), $1
	i32.load	$3=, 32($7)
	i32.const	$push28=, 0
	i32.store	32($7), $pop28
	block   	
	i32.eqz 	$push81=, $3
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $3
.LBB37_12:
	end_block
	i32.const	$push35=, 0
	i32.const	$push33=, 48
	i32.add 	$push34=, $7, $pop33
	i32.store	__stack_pointer($pop35), $pop34
	.endfunc
.Lfunc_end37:
	.size	_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_, .Lfunc_end37-_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_

	.section	.text._ZZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_,"axG",@progbits,_ZZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_,comdat
	.hidden	_ZZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_
	.weak	_ZZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_
	.type	_ZZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_,@function
_ZZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i64, i32, i32
	i32.const	$push50=, 0
	i32.load	$push51=, __stack_pointer($pop50)
	i32.const	$push52=, 16
	i32.sub 	$push65=, $pop51, $pop52
	tee_local	$push64=, $8=, $pop65
	copy_local	$7=, $pop64
	i32.const	$push53=, 0
	i32.store	__stack_pointer($pop53), $8
	i32.load	$2=, 0($0)
	block   	
	i32.load	$push63=, 4($0)
	tee_local	$push62=, $3=, $pop63
	i32.load	$push61=, 0($pop62)
	tee_local	$push60=, $4=, $pop61
	i64.load	$push59=, 16($pop60)
	tee_local	$push58=, $6=, $pop59
	i64.const	$push0=, -1
	i64.ne  	$push1=, $pop58, $pop0
	br_if   	0, $pop1
	i64.const	$6=, 0
	block   	
	i64.load	$push3=, 0($4)
	i64.load	$push2=, 8($4)
	i64.const	$push4=, -4157661221488775168
	i64.const	$push69=, 0
	i32.call	$push68=, db_lowerbound_i64@FUNCTION, $pop3, $pop2, $pop4, $pop69
	tee_local	$push67=, $5=, $pop68
	i32.const	$push66=, 0
	i32.lt_s	$push5=, $pop67, $pop66
	br_if   	0, $pop5
	i32.call	$drop=, _ZNK5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE31load_object_by_primary_iteratorEl@FUNCTION, $4, $5
	i32.const	$push72=, 0
	i32.store	4($7), $pop72
	i32.store	0($7), $4
	i64.const	$push12=, -2
	i32.call	$push6=, _ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE14const_iteratormmEv@FUNCTION, $7
	i32.load	$push7=, 4($pop6)
	i64.load	$push71=, 0($pop7)
	tee_local	$push70=, $6=, $pop71
	i64.const	$push10=, 1
	i64.add 	$push11=, $pop70, $pop10
	i64.const	$push8=, -3
	i64.gt_u	$push9=, $6, $pop8
	i64.select	$6=, $pop12, $pop11, $pop9
.LBB38_3:
	end_block
	i32.const	$push13=, 16
	i32.add 	$push14=, $4, $pop13
	i64.store	0($pop14), $6
.LBB38_4:
	end_block
	i64.const	$push82=, -2
	i64.lt_u	$push15=, $6, $pop82
	i32.const	$push16=, .L.str.50
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i32.const	$push81=, 16
	i32.add 	$push17=, $4, $pop81
	i64.load	$push18=, 0($pop17)
	i64.store	0($1), $pop18
	i32.load	$push19=, 4($3)
	i64.load	$push20=, 0($pop19)
	i64.store	8($1), $pop20
	i32.load	$push21=, 8($3)
	i64.load	$push22=, 0($pop21)
	i64.store	16($1), $pop22
	i32.load	$push80=, 12($3)
	tee_local	$push79=, $3=, $pop80
	i64.load	$push23=, 0($pop79)
	i64.store	24($1), $pop23
	i32.const	$push24=, 32
	i32.add 	$push25=, $1, $pop24
	i32.const	$push26=, 8
	i32.add 	$push27=, $3, $pop26
	i64.load	$push28=, 0($pop27)
	i64.store	0($pop25), $pop28
	i64.call	$push30=, current_time@FUNCTION
	i64.const	$push29=, 1000000
	i64.div_u	$push31=, $pop30, $pop29
	i64.store32	40($1), $pop31
	i32.const	$push49=, 0
	copy_local	$push78=, $8
	tee_local	$push77=, $4=, $pop78
	i32.const	$push32=, -48
	i32.add 	$push76=, $pop77, $pop32
	tee_local	$push75=, $3=, $pop76
	copy_local	$push57=, $pop75
	i32.store	__stack_pointer($pop49), $pop57
	i32.store	4($7), $3
	i32.store	0($7), $3
	i32.const	$push33=, -4
	i32.add 	$push34=, $4, $pop33
	i32.store	8($7), $pop34
	i32.call	$drop=, _ZN13horuspaytokenlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_12staked_horusE@FUNCTION, $7, $1
	i64.load	$push35=, 8($2)
	i64.const	$push39=, -4157661221488775168
	i32.load	$push36=, 8($0)
	i64.load	$push37=, 0($pop36)
	i64.load	$push74=, 0($1)
	tee_local	$push73=, $6=, $pop74
	i32.const	$push38=, 44
	i32.call	$push40=, db_store_i64@FUNCTION, $pop35, $pop39, $pop37, $pop73, $3, $pop38
	i32.store	48($1), $pop40
	block   	
	i64.load	$push41=, 16($2)
	i64.lt_u	$push42=, $6, $pop41
	br_if   	0, $pop42
	i32.const	$push84=, 16
	i32.add 	$push48=, $2, $pop84
	i64.const	$push83=, -2
	i64.const	$push45=, 1
	i64.add 	$push46=, $6, $pop45
	i64.const	$push43=, -3
	i64.gt_u	$push44=, $6, $pop43
	i64.select	$push47=, $pop83, $pop46, $pop44
	i64.store	0($pop48), $pop47
.LBB38_6:
	end_block
	i32.const	$push56=, 0
	i32.const	$push54=, 16
	i32.add 	$push55=, $7, $pop54
	i32.store	__stack_pointer($pop56), $pop55
	.endfunc
.Lfunc_end38:
	.size	_ZZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_, .Lfunc_end38-_ZZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE7emplaceIZNS1_12horustokenio14delegate_horusERyS6_RKNS_5assetEEUlRT_E_EENS3_14const_iteratorEyOSA_ENKUlSB_E_clINS3_4itemEEEDaSB_

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push46=, 0($0)
	tee_local	$push45=, $6=, $pop46
	i32.sub 	$push1=, $pop0, $pop45
	i32.const	$push44=, 24
	i32.div_s	$push43=, $pop1, $pop44
	tee_local	$push42=, $4=, $pop43
	i32.const	$push2=, 1
	i32.add 	$push41=, $pop42, $pop2
	tee_local	$push40=, $5=, $pop41
	i32.const	$push3=, 178956971
	i32.ge_u	$push4=, $pop40, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 178956970
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $6
	i32.const	$push49=, 24
	i32.div_s	$push48=, $pop6, $pop49
	tee_local	$push47=, $6=, $pop48
	i32.const	$push7=, 89478484
	i32.gt_u	$push8=, $pop47, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push53=, $6, $pop9
	tee_local	$push52=, $7=, $pop53
	i32.lt_u	$push10=, $7, $5
	i32.select	$push51=, $5, $pop52, $pop10
	tee_local	$push50=, $7=, $pop51
	i32.eqz 	$push79=, $pop50
	br_if   	1, $pop79
.LBB39_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB39_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB39_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB39_6:
	end_block
	i32.load	$5=, 0($1)
	i32.const	$push62=, 0
	i32.store	0($1), $pop62
	i32.const	$push13=, 24
	i32.mul 	$push14=, $4, $pop13
	i32.add 	$push61=, $6, $pop14
	tee_local	$push60=, $1=, $pop61
	i32.store	0($pop60), $5
	i64.load	$push15=, 0($2)
	i64.store	8($1), $pop15
	i32.load	$push16=, 0($3)
	i32.store	16($1), $pop16
	i32.const	$push59=, 24
	i32.mul 	$push17=, $7, $pop59
	i32.add 	$4=, $6, $pop17
	i32.const	$push58=, 24
	i32.add 	$5=, $1, $pop58
	block   	
	block   	
	i32.const	$push18=, 4
	i32.add 	$push19=, $0, $pop18
	i32.load	$push57=, 0($pop19)
	tee_local	$push56=, $6=, $pop57
	i32.load	$push55=, 0($0)
	tee_local	$push54=, $7=, $pop55
	i32.eq  	$push20=, $pop56, $pop54
	br_if   	0, $pop20
.LBB39_8:
	loop    	
	i32.const	$push74=, -24
	i32.add 	$push73=, $6, $pop74
	tee_local	$push72=, $2=, $pop73
	i32.load	$3=, 0($pop72)
	i32.const	$push71=, 0
	i32.store	0($2), $pop71
	i32.const	$push70=, -24
	i32.add 	$push21=, $1, $pop70
	i32.store	0($pop21), $3
	i32.const	$push69=, -8
	i32.add 	$push22=, $1, $pop69
	i32.const	$push68=, -8
	i32.add 	$push23=, $6, $pop68
	i32.load	$push24=, 0($pop23)
	i32.store	0($pop22), $pop24
	i32.const	$push67=, -12
	i32.add 	$push25=, $1, $pop67
	i32.const	$push66=, -12
	i32.add 	$push26=, $6, $pop66
	i32.load	$push27=, 0($pop26)
	i32.store	0($pop25), $pop27
	i32.const	$push65=, -16
	i32.add 	$push28=, $1, $pop65
	i32.const	$push64=, -16
	i32.add 	$push29=, $6, $pop64
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push63=, -24
	i32.add 	$1=, $1, $pop63
	copy_local	$6=, $2
	i32.ne  	$push31=, $7, $2
	br_if   	0, $pop31
	end_loop
	i32.const	$push32=, 4
	i32.add 	$push33=, $0, $pop32
	i32.load	$7=, 0($pop33)
	i32.load	$6=, 0($0)
	br      	1
.LBB39_10:
	end_block
	copy_local	$6=, $7
.LBB39_11:
	end_block
	i32.store	0($0), $1
	i32.const	$push34=, 4
	i32.add 	$push35=, $0, $pop34
	i32.store	0($pop35), $5
	i32.const	$push36=, 8
	i32.add 	$push37=, $0, $pop36
	i32.store	0($pop37), $4
	block   	
	i32.eq  	$push38=, $7, $6
	br_if   	0, $pop38
.LBB39_13:
	loop    	
	i32.const	$push78=, -24
	i32.add 	$push77=, $7, $pop78
	tee_local	$push76=, $7=, $pop77
	i32.load	$1=, 0($pop76)
	i32.const	$push75=, 0
	i32.store	0($7), $pop75
	block   	
	i32.eqz 	$push80=, $1
	br_if   	0, $pop80
	call    	_ZdlPv@FUNCTION, $1
.LBB39_15:
	end_block
	i32.ne  	$push39=, $6, $7
	br_if   	0, $pop39
.LBB39_16:
	end_loop
	end_block
	block   	
	i32.eqz 	$push81=, $6
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $6
.LBB39_18:
	end_block
	.endfunc
.Lfunc_end39:
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end39-_ZNSt3__16vectorIN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.section	.text._ZNK5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i64, i32, i32
	i32.const	$push51=, 0
	i32.load	$push52=, __stack_pointer($pop51)
	i32.const	$push53=, 48
	i32.sub 	$push72=, $pop52, $pop53
	tee_local	$push71=, $9=, $pop72
	copy_local	$8=, $pop71
	i32.const	$push54=, 0
	i32.store	__stack_pointer($pop54), $9
	block   	
	i32.const	$push0=, 28
	i32.add 	$push1=, $0, $pop0
	i32.load	$push70=, 0($pop1)
	tee_local	$push69=, $6=, $pop70
	i32.load	$push68=, 24($0)
	tee_local	$push67=, $2=, $pop68
	i32.eq  	$push2=, $pop69, $pop67
	br_if   	0, $pop2
	i32.const	$push3=, 0
	i32.sub 	$3=, $pop3, $2
	i32.const	$push73=, -24
	i32.add 	$5=, $6, $pop73
.LBB40_2:
	loop    	
	i32.const	$push74=, 16
	i32.add 	$push4=, $5, $pop74
	i32.load	$push5=, 0($pop4)
	i32.eq  	$push6=, $pop5, $1
	br_if   	1, $pop6
	copy_local	$6=, $5
	i32.const	$push78=, -24
	i32.add 	$push77=, $5, $pop78
	tee_local	$push76=, $4=, $pop77
	copy_local	$5=, $pop76
	i32.add 	$push7=, $4, $3
	i32.const	$push75=, -24
	i32.ne  	$push8=, $pop7, $pop75
	br_if   	0, $pop8
.LBB40_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push9=, $6, $2
	br_if   	0, $pop9
	i32.const	$push10=, -24
	i32.add 	$push11=, $6, $pop10
	i32.load	$4=, 0($pop11)
	br      	1
.LBB40_6:
	end_block
	i32.const	$push12=, 0
	i32.const	$push81=, 0
	i32.call	$push80=, db_get_i64@FUNCTION, $1, $pop12, $pop81
	tee_local	$push79=, $5=, $pop80
	i32.const	$push13=, 31
	i32.shr_u	$push14=, $pop79, $pop13
	i32.const	$push15=, 1
	i32.xor 	$push16=, $pop14, $pop15
	i32.const	$push17=, .L.str.51
	call    	eosio_assert@FUNCTION, $pop16, $pop17
	block   	
	block   	
	i32.const	$push18=, 513
	i32.lt_u	$push19=, $5, $pop18
	br_if   	0, $pop19
	i32.call	$4=, malloc@FUNCTION, $5
	br      	1
.LBB40_8:
	end_block
	i32.const	$push50=, 0
	i32.const	$push20=, 15
	i32.add 	$push21=, $5, $pop20
	i32.const	$push22=, -16
	i32.and 	$push23=, $pop21, $pop22
	i32.sub 	$push83=, $9, $pop23
	tee_local	$push82=, $4=, $pop83
	copy_local	$push66=, $pop82
	i32.store	__stack_pointer($pop50), $pop66
.LBB40_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $5
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push24=, $4, $5
	i32.store	40($8), $pop24
	block   	
	i32.const	$push25=, 513
	i32.lt_u	$push26=, $5, $pop25
	br_if   	0, $pop26
	call    	free@FUNCTION, $4
.LBB40_11:
	end_block
	i32.const	$push88=, 24
	i32.add 	$3=, $0, $pop88
	i32.const	$push27=, 56
	i32.call	$push87=, _Znwj@FUNCTION, $pop27
	tee_local	$push86=, $4=, $pop87
	i64.const	$push28=, 1398362884
	i64.store	32($pop86), $pop28
	i64.const	$push85=, 0
	i64.store	24($4), $pop85
	i32.const	$push84=, 1
	i32.const	$push29=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop84, $pop29
	i64.const	$7=, 5462355
	i32.const	$5=, 0
.LBB40_12:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push30=, $7
	i32.const	$push91=, 24
	i32.shl 	$push31=, $pop30, $pop91
	i32.const	$push90=, -1073741825
	i32.add 	$push32=, $pop31, $pop90
	i32.const	$push89=, 452984830
	i32.gt_u	$push33=, $pop32, $pop89
	br_if   	1, $pop33
	block   	
	i64.const	$push96=, 8
	i64.shr_u	$push95=, $7, $pop96
	tee_local	$push94=, $7=, $pop95
	i64.const	$push93=, 255
	i64.and 	$push34=, $pop94, $pop93
	i64.const	$push92=, 0
	i64.ne  	$push35=, $pop34, $pop92
	br_if   	0, $pop35
.LBB40_14:
	loop    	
	i64.const	$push101=, 8
	i64.shr_u	$push100=, $7, $pop101
	tee_local	$push99=, $7=, $pop100
	i64.const	$push98=, 255
	i64.and 	$push36=, $pop99, $pop98
	i64.const	$push97=, 0
	i64.ne  	$push37=, $pop36, $pop97
	br_if   	3, $pop37
	i32.const	$push105=, 1
	i32.add 	$push104=, $5, $pop105
	tee_local	$push103=, $5=, $pop104
	i32.const	$push102=, 7
	i32.lt_s	$push38=, $pop103, $pop102
	br_if   	0, $pop38
.LBB40_16:
	end_loop
	end_block
	i32.const	$6=, 1
	i32.const	$push109=, 1
	i32.add 	$push108=, $5, $pop109
	tee_local	$push107=, $5=, $pop108
	i32.const	$push106=, 7
	i32.lt_s	$push39=, $pop107, $pop106
	br_if   	0, $pop39
	br      	2
.LBB40_17:
	end_loop
	end_block
	i32.const	$6=, 0
.LBB40_18:
	end_block
	i32.const	$push40=, .L.str
	call    	eosio_assert@FUNCTION, $6, $pop40
	i32.store	44($4), $0
	i32.const	$push58=, 32
	i32.add 	$push59=, $8, $pop58
	i32.call	$drop=, _ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_12staked_horusE@FUNCTION, $pop59, $4
	i32.store	48($4), $1
	i32.store	24($8), $4
	i64.load	$push117=, 0($4)
	tee_local	$push116=, $7=, $pop117
	i64.store	16($8), $pop116
	i32.load	$push115=, 48($4)
	tee_local	$push114=, $6=, $pop115
	i32.store	12($8), $pop114
	block   	
	block   	
	i32.const	$push44=, 28
	i32.add 	$push113=, $0, $pop44
	tee_local	$push112=, $1=, $pop113
	i32.load	$push111=, 0($pop112)
	tee_local	$push110=, $5=, $pop111
	i32.const	$push41=, 32
	i32.add 	$push42=, $0, $pop41
	i32.load	$push43=, 0($pop42)
	i32.ge_u	$push45=, $pop110, $pop43
	br_if   	0, $pop45
	i64.store	8($5), $7
	i32.store	16($5), $6
	i32.const	$push46=, 0
	i32.store	24($8), $pop46
	i32.store	0($5), $4
	i32.const	$push47=, 24
	i32.add 	$push48=, $5, $pop47
	i32.store	0($1), $pop48
	br      	1
.LBB40_20:
	end_block
	i32.const	$push60=, 24
	i32.add 	$push61=, $8, $pop60
	i32.const	$push62=, 16
	i32.add 	$push63=, $8, $pop62
	i32.const	$push64=, 12
	i32.add 	$push65=, $8, $pop64
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $3, $pop61, $pop63, $pop65
.LBB40_21:
	end_block
	i32.load	$5=, 24($8)
	i32.const	$push49=, 0
	i32.store	24($8), $pop49
	i32.eqz 	$push118=, $5
	br_if   	0, $pop118
	call    	_ZdlPv@FUNCTION, $5
.LBB40_23:
	end_block
	i32.const	$push57=, 0
	i32.const	$push55=, 48
	i32.add 	$push56=, $8, $pop55
	i32.store	__stack_pointer($pop57), $pop56
	copy_local	$push119=, $4
	.endfunc
.Lfunc_end40:
	.size	_ZNK5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE31load_object_by_primary_iteratorEl, .Lfunc_end40-_ZNK5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE14const_iteratormmEv,"axG",@progbits,_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE14const_iteratormmEv,comdat
	.hidden	_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE14const_iteratormmEv
	.weak	_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE14const_iteratormmEv
	.type	_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE14const_iteratormmEv,@function
_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE14const_iteratormmEv:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	i32.const	$push23=, 0
	i32.const	$push20=, 0
	i32.load	$push21=, __stack_pointer($pop20)
	i32.const	$push22=, 16
	i32.sub 	$push34=, $pop21, $pop22
	tee_local	$push33=, $2=, $pop34
	i32.store	__stack_pointer($pop23), $pop33
	block   	
	block   	
	i32.load	$push32=, 4($0)
	tee_local	$push31=, $1=, $pop32
	i32.eqz 	$push44=, $pop31
	br_if   	0, $pop44
	i32.load	$push0=, 48($1)
	i32.const	$push29=, 8
	i32.add 	$push30=, $2, $pop29
	i32.call	$push36=, db_previous_i64@FUNCTION, $pop0, $pop30
	tee_local	$push35=, $1=, $pop36
	i32.const	$push1=, 31
	i32.shr_u	$push2=, $pop35, $pop1
	i32.const	$push3=, 1
	i32.xor 	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.54
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	br      	1
.LBB41_2:
	end_block
	i32.load	$push43=, 0($0)
	tee_local	$push42=, $1=, $pop43
	i64.load	$push7=, 0($pop42)
	i64.load	$push6=, 8($1)
	i64.const	$push8=, -4157661221488775168
	i32.call	$push41=, db_end_i64@FUNCTION, $pop7, $pop6, $pop8
	tee_local	$push40=, $1=, $pop41
	i32.const	$push9=, -1
	i32.ne  	$push10=, $pop40, $pop9
	i32.const	$push11=, .L.str.53
	call    	eosio_assert@FUNCTION, $pop10, $pop11
	i32.const	$push27=, 8
	i32.add 	$push28=, $2, $pop27
	i32.call	$push39=, db_previous_i64@FUNCTION, $1, $pop28
	tee_local	$push38=, $1=, $pop39
	i32.const	$push12=, 31
	i32.shr_u	$push13=, $pop38, $pop12
	i32.const	$push14=, 1
	i32.xor 	$push15=, $pop13, $pop14
	i32.const	$push37=, .L.str.53
	call    	eosio_assert@FUNCTION, $pop15, $pop37
.LBB41_3:
	end_block
	i32.const	$push16=, 4
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($0)
	i32.call	$push19=, _ZNK5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop18, $1
	i32.store	0($pop17), $pop19
	i32.const	$push26=, 0
	i32.const	$push24=, 16
	i32.add 	$push25=, $2, $pop24
	i32.store	__stack_pointer($pop26), $pop25
	copy_local	$push45=, $0
	.endfunc
.Lfunc_end41:
	.size	_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE14const_iteratormmEv, .Lfunc_end41-_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE14const_iteratormmEv

	.section	.text._ZN13horuspaytokenlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_12staked_horusE,"axG",@progbits,_ZN13horuspaytokenlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_12staked_horusE,comdat
	.hidden	_ZN13horuspaytokenlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_12staked_horusE
	.weak	_ZN13horuspaytokenlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_12staked_horusE
	.type	_ZN13horuspaytokenlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_12staked_horusE,@function
_ZN13horuspaytokenlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_12staked_horusE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop6, $1, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push75=, 8
	i32.add 	$push74=, $pop8, $pop75
	tee_local	$push73=, $2=, $pop74
	i32.store	4($0), $pop73
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push72=, 7
	i32.gt_s	$push11=, $pop10, $pop72
	i32.const	$push71=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop11, $pop71
	i32.load	$push13=, 4($0)
	i32.const	$push70=, 8
	i32.add 	$push12=, $1, $pop70
	i32.const	$push69=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop12, $pop69
	i32.load	$push14=, 4($0)
	i32.const	$push68=, 8
	i32.add 	$push67=, $pop14, $pop68
	tee_local	$push66=, $2=, $pop67
	i32.store	4($0), $pop66
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push65=, 7
	i32.gt_s	$push17=, $pop16, $pop65
	i32.const	$push64=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop17, $pop64
	i32.load	$push20=, 4($0)
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.const	$push63=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop20, $pop19, $pop63
	i32.load	$push21=, 4($0)
	i32.const	$push62=, 8
	i32.add 	$push61=, $pop21, $pop62
	tee_local	$push60=, $2=, $pop61
	i32.store	4($0), $pop60
	i32.load	$push22=, 8($0)
	i32.sub 	$push23=, $pop22, $2
	i32.const	$push59=, 7
	i32.gt_s	$push24=, $pop23, $pop59
	i32.const	$push58=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop24, $pop58
	i32.load	$push27=, 4($0)
	i32.const	$push25=, 24
	i32.add 	$push26=, $1, $pop25
	i32.const	$push57=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop26, $pop57
	i32.load	$push28=, 4($0)
	i32.const	$push56=, 8
	i32.add 	$push55=, $pop28, $pop56
	tee_local	$push54=, $2=, $pop55
	i32.store	4($0), $pop54
	i32.load	$push29=, 8($0)
	i32.sub 	$push30=, $pop29, $2
	i32.const	$push53=, 7
	i32.gt_s	$push31=, $pop30, $pop53
	i32.const	$push52=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop31, $pop52
	i32.load	$push34=, 4($0)
	i32.const	$push32=, 32
	i32.add 	$push33=, $1, $pop32
	i32.const	$push51=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop34, $pop33, $pop51
	i32.load	$push35=, 4($0)
	i32.const	$push50=, 8
	i32.add 	$push49=, $pop35, $pop50
	tee_local	$push48=, $2=, $pop49
	i32.store	4($0), $pop48
	i32.load	$push36=, 8($0)
	i32.sub 	$push37=, $pop36, $2
	i32.const	$push38=, 3
	i32.gt_s	$push39=, $pop37, $pop38
	i32.const	$push47=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop39, $pop47
	i32.load	$push42=, 4($0)
	i32.const	$push40=, 40
	i32.add 	$push41=, $1, $pop40
	i32.const	$push43=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop42, $pop41, $pop43
	i32.load	$push44=, 4($0)
	i32.const	$push46=, 4
	i32.add 	$push45=, $pop44, $pop46
	i32.store	4($0), $pop45
	copy_local	$push76=, $0
	.endfunc
.Lfunc_end42:
	.size	_ZN13horuspaytokenlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_12staked_horusE, .Lfunc_end42-_ZN13horuspaytokenlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_12staked_horusE

	.section	.text._ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_12staked_horusE,"axG",@progbits,_ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_12staked_horusE,comdat
	.hidden	_ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_12staked_horusE
	.weak	_ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_12staked_horusE
	.type	_ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_12staked_horusE,@function
_ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_12staked_horusE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push75=, 8
	i32.add 	$push74=, $pop8, $pop75
	tee_local	$push73=, $2=, $pop74
	i32.store	4($0), $pop73
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push72=, 7
	i32.gt_u	$push11=, $pop10, $pop72
	i32.const	$push71=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop11, $pop71
	i32.const	$push70=, 8
	i32.add 	$push12=, $1, $pop70
	i32.load	$push13=, 4($0)
	i32.const	$push69=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop12, $pop13, $pop69
	i32.load	$push14=, 4($0)
	i32.const	$push68=, 8
	i32.add 	$push67=, $pop14, $pop68
	tee_local	$push66=, $2=, $pop67
	i32.store	4($0), $pop66
	i32.load	$push15=, 8($0)
	i32.sub 	$push16=, $pop15, $2
	i32.const	$push65=, 7
	i32.gt_u	$push17=, $pop16, $pop65
	i32.const	$push64=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop17, $pop64
	i32.const	$push18=, 16
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 4($0)
	i32.const	$push63=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop19, $pop20, $pop63
	i32.load	$push21=, 4($0)
	i32.const	$push62=, 8
	i32.add 	$push61=, $pop21, $pop62
	tee_local	$push60=, $2=, $pop61
	i32.store	4($0), $pop60
	i32.load	$push22=, 8($0)
	i32.sub 	$push23=, $pop22, $2
	i32.const	$push59=, 7
	i32.gt_u	$push24=, $pop23, $pop59
	i32.const	$push58=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop24, $pop58
	i32.const	$push25=, 24
	i32.add 	$push26=, $1, $pop25
	i32.load	$push27=, 4($0)
	i32.const	$push57=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop27, $pop57
	i32.load	$push28=, 4($0)
	i32.const	$push56=, 8
	i32.add 	$push55=, $pop28, $pop56
	tee_local	$push54=, $2=, $pop55
	i32.store	4($0), $pop54
	i32.load	$push29=, 8($0)
	i32.sub 	$push30=, $pop29, $2
	i32.const	$push53=, 7
	i32.gt_u	$push31=, $pop30, $pop53
	i32.const	$push52=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop31, $pop52
	i32.const	$push32=, 32
	i32.add 	$push33=, $1, $pop32
	i32.load	$push34=, 4($0)
	i32.const	$push51=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop33, $pop34, $pop51
	i32.load	$push35=, 4($0)
	i32.const	$push50=, 8
	i32.add 	$push49=, $pop35, $pop50
	tee_local	$push48=, $2=, $pop49
	i32.store	4($0), $pop48
	i32.load	$push36=, 8($0)
	i32.sub 	$push37=, $pop36, $2
	i32.const	$push38=, 3
	i32.gt_u	$push39=, $pop37, $pop38
	i32.const	$push47=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop39, $pop47
	i32.const	$push40=, 40
	i32.add 	$push41=, $1, $pop40
	i32.load	$push42=, 4($0)
	i32.const	$push43=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop41, $pop42, $pop43
	i32.load	$push44=, 4($0)
	i32.const	$push46=, 4
	i32.add 	$push45=, $pop44, $pop46
	i32.store	4($0), $pop45
	copy_local	$push76=, $0
	.endfunc
.Lfunc_end43:
	.size	_ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_12staked_horusE, .Lfunc_end43-_ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_12staked_horusE

	.section	.text._ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_,"axG",@progbits,_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_,comdat
	.hidden	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_
	.weak	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_
	.type	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_,@function
_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i64, i32, i32
	i64.const	$push44=, 0
	i64.store	8($0), $pop44
	i32.const	$push0=, 16
	i32.add 	$push43=, $0, $pop0
	tee_local	$push42=, $4=, $pop43
	i64.const	$push1=, 1398362884
	i64.store	0($pop42), $pop1
	i32.const	$push41=, 1
	i32.const	$push2=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop41, $pop2
	i64.load	$push3=, 0($4)
	i64.const	$push40=, 8
	i64.shr_u	$3=, $pop3, $pop40
	i32.const	$4=, 0
.LBB44_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push4=, $3
	i32.const	$push47=, 24
	i32.shl 	$push5=, $pop4, $pop47
	i32.const	$push46=, -1073741825
	i32.add 	$push6=, $pop5, $pop46
	i32.const	$push45=, 452984830
	i32.gt_u	$push7=, $pop6, $pop45
	br_if   	1, $pop7
	block   	
	i64.const	$push52=, 8
	i64.shr_u	$push51=, $3, $pop52
	tee_local	$push50=, $3=, $pop51
	i64.const	$push49=, 255
	i64.and 	$push8=, $pop50, $pop49
	i64.const	$push48=, 0
	i64.ne  	$push9=, $pop8, $pop48
	br_if   	0, $pop9
.LBB44_3:
	loop    	
	i64.const	$push57=, 8
	i64.shr_u	$push56=, $3, $pop57
	tee_local	$push55=, $3=, $pop56
	i64.const	$push54=, 255
	i64.and 	$push10=, $pop55, $pop54
	i64.const	$push53=, 0
	i64.ne  	$push11=, $pop10, $pop53
	br_if   	3, $pop11
	i32.const	$push61=, 1
	i32.add 	$push60=, $4, $pop61
	tee_local	$push59=, $4=, $pop60
	i32.const	$push58=, 7
	i32.lt_s	$push12=, $pop59, $pop58
	br_if   	0, $pop12
.LBB44_5:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push65=, 1
	i32.add 	$push64=, $4, $pop65
	tee_local	$push63=, $4=, $pop64
	i32.const	$push62=, 7
	i32.lt_s	$push13=, $pop63, $pop62
	br_if   	0, $pop13
	br      	2
.LBB44_6:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB44_7:
	end_block
	i32.const	$push14=, .L.str
	call    	eosio_assert@FUNCTION, $5, $pop14
	i32.store	24($0), $1
	i32.load	$push81=, 4($2)
	tee_local	$push80=, $4=, $pop81
	i32.load	$push16=, 8($pop80)
	i32.load	$push15=, 4($4)
	i32.sub 	$push17=, $pop16, $pop15
	i32.const	$push18=, 7
	i32.gt_u	$push19=, $pop17, $pop18
	i32.const	$push20=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop19, $pop20
	i32.load	$push21=, 4($4)
	i32.const	$push22=, 8
	i32.call	$drop=, memcpy@FUNCTION, $0, $pop21, $pop22
	i32.load	$push23=, 4($4)
	i32.const	$push79=, 8
	i32.add 	$push78=, $pop23, $pop79
	tee_local	$push77=, $5=, $pop78
	i32.store	4($4), $pop77
	i32.load	$push24=, 8($4)
	i32.sub 	$push25=, $pop24, $5
	i32.const	$push76=, 7
	i32.gt_u	$push26=, $pop25, $pop76
	i32.const	$push75=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop26, $pop75
	i32.const	$push74=, 8
	i32.add 	$push27=, $0, $pop74
	i32.load	$push28=, 4($4)
	i32.const	$push73=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop28, $pop73
	i32.load	$push29=, 4($4)
	i32.const	$push72=, 8
	i32.add 	$push71=, $pop29, $pop72
	tee_local	$push70=, $5=, $pop71
	i32.store	4($4), $pop70
	i32.load	$push30=, 8($4)
	i32.sub 	$push31=, $pop30, $5
	i32.const	$push69=, 7
	i32.gt_u	$push32=, $pop31, $pop69
	i32.const	$push68=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop32, $pop68
	i32.const	$push33=, 16
	i32.add 	$push34=, $0, $pop33
	i32.load	$push35=, 4($4)
	i32.const	$push67=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop34, $pop35, $pop67
	i32.load	$push36=, 4($4)
	i32.const	$push66=, 8
	i32.add 	$push37=, $pop36, $pop66
	i32.store	4($4), $pop37
	i32.load	$push38=, 8($2)
	i32.load	$push39=, 0($pop38)
	i32.store	28($0), $pop39
	copy_local	$push82=, $0
	.endfunc
.Lfunc_end44:
	.size	_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_, .Lfunc_end44-_ZN5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE4itemC2IZNKS3_31load_object_by_primary_iteratorElEUlRT_E_EEPKS3_OS6_

	.text
	.hidden	_ZN13horuspaytoken12horustokenio12unstakehorusEyy
	.globl	_ZN13horuspaytoken12horustokenio12unstakehorusEyy
	.type	_ZN13horuspaytoken12horustokenio12unstakehorusEyy,@function
_ZN13horuspaytoken12horustokenio12unstakehorusEyy:
	.param  	i32, i64, i64
	.local  	i32, i64, i32, i32, i32
	i32.const	$push25=, 0
	i32.const	$push22=, 0
	i32.load	$push23=, __stack_pointer($pop22)
	i32.const	$push24=, 64
	i32.sub 	$push50=, $pop23, $pop24
	tee_local	$push49=, $7=, $pop50
	i32.store	__stack_pointer($pop25), $pop49
	i64.store	56($7), $1
	call    	require_auth@FUNCTION, $1
	i32.const	$push29=, 16
	i32.add 	$push30=, $7, $pop29
	i32.const	$push48=, 32
	i32.add 	$push0=, $pop30, $pop48
	i32.const	$push47=, 0
	i32.store	0($pop0), $pop47
	i64.store	24($7), $1
	i64.const	$push1=, -1
	i64.store	32($7), $pop1
	i64.const	$push46=, 0
	i64.store	40($7), $pop46
	i64.load	$push45=, 0($0)
	tee_local	$push44=, $4=, $pop45
	i64.store	16($7), $pop44
	i32.const	$6=, 0
	block   	
	i64.const	$push2=, -4157661221488775168
	i32.call	$push43=, db_find_i64@FUNCTION, $4, $1, $pop2, $2
	tee_local	$push42=, $3=, $pop43
	i32.const	$push41=, 0
	i32.lt_s	$push3=, $pop42, $pop41
	br_if   	0, $pop3
	i32.const	$push37=, 16
	i32.add 	$push38=, $7, $pop37
	i32.call	$push52=, _ZNK5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop38, $3
	tee_local	$push51=, $6=, $pop52
	i32.load	$push4=, 44($pop51)
	i32.const	$push39=, 16
	i32.add 	$push40=, $7, $pop39
	i32.eq  	$push5=, $pop4, $pop40
	i32.const	$push6=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop5, $pop6
.LBB45_2:
	end_block
	i32.const	$push62=, 0
	i32.ne  	$push61=, $6, $pop62
	tee_local	$push60=, $3=, $pop61
	i32.const	$push7=, .L.str.24
	call    	eosio_assert@FUNCTION, $pop60, $pop7
	i64.load	$1=, 16($6)
	i32.const	$push10=, 8
	i32.add 	$push11=, $7, $pop10
	i32.const	$push59=, 32
	i32.add 	$push8=, $6, $pop59
	i64.load	$push9=, 0($pop8)
	i64.store	0($pop11), $pop9
	i64.load	$push58=, 24($6)
	tee_local	$push57=, $2=, $pop58
	i64.store	0($7), $pop57
	i64.const	$push56=, 0
	i64.sub 	$push12=, $pop56, $2
	i64.store	0($7), $pop12
	i32.const	$push31=, 56
	i32.add 	$push32=, $7, $pop31
	call    	_ZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetE@FUNCTION, $0, $pop32, $1, $7
	i32.const	$push13=, .L.str.65
	call    	eosio_assert@FUNCTION, $3, $pop13
	i32.const	$push14=, .L.str.66
	call    	eosio_assert@FUNCTION, $3, $pop14
	block   	
	i32.load	$push15=, 48($6)
	i32.call	$push55=, db_next_i64@FUNCTION, $pop15, $7
	tee_local	$push54=, $0=, $pop55
	i32.const	$push53=, 0
	i32.lt_s	$push16=, $pop54, $pop53
	br_if   	0, $pop16
	i32.const	$push35=, 16
	i32.add 	$push36=, $7, $pop35
	i32.call	$drop=, _ZNK5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop36, $0
.LBB45_4:
	end_block
	i32.const	$push33=, 16
	i32.add 	$push34=, $7, $pop33
	call    	_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE5eraseERKS2_@FUNCTION, $pop34, $6
	block   	
	i32.load	$push64=, 40($7)
	tee_local	$push63=, $3=, $pop64
	i32.eqz 	$push73=, $pop63
	br_if   	0, $pop73
	block   	
	block   	
	i32.const	$push17=, 44
	i32.add 	$push68=, $7, $pop17
	tee_local	$push67=, $5=, $pop68
	i32.load	$push66=, 0($pop67)
	tee_local	$push65=, $6=, $pop66
	i32.eq  	$push18=, $pop65, $3
	br_if   	0, $pop18
.LBB45_7:
	loop    	
	i32.const	$push72=, -24
	i32.add 	$push71=, $6, $pop72
	tee_local	$push70=, $6=, $pop71
	i32.load	$0=, 0($pop70)
	i32.const	$push69=, 0
	i32.store	0($6), $pop69
	block   	
	i32.eqz 	$push74=, $0
	br_if   	0, $pop74
	call    	_ZdlPv@FUNCTION, $0
.LBB45_9:
	end_block
	i32.ne  	$push19=, $3, $6
	br_if   	0, $pop19
	end_loop
	i32.const	$push20=, 40
	i32.add 	$push21=, $7, $pop20
	i32.load	$6=, 0($pop21)
	br      	1
.LBB45_11:
	end_block
	copy_local	$6=, $3
.LBB45_12:
	end_block
	i32.store	0($5), $3
	call    	_ZdlPv@FUNCTION, $6
.LBB45_13:
	end_block
	i32.const	$push28=, 0
	i32.const	$push26=, 64
	i32.add 	$push27=, $7, $pop26
	i32.store	__stack_pointer($pop28), $pop27
	.endfunc
.Lfunc_end45:
	.size	_ZN13horuspaytoken12horustokenio12unstakehorusEyy, .Lfunc_end45-_ZN13horuspaytoken12horustokenio12unstakehorusEyy

	.section	.text._ZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetE,"axG",@progbits,_ZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetE,comdat
	.hidden	_ZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetE
	.weak	_ZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetE
	.type	_ZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetE,@function
_ZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetE:
	.param  	i32, i32, i64, i32
	.local  	i64, i32, i64, i64, i64, i32, i32
	i32.const	$push155=, 0
	i32.const	$push152=, 0
	i32.load	$push153=, __stack_pointer($pop152)
	i32.const	$push154=, 160
	i32.sub 	$push204=, $pop153, $pop154
	tee_local	$push203=, $10=, $pop204
	i32.store	__stack_pointer($pop155), $pop203
	i64.const	$push0=, -1
	i64.store	120($10), $pop0
	i32.const	$5=, 0
	i32.const	$push202=, 0
	i32.store	128($10), $pop202
	i64.load	$push201=, 0($0)
	tee_local	$push200=, $6=, $pop201
	i64.store	104($10), $pop200
	i64.load	$push199=, 0($1)
	tee_local	$push198=, $7=, $pop199
	i64.store	112($10), $pop198
	i32.const	$push1=, 132
	i32.add 	$push2=, $10, $pop1
	i32.const	$push197=, 0
	i32.store	0($pop2), $pop197
	i32.const	$push3=, 136
	i32.add 	$push4=, $10, $pop3
	i32.const	$push196=, 0
	i32.store	0($pop4), $pop196
	block   	
	i64.const	$push5=, -5001342326447013888
	i32.call	$push195=, db_find_i64@FUNCTION, $6, $7, $pop5, $7
	tee_local	$push194=, $9=, $pop195
	i32.const	$push193=, 0
	i32.lt_s	$push6=, $pop194, $pop193
	br_if   	0, $pop6
	i32.const	$push189=, 104
	i32.add 	$push190=, $10, $pop189
	i32.call	$push206=, _ZNK5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop190, $9
	tee_local	$push205=, $5=, $pop206
	i32.load	$push7=, 32($pop205)
	i32.const	$push191=, 104
	i32.add 	$push192=, $10, $pop191
	i32.eq  	$push8=, $pop7, $pop192
	i32.const	$push9=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop8, $pop9
.LBB46_2:
	end_block
	i32.const	$push159=, 88
	i32.add 	$push160=, $10, $pop159
	i32.const	$push10=, 8
	i32.add 	$push13=, $pop160, $pop10
	i32.const	$push207=, 8
	i32.add 	$push11=, $3, $pop207
	i64.load	$push12=, 0($pop11)
	i64.store	0($pop13), $pop12
	i64.load	$push14=, 0($3)
	i64.store	88($10), $pop14
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.load	$push15=, 0($1)
	i64.eq  	$push16=, $pop15, $2
	br_if   	0, $pop16
	i64.load	$push18=, 88($10)
	i64.const	$push17=, -1
	i64.gt_s	$push19=, $pop18, $pop17
	br_if   	1, $pop19
.LBB46_4:
	end_block
	block   	
	i32.eqz 	$push361=, $5
	br_if   	0, $pop361
	i32.const	$push20=, .L.str.70
	call    	prints@FUNCTION, $pop20
	i32.const	$push177=, 88
	i32.add 	$push178=, $10, $pop177
	i32.store	16($10), $pop178
	i32.const	$push210=, 1
	i32.const	$push21=, .L.str.58
	call    	eosio_assert@FUNCTION, $pop210, $pop21
	i32.const	$push179=, 104
	i32.add 	$push180=, $10, $pop179
	i64.const	$push209=, 0
	i32.const	$push181=, 16
	i32.add 	$push182=, $10, $pop181
	call    	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE6modifyIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E_EEvRKS2_yOT_@FUNCTION, $pop180, $5, $pop209, $pop182
	i32.const	$push208=, 1
	i32.const	$push22=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop208, $pop22
	i64.const	$7=, 357913743176
	i32.const	$3=, 0
.LBB46_6:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push23=, $7
	i32.const	$push213=, 24
	i32.shl 	$push24=, $pop23, $pop213
	i32.const	$push212=, -1073741825
	i32.add 	$push25=, $pop24, $pop212
	i32.const	$push211=, 452984830
	i32.gt_u	$push26=, $pop25, $pop211
	br_if   	1, $pop26
	block   	
	i64.const	$push218=, 8
	i64.shr_u	$push217=, $7, $pop218
	tee_local	$push216=, $7=, $pop217
	i64.const	$push215=, 255
	i64.and 	$push27=, $pop216, $pop215
	i64.const	$push214=, 0
	i64.ne  	$push28=, $pop27, $pop214
	br_if   	0, $pop28
.LBB46_8:
	loop    	
	i64.const	$push223=, 8
	i64.shr_u	$push222=, $7, $pop223
	tee_local	$push221=, $7=, $pop222
	i64.const	$push220=, 255
	i64.and 	$push29=, $pop221, $pop220
	i64.const	$push219=, 0
	i64.ne  	$push30=, $pop29, $pop219
	br_if   	3, $pop30
	i32.const	$push227=, 1
	i32.add 	$push226=, $3, $pop227
	tee_local	$push225=, $3=, $pop226
	i32.const	$push224=, 7
	i32.lt_s	$push31=, $pop225, $pop224
	br_if   	0, $pop31
.LBB46_10:
	end_loop
	end_block
	i32.const	$9=, 1
	i32.const	$push231=, 1
	i32.add 	$push230=, $3, $pop231
	tee_local	$push229=, $3=, $pop230
	i32.const	$push228=, 7
	i32.lt_s	$push32=, $pop229, $pop228
	br_if   	0, $pop32
	br      	2
.LBB46_11:
	end_loop
	end_block
	i32.const	$9=, 0
.LBB46_12:
	end_block
	i32.const	$push33=, .L.str
	call    	eosio_assert@FUNCTION, $9, $pop33
	i64.const	$push235=, 91625918253060
	i32.const	$push234=, 24
	i32.add 	$push34=, $5, $pop234
	i64.load	$push35=, 0($pop34)
	i64.eq  	$push36=, $pop235, $pop35
	i32.const	$push37=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop36, $pop37
	i64.load	$push38=, 16($5)
	i64.const	$push39=, 63
	i64.shr_u	$push40=, $pop38, $pop39
	i32.wrap/i64	$push41=, $pop40
	i32.const	$push233=, 1
	i32.xor 	$push42=, $pop41, $pop233
	i32.const	$push43=, .L.str.71
	call    	eosio_assert@FUNCTION, $pop42, $pop43
	i32.const	$push232=, 1
	i32.const	$push44=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop232, $pop44
	i64.const	$7=, 357913743176
	i32.const	$3=, 0
.LBB46_13:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push45=, $7
	i32.const	$push238=, 24
	i32.shl 	$push46=, $pop45, $pop238
	i32.const	$push237=, -1073741825
	i32.add 	$push47=, $pop46, $pop237
	i32.const	$push236=, 452984830
	i32.gt_u	$push48=, $pop47, $pop236
	br_if   	1, $pop48
	block   	
	i64.const	$push243=, 8
	i64.shr_u	$push242=, $7, $pop243
	tee_local	$push241=, $7=, $pop242
	i64.const	$push240=, 255
	i64.and 	$push49=, $pop241, $pop240
	i64.const	$push239=, 0
	i64.ne  	$push50=, $pop49, $pop239
	br_if   	0, $pop50
.LBB46_15:
	loop    	
	i64.const	$push248=, 8
	i64.shr_u	$push247=, $7, $pop248
	tee_local	$push246=, $7=, $pop247
	i64.const	$push245=, 255
	i64.and 	$push51=, $pop246, $pop245
	i64.const	$push244=, 0
	i64.ne  	$push52=, $pop51, $pop244
	br_if   	3, $pop52
	i32.const	$push252=, 1
	i32.add 	$push251=, $3, $pop252
	tee_local	$push250=, $3=, $pop251
	i32.const	$push249=, 7
	i32.lt_s	$push53=, $pop250, $pop249
	br_if   	0, $pop53
.LBB46_17:
	end_loop
	end_block
	i32.const	$9=, 1
	i32.const	$push256=, 1
	i32.add 	$push255=, $3, $pop256
	tee_local	$push254=, $3=, $pop255
	i32.const	$push253=, 7
	i32.lt_s	$push54=, $pop254, $pop253
	br_if   	0, $pop54
	br      	2
.LBB46_18:
	end_loop
	end_block
	i32.const	$9=, 0
.LBB46_19:
	end_block
	i32.const	$push55=, .L.str
	call    	eosio_assert@FUNCTION, $9, $pop55
	i32.const	$push56=, 24
	i32.add 	$push57=, $5, $pop56
	i64.load	$push58=, 0($pop57)
	i64.const	$push257=, 91625918253060
	i64.eq  	$push59=, $pop58, $pop257
	i32.const	$push60=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop59, $pop60
	i32.const	$push61=, 16
	i32.add 	$push62=, $5, $pop61
	i64.load	$push63=, 0($pop62)
	i64.const	$push64=, 0
	i64.ne  	$push65=, $pop63, $pop64
	br_if   	3, $pop65
	i32.const	$push67=, 1
	i32.const	$push66=, .L.str.65
	call    	eosio_assert@FUNCTION, $pop67, $pop66
	i32.const	$push260=, 1
	i32.const	$push68=, .L.str.66
	call    	eosio_assert@FUNCTION, $pop260, $pop68
	block   	
	i32.load	$push69=, 36($5)
	i32.const	$push183=, 16
	i32.add 	$push184=, $10, $pop183
	i32.call	$push259=, db_next_i64@FUNCTION, $pop69, $pop184
	tee_local	$push258=, $3=, $pop259
	i32.const	$push70=, 0
	i32.lt_s	$push71=, $pop258, $pop70
	br_if   	0, $pop71
	i32.const	$push187=, 104
	i32.add 	$push188=, $10, $pop187
	i32.call	$drop=, _ZNK5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop188, $3
.LBB46_22:
	end_block
	i32.const	$push185=, 104
	i32.add 	$push186=, $10, $pop185
	call    	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE5eraseERKS2_@FUNCTION, $pop186, $5
	br      	1
.LBB46_23:
	end_block
	i32.const	$push261=, 1
	i32.const	$push72=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop261, $pop72
	i64.const	$7=, 357913743176
	i32.const	$3=, 0
.LBB46_24:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push73=, $7
	i32.const	$push264=, 24
	i32.shl 	$push74=, $pop73, $pop264
	i32.const	$push263=, -1073741825
	i32.add 	$push75=, $pop74, $pop263
	i32.const	$push262=, 452984830
	i32.gt_u	$push76=, $pop75, $pop262
	br_if   	1, $pop76
	block   	
	i64.const	$push269=, 8
	i64.shr_u	$push268=, $7, $pop269
	tee_local	$push267=, $7=, $pop268
	i64.const	$push266=, 255
	i64.and 	$push77=, $pop267, $pop266
	i64.const	$push265=, 0
	i64.ne  	$push78=, $pop77, $pop265
	br_if   	0, $pop78
.LBB46_26:
	loop    	
	i64.const	$push274=, 8
	i64.shr_u	$push273=, $7, $pop274
	tee_local	$push272=, $7=, $pop273
	i64.const	$push271=, 255
	i64.and 	$push79=, $pop272, $pop271
	i64.const	$push270=, 0
	i64.ne  	$push80=, $pop79, $pop270
	br_if   	3, $pop80
	i32.const	$push278=, 1
	i32.add 	$push277=, $3, $pop278
	tee_local	$push276=, $3=, $pop277
	i32.const	$push275=, 7
	i32.lt_s	$push81=, $pop276, $pop275
	br_if   	0, $pop81
.LBB46_28:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push282=, 1
	i32.add 	$push281=, $3, $pop282
	tee_local	$push280=, $3=, $pop281
	i32.const	$push279=, 7
	i32.lt_s	$push82=, $pop280, $pop279
	br_if   	0, $pop82
	br      	2
.LBB46_29:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB46_30:
	end_block
	i32.const	$push83=, .L.str
	call    	eosio_assert@FUNCTION, $5, $pop83
	i64.load	$push84=, 96($10)
	i64.const	$push283=, 91625918253060
	i64.eq  	$push85=, $pop84, $pop283
	i32.const	$push86=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop85, $pop86
	i64.load	$push88=, 88($10)
	i64.const	$push87=, -1
	i64.le_s	$push89=, $pop88, $pop87
	br_if   	1, $pop89
.LBB46_31:
	end_block
	i64.const	$push90=, 0
	i64.store	24($10), $pop90
	i64.load	$push91=, 0($1)
	i64.store	16($10), $pop91
	i32.const	$push175=, 16
	i32.add 	$push176=, $10, $pop175
	i32.call	$drop=, cancel_deferred@FUNCTION, $pop176
	i32.load	$push285=, 128($10)
	tee_local	$push284=, $1=, $pop285
	br_if   	2, $pop284
	br      	3
.LBB46_32:
	end_block
	i32.const	$push92=, .L.str.72
	call    	prints@FUNCTION, $pop92
	i64.load	$7=, 0($1)
	i32.store	16($10), $1
	i32.const	$push161=, 88
	i32.add 	$push162=, $10, $pop161
	i32.store	20($10), $pop162
	i32.const	$push163=, 104
	i32.add 	$push164=, $10, $pop163
	i32.const	$push165=, 16
	i32.add 	$push166=, $10, $pop165
	call    	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_@FUNCTION, $10, $pop164, $7, $pop166
.LBB46_33:
	end_block
	i32.const	$push93=, .L.str.73
	call    	prints@FUNCTION, $pop93
	i64.call	$7=, current_time@FUNCTION
	i32.const	$push94=, 44
	i32.add 	$push95=, $10, $pop94
	i32.const	$push297=, 0
	i32.store	0($pop95), $pop297
	i32.const	$push96=, 48
	i32.add 	$push97=, $10, $pop96
	i32.const	$push296=, 0
	i32.store	0($pop97), $pop296
	i32.const	$push295=, 0
	i32.store	28($10), $pop295
	i32.const	$push294=, 0
	i32.store8	32($10), $pop294
	i32.const	$push293=, 0
	i32.store	36($10), $pop293
	i32.const	$push292=, 0
	i32.store	40($10), $pop292
	i64.const	$push98=, 1000000
	i64.div_u	$push99=, $7, $pop98
	i32.wrap/i64	$push100=, $pop99
	i32.const	$push101=, 60
	i32.add 	$push102=, $pop100, $pop101
	i32.store	16($10), $pop102
	i32.const	$push291=, 0
	i32.store	52($10), $pop291
	i32.const	$push103=, 56
	i32.add 	$push104=, $10, $pop103
	i32.const	$push290=, 0
	i32.store	0($pop104), $pop290
	i32.const	$push105=, 60
	i32.add 	$push106=, $10, $pop105
	i32.const	$push289=, 0
	i32.store	0($pop106), $pop289
	i32.const	$push288=, 0
	i32.store	64($10), $pop288
	i32.const	$push107=, 68
	i32.add 	$push108=, $10, $pop107
	i32.const	$push287=, 0
	i32.store	0($pop108), $pop287
	i32.const	$push109=, 72
	i32.add 	$push110=, $10, $pop109
	i32.const	$push286=, 0
	i32.store	0($pop110), $pop286
	i32.const	$push111=, 52
	i32.add 	$9=, $10, $pop111
	i64.load	$4=, 0($1)
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$3=, .L.str.10
	i64.const	$8=, 0
.LBB46_34:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push298=, 5
	i64.gt_u	$push112=, $7, $pop298
	br_if   	0, $pop112
	i32.load8_s	$push303=, 0($3)
	tee_local	$push302=, $5=, $pop303
	i32.const	$push301=, -97
	i32.add 	$push114=, $pop302, $pop301
	i32.const	$push300=, 255
	i32.and 	$push115=, $pop114, $pop300
	i32.const	$push299=, 25
	i32.gt_u	$push116=, $pop115, $pop299
	br_if   	1, $pop116
	i32.const	$push304=, 165
	i32.add 	$5=, $5, $pop304
	br      	2
.LBB46_37:
	end_block
	i64.const	$2=, 0
	i64.const	$push305=, 11
	i64.le_u	$push113=, $7, $pop305
	br_if   	2, $pop113
	br      	3
.LBB46_38:
	end_block
	i32.const	$push310=, 208
	i32.add 	$push117=, $5, $pop310
	i32.const	$push309=, 0
	i32.const	$push308=, -49
	i32.add 	$push118=, $5, $pop308
	i32.const	$push307=, 255
	i32.and 	$push119=, $pop118, $pop307
	i32.const	$push306=, 5
	i32.lt_u	$push120=, $pop119, $pop306
	i32.select	$5=, $pop117, $pop309, $pop120
.LBB46_39:
	end_block
	i64.extend_u/i32	$push121=, $5
	i64.const	$push312=, 56
	i64.shl 	$push122=, $pop121, $pop312
	i64.const	$push311=, 56
	i64.shr_s	$2=, $pop122, $pop311
.LBB46_40:
	end_block
	i64.const	$push314=, 31
	i64.and 	$push124=, $2, $pop314
	i64.const	$push313=, 4294967295
	i64.and 	$push123=, $6, $pop313
	i64.shl 	$2=, $pop124, $pop123
.LBB46_41:
	end_block
	i32.const	$push320=, 1
	i32.add 	$3=, $3, $pop320
	i64.const	$push319=, 1
	i64.add 	$7=, $7, $pop319
	i64.or  	$8=, $2, $8
	i64.const	$push318=, -5
	i64.add 	$push317=, $6, $pop318
	tee_local	$push316=, $6=, $pop317
	i64.const	$push315=, -6
	i64.ne  	$push125=, $pop316, $pop315
	br_if   	0, $pop125
	end_loop
	i64.store	8($10), $8
	i64.store	0($10), $4
	i64.const	$7=, 0
	i64.const	$6=, 59
	i32.const	$3=, .L.str.74
	i64.const	$8=, 0
.LBB46_43:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push321=, 10
	i64.gt_u	$push126=, $7, $pop321
	br_if   	0, $pop126
	i32.load8_s	$push326=, 0($3)
	tee_local	$push325=, $5=, $pop326
	i32.const	$push324=, -97
	i32.add 	$push128=, $pop325, $pop324
	i32.const	$push323=, 255
	i32.and 	$push129=, $pop128, $pop323
	i32.const	$push322=, 25
	i32.gt_u	$push130=, $pop129, $pop322
	br_if   	1, $pop130
	i32.const	$push327=, 165
	i32.add 	$5=, $5, $pop327
	br      	2
.LBB46_46:
	end_block
	i64.const	$2=, 0
	i64.const	$push328=, 11
	i64.eq  	$push127=, $7, $pop328
	br_if   	2, $pop127
	br      	3
.LBB46_47:
	end_block
	i32.const	$push333=, 208
	i32.add 	$push131=, $5, $pop333
	i32.const	$push332=, 0
	i32.const	$push331=, -49
	i32.add 	$push132=, $5, $pop331
	i32.const	$push330=, 255
	i32.and 	$push133=, $pop132, $pop330
	i32.const	$push329=, 5
	i32.lt_u	$push134=, $pop133, $pop329
	i32.select	$5=, $pop131, $pop332, $pop134
.LBB46_48:
	end_block
	i64.extend_u/i32	$push135=, $5
	i64.const	$push335=, 56
	i64.shl 	$push136=, $pop135, $pop335
	i64.const	$push334=, 56
	i64.shr_s	$2=, $pop136, $pop334
.LBB46_49:
	end_block
	i64.const	$push337=, 31
	i64.and 	$push138=, $2, $pop337
	i64.const	$push336=, 4294967295
	i64.and 	$push137=, $6, $pop336
	i64.shl 	$2=, $pop138, $pop137
.LBB46_50:
	end_block
	i32.const	$push343=, 1
	i32.add 	$3=, $3, $pop343
	i64.const	$push342=, -5
	i64.add 	$6=, $6, $pop342
	i64.or  	$8=, $2, $8
	i64.const	$push341=, 1
	i64.add 	$push340=, $7, $pop341
	tee_local	$push339=, $7=, $pop340
	i64.const	$push338=, 13
	i64.ne  	$push139=, $pop339, $pop338
	br_if   	0, $pop139
	end_loop
	i64.store	144($10), $8
	i32.const	$push167=, 144
	i32.add 	$push168=, $10, $pop167
	call    	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelERyyS8_EEEvDpOT_@FUNCTION, $9, $10, $0, $pop168, $1
	i64.load	$7=, 0($1)
	i32.const	$push140=, 36
	i32.add 	$push141=, $10, $pop140
	i32.const	$push142=, 604801
	i32.store	0($pop141), $pop142
	i64.const	$push143=, 0
	i64.store	8($10), $pop143
	i64.store	0($10), $7
	i32.call	$drop=, cancel_deferred@FUNCTION, $10
	i64.const	$push350=, 0
	i64.store	8($10), $pop350
	i64.load	$push349=, 0($1)
	tee_local	$push348=, $7=, $pop349
	i64.store	0($10), $pop348
	i32.const	$push169=, 144
	i32.add 	$push170=, $10, $pop169
	i32.const	$push171=, 16
	i32.add 	$push172=, $10, $pop171
	call    	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop170, $pop172
	i32.load	$push347=, 144($10)
	tee_local	$push346=, $3=, $pop347
	i32.load	$push144=, 148($10)
	i32.sub 	$push145=, $pop144, $3
	i32.const	$push146=, 1
	call    	send_deferred@FUNCTION, $10, $7, $pop346, $pop145, $pop146
	block   	
	i32.load	$push345=, 144($10)
	tee_local	$push344=, $3=, $pop345
	i32.eqz 	$push362=, $pop344
	br_if   	0, $pop362
	i32.store	148($10), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB46_53:
	end_block
	i32.const	$push173=, 16
	i32.add 	$push174=, $10, $pop173
	i32.call	$drop=, _ZN5eosio11transactionD2Ev@FUNCTION, $pop174
	i32.load	$push352=, 128($10)
	tee_local	$push351=, $1=, $pop352
	i32.eqz 	$push363=, $pop351
	br_if   	1, $pop363
.LBB46_54:
	end_block
	block   	
	block   	
	i32.const	$push147=, 132
	i32.add 	$push356=, $10, $pop147
	tee_local	$push355=, $0=, $pop356
	i32.load	$push354=, 0($pop355)
	tee_local	$push353=, $3=, $pop354
	i32.eq  	$push148=, $pop353, $1
	br_if   	0, $pop148
.LBB46_56:
	loop    	
	i32.const	$push360=, -24
	i32.add 	$push359=, $3, $pop360
	tee_local	$push358=, $3=, $pop359
	i32.load	$5=, 0($pop358)
	i32.const	$push357=, 0
	i32.store	0($3), $pop357
	block   	
	i32.eqz 	$push364=, $5
	br_if   	0, $pop364
	call    	_ZdlPv@FUNCTION, $5
.LBB46_58:
	end_block
	i32.ne  	$push149=, $1, $3
	br_if   	0, $pop149
	end_loop
	i32.const	$push150=, 128
	i32.add 	$push151=, $10, $pop150
	i32.load	$3=, 0($pop151)
	br      	1
.LBB46_60:
	end_block
	copy_local	$3=, $1
.LBB46_61:
	end_block
	i32.store	0($0), $1
	call    	_ZdlPv@FUNCTION, $3
.LBB46_62:
	end_block
	i32.const	$push158=, 0
	i32.const	$push156=, 160
	i32.add 	$push157=, $10, $pop156
	i32.store	__stack_pointer($pop158), $pop157
	.endfunc
.Lfunc_end46:
	.size	_ZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetE, .Lfunc_end46-_ZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetE

	.section	.text._ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE5eraseERKS2_,"axG",@progbits,_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE5eraseERKS2_,comdat
	.hidden	_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE5eraseERKS2_
	.weak	_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE5eraseERKS2_
	.type	_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE5eraseERKS2_,@function
_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE5eraseERKS2_:
	.param  	i32, i32
	.local  	i64, i32, i32, i32, i32, i32, i32
	i32.load	$push0=, 44($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.67
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.68
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	block   	
	i32.const	$push7=, 28
	i32.add 	$push38=, $0, $pop7
	tee_local	$push37=, $5=, $pop38
	i32.load	$push36=, 0($pop37)
	tee_local	$push35=, $7=, $pop36
	i32.load	$push34=, 24($0)
	tee_local	$push33=, $3=, $pop34
	i32.eq  	$push8=, $pop35, $pop33
	br_if   	0, $pop8
	i64.load	$2=, 0($1)
	i32.const	$push9=, 0
	i32.sub 	$6=, $pop9, $3
	i32.const	$push39=, -24
	i32.add 	$8=, $7, $pop39
.LBB47_2:
	loop    	
	i32.load	$push10=, 0($8)
	i64.load	$push11=, 0($pop10)
	i64.eq  	$push12=, $pop11, $2
	br_if   	1, $pop12
	copy_local	$7=, $8
	i32.const	$push43=, -24
	i32.add 	$push42=, $8, $pop43
	tee_local	$push41=, $4=, $pop42
	copy_local	$8=, $pop41
	i32.add 	$push13=, $4, $6
	i32.const	$push40=, -24
	i32.ne  	$push14=, $pop13, $pop40
	br_if   	0, $pop14
.LBB47_4:
	end_loop
	end_block
	i32.ne  	$push15=, $7, $3
	i32.const	$push16=, .L.str.69
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i32.const	$push46=, -24
	i32.add 	$8=, $7, $pop46
	block   	
	block   	
	i32.load	$push45=, 0($5)
	tee_local	$push44=, $4=, $pop45
	i32.eq  	$push17=, $7, $pop44
	br_if   	0, $pop17
	i32.const	$push47=, 0
	i32.sub 	$3=, $pop47, $4
	copy_local	$7=, $8
.LBB47_6:
	loop    	
	i32.const	$push51=, 24
	i32.add 	$push50=, $7, $pop51
	tee_local	$push49=, $8=, $pop50
	i32.load	$6=, 0($pop49)
	i32.const	$push48=, 0
	i32.store	0($8), $pop48
	i32.load	$4=, 0($7)
	i32.store	0($7), $6
	block   	
	i32.eqz 	$push63=, $4
	br_if   	0, $pop63
	call    	_ZdlPv@FUNCTION, $4
.LBB47_8:
	end_block
	i32.const	$push56=, 16
	i32.add 	$push18=, $7, $pop56
	i32.const	$push55=, 40
	i32.add 	$push19=, $7, $pop55
	i32.load	$push20=, 0($pop19)
	i32.store	0($pop18), $pop20
	i32.const	$push54=, 8
	i32.add 	$push21=, $7, $pop54
	i32.const	$push53=, 32
	i32.add 	$push22=, $7, $pop53
	i64.load	$push23=, 0($pop22)
	i64.store	0($pop21), $pop23
	copy_local	$7=, $8
	i32.add 	$push24=, $8, $3
	i32.const	$push52=, -24
	i32.ne  	$push25=, $pop24, $pop52
	br_if   	0, $pop25
	end_loop
	i32.const	$push26=, 28
	i32.add 	$push27=, $0, $pop26
	i32.load	$push58=, 0($pop27)
	tee_local	$push57=, $7=, $pop58
	i32.eq  	$push28=, $pop57, $8
	br_if   	1, $pop28
.LBB47_10:
	end_block
.LBB47_11:
	loop    	
	i32.const	$push62=, -24
	i32.add 	$push61=, $7, $pop62
	tee_local	$push60=, $7=, $pop61
	i32.load	$4=, 0($pop60)
	i32.const	$push59=, 0
	i32.store	0($7), $pop59
	block   	
	i32.eqz 	$push64=, $4
	br_if   	0, $pop64
	call    	_ZdlPv@FUNCTION, $4
.LBB47_13:
	end_block
	i32.ne  	$push29=, $8, $7
	br_if   	0, $pop29
.LBB47_14:
	end_loop
	end_block
	i32.const	$push30=, 28
	i32.add 	$push31=, $0, $pop30
	i32.store	0($pop31), $8
	i32.load	$push32=, 48($1)
	call    	db_remove_i64@FUNCTION, $pop32
	.endfunc
.Lfunc_end47:
	.size	_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE5eraseERKS2_, .Lfunc_end47-_ZN5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE5eraseERKS2_

	.section	.text._ZNK5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE31load_object_by_primary_iteratorEl,"axG",@progbits,_ZNK5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE31load_object_by_primary_iteratorEl,comdat
	.hidden	_ZNK5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE31load_object_by_primary_iteratorEl
	.weak	_ZNK5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE31load_object_by_primary_iteratorEl
	.type	_ZNK5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE31load_object_by_primary_iteratorEl,@function
_ZNK5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE31load_object_by_primary_iteratorEl:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i64, i32, i32
	i32.const	$push51=, 0
	i32.load	$push52=, __stack_pointer($pop51)
	i32.const	$push53=, 48
	i32.sub 	$push72=, $pop52, $pop53
	tee_local	$push71=, $9=, $pop72
	copy_local	$8=, $pop71
	i32.const	$push54=, 0
	i32.store	__stack_pointer($pop54), $9
	block   	
	i32.const	$push0=, 28
	i32.add 	$push1=, $0, $pop0
	i32.load	$push70=, 0($pop1)
	tee_local	$push69=, $6=, $pop70
	i32.load	$push68=, 24($0)
	tee_local	$push67=, $2=, $pop68
	i32.eq  	$push2=, $pop69, $pop67
	br_if   	0, $pop2
	i32.const	$push3=, 0
	i32.sub 	$3=, $pop3, $2
	i32.const	$push73=, -24
	i32.add 	$5=, $6, $pop73
.LBB48_2:
	loop    	
	i32.const	$push74=, 16
	i32.add 	$push4=, $5, $pop74
	i32.load	$push5=, 0($pop4)
	i32.eq  	$push6=, $pop5, $1
	br_if   	1, $pop6
	copy_local	$6=, $5
	i32.const	$push78=, -24
	i32.add 	$push77=, $5, $pop78
	tee_local	$push76=, $4=, $pop77
	copy_local	$5=, $pop76
	i32.add 	$push7=, $4, $3
	i32.const	$push75=, -24
	i32.ne  	$push8=, $pop7, $pop75
	br_if   	0, $pop8
.LBB48_4:
	end_loop
	end_block
	block   	
	block   	
	i32.eq  	$push9=, $6, $2
	br_if   	0, $pop9
	i32.const	$push10=, -24
	i32.add 	$push11=, $6, $pop10
	i32.load	$4=, 0($pop11)
	br      	1
.LBB48_6:
	end_block
	i32.const	$push12=, 0
	i32.const	$push81=, 0
	i32.call	$push80=, db_get_i64@FUNCTION, $1, $pop12, $pop81
	tee_local	$push79=, $5=, $pop80
	i32.const	$push13=, 31
	i32.shr_u	$push14=, $pop79, $pop13
	i32.const	$push15=, 1
	i32.xor 	$push16=, $pop14, $pop15
	i32.const	$push17=, .L.str.51
	call    	eosio_assert@FUNCTION, $pop16, $pop17
	block   	
	block   	
	i32.const	$push18=, 513
	i32.lt_u	$push19=, $5, $pop18
	br_if   	0, $pop19
	i32.call	$4=, malloc@FUNCTION, $5
	br      	1
.LBB48_8:
	end_block
	i32.const	$push50=, 0
	i32.const	$push20=, 15
	i32.add 	$push21=, $5, $pop20
	i32.const	$push22=, -16
	i32.and 	$push23=, $pop21, $pop22
	i32.sub 	$push83=, $9, $pop23
	tee_local	$push82=, $4=, $pop83
	copy_local	$push66=, $pop82
	i32.store	__stack_pointer($pop50), $pop66
.LBB48_9:
	end_block
	i32.call	$drop=, db_get_i64@FUNCTION, $1, $4, $5
	i32.store	36($8), $4
	i32.store	32($8), $4
	i32.add 	$push24=, $4, $5
	i32.store	40($8), $pop24
	block   	
	i32.const	$push25=, 513
	i32.lt_u	$push26=, $5, $pop25
	br_if   	0, $pop26
	call    	free@FUNCTION, $4
.LBB48_11:
	end_block
	i32.const	$push88=, 24
	i32.add 	$3=, $0, $pop88
	i32.const	$push27=, 48
	i32.call	$push87=, _Znwj@FUNCTION, $pop27
	tee_local	$push86=, $4=, $pop87
	i64.const	$push28=, 1398362884
	i64.store	24($pop86), $pop28
	i64.const	$push85=, 0
	i64.store	16($4), $pop85
	i32.const	$push84=, 1
	i32.const	$push29=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop84, $pop29
	i64.const	$7=, 5462355
	i32.const	$5=, 0
.LBB48_12:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push30=, $7
	i32.const	$push91=, 24
	i32.shl 	$push31=, $pop30, $pop91
	i32.const	$push90=, -1073741825
	i32.add 	$push32=, $pop31, $pop90
	i32.const	$push89=, 452984830
	i32.gt_u	$push33=, $pop32, $pop89
	br_if   	1, $pop33
	block   	
	i64.const	$push96=, 8
	i64.shr_u	$push95=, $7, $pop96
	tee_local	$push94=, $7=, $pop95
	i64.const	$push93=, 255
	i64.and 	$push34=, $pop94, $pop93
	i64.const	$push92=, 0
	i64.ne  	$push35=, $pop34, $pop92
	br_if   	0, $pop35
.LBB48_14:
	loop    	
	i64.const	$push101=, 8
	i64.shr_u	$push100=, $7, $pop101
	tee_local	$push99=, $7=, $pop100
	i64.const	$push98=, 255
	i64.and 	$push36=, $pop99, $pop98
	i64.const	$push97=, 0
	i64.ne  	$push37=, $pop36, $pop97
	br_if   	3, $pop37
	i32.const	$push105=, 1
	i32.add 	$push104=, $5, $pop105
	tee_local	$push103=, $5=, $pop104
	i32.const	$push102=, 7
	i32.lt_s	$push38=, $pop103, $pop102
	br_if   	0, $pop38
.LBB48_16:
	end_loop
	end_block
	i32.const	$6=, 1
	i32.const	$push109=, 1
	i32.add 	$push108=, $5, $pop109
	tee_local	$push107=, $5=, $pop108
	i32.const	$push106=, 7
	i32.lt_s	$push39=, $pop107, $pop106
	br_if   	0, $pop39
	br      	2
.LBB48_17:
	end_loop
	end_block
	i32.const	$6=, 0
.LBB48_18:
	end_block
	i32.const	$push40=, .L.str
	call    	eosio_assert@FUNCTION, $6, $pop40
	i32.store	32($4), $0
	i32.const	$push58=, 32
	i32.add 	$push59=, $8, $pop58
	i32.call	$drop=, _ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_14refund_requestE@FUNCTION, $pop59, $4
	i32.store	36($4), $1
	i32.store	24($8), $4
	i64.load	$push117=, 0($4)
	tee_local	$push116=, $7=, $pop117
	i64.store	16($8), $pop116
	i32.load	$push115=, 36($4)
	tee_local	$push114=, $6=, $pop115
	i32.store	12($8), $pop114
	block   	
	block   	
	i32.const	$push44=, 28
	i32.add 	$push113=, $0, $pop44
	tee_local	$push112=, $1=, $pop113
	i32.load	$push111=, 0($pop112)
	tee_local	$push110=, $5=, $pop111
	i32.const	$push41=, 32
	i32.add 	$push42=, $0, $pop41
	i32.load	$push43=, 0($pop42)
	i32.ge_u	$push45=, $pop110, $pop43
	br_if   	0, $pop45
	i64.store	8($5), $7
	i32.store	16($5), $6
	i32.const	$push46=, 0
	i32.store	24($8), $pop46
	i32.store	0($5), $4
	i32.const	$push47=, 24
	i32.add 	$push48=, $5, $pop47
	i32.store	0($1), $pop48
	br      	1
.LBB48_20:
	end_block
	i32.const	$push60=, 24
	i32.add 	$push61=, $8, $pop60
	i32.const	$push62=, 16
	i32.add 	$push63=, $8, $pop62
	i32.const	$push64=, 12
	i32.add 	$push65=, $8, $pop64
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $3, $pop61, $pop63, $pop65
.LBB48_21:
	end_block
	i32.load	$5=, 24($8)
	i32.const	$push49=, 0
	i32.store	24($8), $pop49
	i32.eqz 	$push118=, $5
	br_if   	0, $pop118
	call    	_ZdlPv@FUNCTION, $5
.LBB48_23:
	end_block
	i32.const	$push57=, 0
	i32.const	$push55=, 48
	i32.add 	$push56=, $8, $pop55
	i32.store	__stack_pointer($pop57), $pop56
	copy_local	$push119=, $4
	.endfunc
.Lfunc_end48:
	.size	_ZNK5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE31load_object_by_primary_iteratorEl, .Lfunc_end48-_ZNK5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE31load_object_by_primary_iteratorEl

	.section	.text._ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE6modifyIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E_EEvRKS2_yOT_,"axG",@progbits,_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE6modifyIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E_EEvRKS2_yOT_,comdat
	.hidden	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE6modifyIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E_EEvRKS2_yOT_
	.weak	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE6modifyIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E_EEvRKS2_yOT_
	.type	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE6modifyIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E_EEvRKS2_yOT_,@function
_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE6modifyIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E_EEvRKS2_yOT_:
	.param  	i32, i32, i64, i32
	.local  	i64, i32
	i32.const	$push37=, 0
	i32.const	$push34=, 0
	i32.load	$push35=, __stack_pointer($pop34)
	i32.const	$push36=, 32
	i32.sub 	$push53=, $pop35, $pop36
	tee_local	$push52=, $5=, $pop53
	i32.store	__stack_pointer($pop37), $pop52
	i32.load	$push0=, 32($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.59
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.60
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	i64.load	$4=, 0($1)
	call    	_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE_clES7_@FUNCTION, $3, $1
	i64.load	$push7=, 0($1)
	i64.eq  	$push8=, $4, $pop7
	i32.const	$push9=, .L.str.61
	call    	eosio_assert@FUNCTION, $pop8, $pop9
	i32.const	$push11=, 1
	i32.const	$push10=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop11, $pop10
	i32.const	$push12=, 8
	i32.call	$drop=, memcpy@FUNCTION, $5, $1, $pop12
	i32.const	$push51=, 1
	i32.const	$push50=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop51, $pop50
	i32.const	$push49=, 8
	i32.or  	$push14=, $5, $pop49
	i32.const	$push48=, 8
	i32.add 	$push13=, $1, $pop48
	i32.const	$push15=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop14, $pop13, $pop15
	i32.const	$push47=, 1
	i32.const	$push46=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop47, $pop46
	i32.const	$push17=, 12
	i32.or  	$push18=, $5, $pop17
	i32.const	$push45=, 16
	i32.add 	$push16=, $1, $pop45
	i32.const	$push44=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop18, $pop16, $pop44
	i32.const	$push43=, 1
	i32.const	$push42=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop43, $pop42
	i32.const	$push21=, 20
	i32.add 	$push22=, $5, $pop21
	i32.const	$push19=, 24
	i32.add 	$push20=, $1, $pop19
	i32.const	$push41=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop22, $pop20, $pop41
	i32.load	$push23=, 36($1)
	i32.const	$push24=, 28
	call    	db_update_i64@FUNCTION, $pop23, $2, $5, $pop24
	block   	
	i64.load	$push25=, 16($0)
	i64.lt_u	$push26=, $4, $pop25
	br_if   	0, $pop26
	i32.const	$push54=, 16
	i32.add 	$push33=, $0, $pop54
	i64.const	$push31=, -2
	i64.const	$push29=, 1
	i64.add 	$push30=, $4, $pop29
	i64.const	$push27=, -3
	i64.gt_u	$push28=, $4, $pop27
	i64.select	$push32=, $pop31, $pop30, $pop28
	i64.store	0($pop33), $pop32
.LBB49_2:
	end_block
	i32.const	$push40=, 0
	i32.const	$push38=, 32
	i32.add 	$push39=, $5, $pop38
	i32.store	__stack_pointer($pop40), $pop39
	.endfunc
.Lfunc_end49:
	.size	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE6modifyIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E_EEvRKS2_yOT_, .Lfunc_end49-_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE6modifyIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E_EEvRKS2_yOT_

	.section	.text._ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE5eraseERKS2_,"axG",@progbits,_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE5eraseERKS2_,comdat
	.hidden	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE5eraseERKS2_
	.weak	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE5eraseERKS2_
	.type	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE5eraseERKS2_,@function
_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE5eraseERKS2_:
	.param  	i32, i32
	.local  	i64, i32, i32, i32, i32, i32, i32
	i32.load	$push0=, 32($1)
	i32.eq  	$push1=, $pop0, $0
	i32.const	$push2=, .L.str.67
	call    	eosio_assert@FUNCTION, $pop1, $pop2
	i64.load	$push3=, 0($0)
	i64.call	$push4=, current_receiver@FUNCTION
	i64.eq  	$push5=, $pop3, $pop4
	i32.const	$push6=, .L.str.68
	call    	eosio_assert@FUNCTION, $pop5, $pop6
	block   	
	i32.const	$push7=, 28
	i32.add 	$push38=, $0, $pop7
	tee_local	$push37=, $5=, $pop38
	i32.load	$push36=, 0($pop37)
	tee_local	$push35=, $7=, $pop36
	i32.load	$push34=, 24($0)
	tee_local	$push33=, $3=, $pop34
	i32.eq  	$push8=, $pop35, $pop33
	br_if   	0, $pop8
	i64.load	$2=, 0($1)
	i32.const	$push9=, 0
	i32.sub 	$6=, $pop9, $3
	i32.const	$push39=, -24
	i32.add 	$8=, $7, $pop39
.LBB50_2:
	loop    	
	i32.load	$push10=, 0($8)
	i64.load	$push11=, 0($pop10)
	i64.eq  	$push12=, $pop11, $2
	br_if   	1, $pop12
	copy_local	$7=, $8
	i32.const	$push43=, -24
	i32.add 	$push42=, $8, $pop43
	tee_local	$push41=, $4=, $pop42
	copy_local	$8=, $pop41
	i32.add 	$push13=, $4, $6
	i32.const	$push40=, -24
	i32.ne  	$push14=, $pop13, $pop40
	br_if   	0, $pop14
.LBB50_4:
	end_loop
	end_block
	i32.ne  	$push15=, $7, $3
	i32.const	$push16=, .L.str.69
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	i32.const	$push46=, -24
	i32.add 	$8=, $7, $pop46
	block   	
	block   	
	i32.load	$push45=, 0($5)
	tee_local	$push44=, $4=, $pop45
	i32.eq  	$push17=, $7, $pop44
	br_if   	0, $pop17
	i32.const	$push47=, 0
	i32.sub 	$3=, $pop47, $4
	copy_local	$7=, $8
.LBB50_6:
	loop    	
	i32.const	$push51=, 24
	i32.add 	$push50=, $7, $pop51
	tee_local	$push49=, $8=, $pop50
	i32.load	$6=, 0($pop49)
	i32.const	$push48=, 0
	i32.store	0($8), $pop48
	i32.load	$4=, 0($7)
	i32.store	0($7), $6
	block   	
	i32.eqz 	$push63=, $4
	br_if   	0, $pop63
	call    	_ZdlPv@FUNCTION, $4
.LBB50_8:
	end_block
	i32.const	$push56=, 16
	i32.add 	$push18=, $7, $pop56
	i32.const	$push55=, 40
	i32.add 	$push19=, $7, $pop55
	i32.load	$push20=, 0($pop19)
	i32.store	0($pop18), $pop20
	i32.const	$push54=, 8
	i32.add 	$push21=, $7, $pop54
	i32.const	$push53=, 32
	i32.add 	$push22=, $7, $pop53
	i64.load	$push23=, 0($pop22)
	i64.store	0($pop21), $pop23
	copy_local	$7=, $8
	i32.add 	$push24=, $8, $3
	i32.const	$push52=, -24
	i32.ne  	$push25=, $pop24, $pop52
	br_if   	0, $pop25
	end_loop
	i32.const	$push26=, 28
	i32.add 	$push27=, $0, $pop26
	i32.load	$push58=, 0($pop27)
	tee_local	$push57=, $7=, $pop58
	i32.eq  	$push28=, $pop57, $8
	br_if   	1, $pop28
.LBB50_10:
	end_block
.LBB50_11:
	loop    	
	i32.const	$push62=, -24
	i32.add 	$push61=, $7, $pop62
	tee_local	$push60=, $7=, $pop61
	i32.load	$4=, 0($pop60)
	i32.const	$push59=, 0
	i32.store	0($7), $pop59
	block   	
	i32.eqz 	$push64=, $4
	br_if   	0, $pop64
	call    	_ZdlPv@FUNCTION, $4
.LBB50_13:
	end_block
	i32.ne  	$push29=, $8, $7
	br_if   	0, $pop29
.LBB50_14:
	end_loop
	end_block
	i32.const	$push30=, 28
	i32.add 	$push31=, $0, $pop30
	i32.store	0($pop31), $8
	i32.load	$push32=, 36($1)
	call    	db_remove_i64@FUNCTION, $pop32
	.endfunc
.Lfunc_end50:
	.size	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE5eraseERKS2_, .Lfunc_end50-_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE5eraseERKS2_

	.section	.text._ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_,"axG",@progbits,_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_,comdat
	.hidden	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_
	.weak	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_
	.type	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_,@function
_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_:
	.param  	i32, i32, i64, i32
	.local  	i32, i32, i32, i32
	i32.const	$push32=, 0
	i32.const	$push29=, 0
	i32.load	$push30=, __stack_pointer($pop29)
	i32.const	$push31=, 48
	i32.sub 	$push51=, $pop30, $pop31
	tee_local	$push50=, $7=, $pop51
	i32.store	__stack_pointer($pop32), $pop50
	i64.store	40($7), $2
	i64.load	$push0=, 0($1)
	i64.call	$push1=, current_receiver@FUNCTION
	i64.eq  	$push2=, $pop0, $pop1
	i32.const	$push3=, .L.str.49
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i32.store	20($7), $3
	i32.store	16($7), $1
	i32.const	$push36=, 40
	i32.add 	$push37=, $7, $pop36
	i32.store	24($7), $pop37
	i32.const	$push4=, 48
	i32.call	$push49=, _Znwj@FUNCTION, $pop4
	tee_local	$push48=, $4=, $pop49
	i64.const	$push5=, 1398362884
	i64.store	24($pop48), $pop5
	i64.const	$push47=, 0
	i64.store	16($4), $pop47
	i32.const	$push46=, 1
	i32.const	$push6=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop46, $pop6
	i64.const	$2=, 5462355
	i32.const	$3=, 0
.LBB51_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push7=, $2
	i32.const	$push54=, 24
	i32.shl 	$push8=, $pop7, $pop54
	i32.const	$push53=, -1073741825
	i32.add 	$push9=, $pop8, $pop53
	i32.const	$push52=, 452984830
	i32.gt_u	$push10=, $pop9, $pop52
	br_if   	1, $pop10
	block   	
	i64.const	$push59=, 8
	i64.shr_u	$push58=, $2, $pop59
	tee_local	$push57=, $2=, $pop58
	i64.const	$push56=, 255
	i64.and 	$push11=, $pop57, $pop56
	i64.const	$push55=, 0
	i64.ne  	$push12=, $pop11, $pop55
	br_if   	0, $pop12
.LBB51_3:
	loop    	
	i64.const	$push64=, 8
	i64.shr_u	$push63=, $2, $pop64
	tee_local	$push62=, $2=, $pop63
	i64.const	$push61=, 255
	i64.and 	$push13=, $pop62, $pop61
	i64.const	$push60=, 0
	i64.ne  	$push14=, $pop13, $pop60
	br_if   	3, $pop14
	i32.const	$push68=, 1
	i32.add 	$push67=, $3, $pop68
	tee_local	$push66=, $3=, $pop67
	i32.const	$push65=, 7
	i32.lt_s	$push15=, $pop66, $pop65
	br_if   	0, $pop15
.LBB51_5:
	end_loop
	end_block
	i32.const	$6=, 1
	i32.const	$push72=, 1
	i32.add 	$push71=, $3, $pop72
	tee_local	$push70=, $3=, $pop71
	i32.const	$push69=, 7
	i32.lt_s	$push16=, $pop70, $pop69
	br_if   	0, $pop16
	br      	2
.LBB51_6:
	end_loop
	end_block
	i32.const	$6=, 0
.LBB51_7:
	end_block
	i32.const	$push17=, .L.str
	call    	eosio_assert@FUNCTION, $6, $pop17
	i32.store	32($4), $1
	i32.const	$push38=, 16
	i32.add 	$push39=, $7, $pop38
	call    	_ZZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRSD_E_clINS3_4itemEEEDaSF_@FUNCTION, $pop39, $4
	i32.store	32($7), $4
	i64.load	$push80=, 0($4)
	tee_local	$push79=, $2=, $pop80
	i64.store	16($7), $pop79
	i32.load	$push78=, 36($4)
	tee_local	$push77=, $6=, $pop78
	i32.store	12($7), $pop77
	block   	
	block   	
	i32.const	$push21=, 28
	i32.add 	$push76=, $1, $pop21
	tee_local	$push75=, $5=, $pop76
	i32.load	$push74=, 0($pop75)
	tee_local	$push73=, $3=, $pop74
	i32.const	$push18=, 32
	i32.add 	$push19=, $1, $pop18
	i32.load	$push20=, 0($pop19)
	i32.ge_u	$push22=, $pop73, $pop20
	br_if   	0, $pop22
	i64.store	8($3), $2
	i32.store	16($3), $6
	i32.const	$push25=, 0
	i32.store	32($7), $pop25
	i32.store	0($3), $4
	i32.const	$push26=, 24
	i32.add 	$push27=, $3, $pop26
	i32.store	0($5), $pop27
	br      	1
.LBB51_9:
	end_block
	i32.const	$push23=, 24
	i32.add 	$push24=, $1, $pop23
	i32.const	$push40=, 32
	i32.add 	$push41=, $7, $pop40
	i32.const	$push42=, 16
	i32.add 	$push43=, $7, $pop42
	i32.const	$push44=, 12
	i32.add 	$push45=, $7, $pop44
	call    	_ZNSt3__16vectorIN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_@FUNCTION, $pop24, $pop41, $pop43, $pop45
.LBB51_10:
	end_block
	i32.store	4($0), $4
	i32.store	0($0), $1
	i32.load	$3=, 32($7)
	i32.const	$push28=, 0
	i32.store	32($7), $pop28
	block   	
	i32.eqz 	$push81=, $3
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $3
.LBB51_12:
	end_block
	i32.const	$push35=, 0
	i32.const	$push33=, 48
	i32.add 	$push34=, $7, $pop33
	i32.store	__stack_pointer($pop35), $pop34
	.endfunc
.Lfunc_end51:
	.size	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_, .Lfunc_end51-_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_

	.section	.text._ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelERyyS8_EEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelERyyS8_EEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelERyyS8_EEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelERyyS8_EEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelERyyS8_EEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelERyyS8_EEEvDpOT_:
	.param  	i32, i32, i32, i32, i32
	.local  	i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push78=, 0($0)
	tee_local	$push77=, $8=, $pop78
	i32.sub 	$push1=, $pop0, $pop77
	i32.const	$push76=, 40
	i32.div_s	$push75=, $pop1, $pop76
	tee_local	$push74=, $5=, $pop75
	i32.const	$push2=, 1
	i32.add 	$push73=, $pop74, $pop2
	tee_local	$push72=, $7=, $pop73
	i32.const	$push3=, 107374183
	i32.ge_u	$push4=, $pop72, $pop3
	br_if   	0, $pop4
	i32.const	$6=, 107374182
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $8
	i32.const	$push81=, 40
	i32.div_s	$push80=, $pop6, $pop81
	tee_local	$push79=, $8=, $pop80
	i32.const	$push7=, 53687090
	i32.gt_u	$push8=, $pop79, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push85=, $8, $pop9
	tee_local	$push84=, $8=, $pop85
	i32.lt_u	$push10=, $8, $7
	i32.select	$push83=, $7, $pop84, $pop10
	tee_local	$push82=, $6=, $pop83
	i32.eqz 	$push179=, $pop82
	br_if   	1, $pop179
.LBB52_3:
	end_block
	i32.const	$push11=, 40
	i32.mul 	$push12=, $6, $pop11
	i32.call	$7=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB52_4:
	end_block
	i32.const	$6=, 0
	i32.const	$7=, 0
	br      	1
.LBB52_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB52_6:
	end_block
	i32.const	$push13=, 40
	i32.mul 	$push14=, $5, $pop13
	i32.add 	$push119=, $7, $pop14
	tee_local	$push118=, $8=, $pop119
	i64.load	$push15=, 0($2)
	i64.store	0($pop118), $pop15
	i64.load	$push16=, 0($3)
	i64.store	8($8), $pop16
	i64.const	$push117=, 0
	i64.store	16($8):p2align=2, $pop117
	i32.const	$push17=, 24
	i32.add 	$push116=, $8, $pop17
	tee_local	$push115=, $3=, $pop116
	i32.const	$push114=, 0
	i32.store	0($pop115), $pop114
	i32.const	$push113=, 16
	i32.call	$push112=, _Znwj@FUNCTION, $pop113
	tee_local	$push111=, $2=, $pop112
	i32.store	16($8), $pop111
	i32.const	$push110=, 16
	i32.add 	$push109=, $2, $pop110
	tee_local	$push108=, $5=, $pop109
	i32.store	0($3), $pop108
	i32.const	$push107=, 12
	i32.add 	$push18=, $2, $pop107
	i32.const	$push106=, 12
	i32.add 	$push19=, $1, $pop106
	i32.load	$push20=, 0($pop19)
	i32.store	0($pop18), $pop20
	i32.const	$push105=, 8
	i32.add 	$push21=, $2, $pop105
	i32.const	$push104=, 8
	i32.add 	$push22=, $1, $pop104
	i32.load	$push23=, 0($pop22)
	i32.store	0($pop21), $pop23
	i32.const	$push103=, 4
	i32.add 	$push24=, $2, $pop103
	i32.const	$push102=, 4
	i32.add 	$push25=, $1, $pop102
	i32.load	$push26=, 0($pop25)
	i32.store	0($pop24), $pop26
	i32.load	$push27=, 0($1)
	i32.store	0($2), $pop27
	i32.const	$push28=, 20
	i32.add 	$push29=, $8, $pop28
	i32.store	0($pop29), $5
	i32.const	$push101=, 0
	i32.store	28($8), $pop101
	i32.const	$push30=, 32
	i32.add 	$push100=, $8, $pop30
	tee_local	$push99=, $2=, $pop100
	i32.const	$push98=, 0
	i32.store	0($pop99), $pop98
	i32.const	$push31=, 36
	i32.add 	$push32=, $8, $pop31
	i32.const	$push97=, 0
	i32.store	0($pop32), $pop97
	i32.const	$push33=, 28
	i32.add 	$push34=, $8, $pop33
	i32.const	$push96=, 8
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $pop34, $pop96
	i32.load	$push35=, 0($2)
	i32.load	$push95=, 28($8)
	tee_local	$push94=, $2=, $pop95
	i32.sub 	$push36=, $pop35, $pop94
	i32.const	$push37=, 7
	i32.gt_s	$push38=, $pop36, $pop37
	i32.const	$push39=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop38, $pop39
	i32.const	$push93=, 8
	i32.call	$drop=, memcpy@FUNCTION, $2, $4, $pop93
	i32.const	$push92=, 40
	i32.mul 	$push40=, $6, $pop92
	i32.add 	$4=, $7, $pop40
	i32.const	$push91=, 40
	i32.add 	$5=, $8, $pop91
	block   	
	block   	
	i32.const	$push90=, 4
	i32.add 	$push41=, $0, $pop90
	i32.load	$push89=, 0($pop41)
	tee_local	$push88=, $1=, $pop89
	i32.load	$push87=, 0($0)
	tee_local	$push86=, $2=, $pop87
	i32.eq  	$push42=, $pop88, $pop86
	br_if   	0, $pop42
	i32.const	$push121=, 0
	i32.sub 	$3=, $pop121, $2
	i32.const	$push120=, -20
	i32.add 	$2=, $1, $pop120
.LBB52_8:
	loop    	
	i32.const	$push165=, -32
	i32.add 	$push43=, $8, $pop165
	i32.const	$push164=, -12
	i32.add 	$push44=, $2, $pop164
	i64.load	$push45=, 0($pop44)
	i64.store	0($pop43), $pop45
	i32.const	$push163=, -40
	i32.add 	$push46=, $8, $pop163
	i32.const	$push162=, -20
	i32.add 	$push47=, $2, $pop162
	i64.load	$push48=, 0($pop47)
	i64.store	0($pop46), $pop48
	i32.const	$push161=, -24
	i32.add 	$push160=, $8, $pop161
	tee_local	$push159=, $1=, $pop160
	i64.const	$push158=, 0
	i64.store	0($pop159):p2align=2, $pop158
	i32.const	$push157=, -16
	i32.add 	$push156=, $8, $pop157
	tee_local	$push155=, $6=, $pop156
	i32.const	$push154=, 0
	i32.store	0($pop155), $pop154
	i32.const	$push153=, -4
	i32.add 	$push152=, $2, $pop153
	tee_local	$push151=, $7=, $pop152
	i32.load	$push49=, 0($pop151)
	i32.store	0($1), $pop49
	i32.const	$push150=, -20
	i32.add 	$push50=, $8, $pop150
	i32.load	$push51=, 0($2)
	i32.store	0($pop50), $pop51
	i32.const	$push149=, 4
	i32.add 	$push148=, $2, $pop149
	tee_local	$push147=, $1=, $pop148
	i32.load	$push52=, 0($pop147)
	i32.store	0($6), $pop52
	i32.const	$push146=, 0
	i32.store	0($1), $pop146
	i32.const	$push145=, -12
	i32.add 	$push144=, $8, $pop145
	tee_local	$push143=, $1=, $pop144
	i64.const	$push142=, 0
	i64.store	0($pop143):p2align=2, $pop142
	i64.const	$push141=, 0
	i64.store	0($7):p2align=2, $pop141
	i32.const	$push140=, -4
	i32.add 	$push139=, $8, $pop140
	tee_local	$push138=, $6=, $pop139
	i32.const	$push137=, 0
	i32.store	0($pop138), $pop137
	i32.const	$push136=, 8
	i32.add 	$push135=, $2, $pop136
	tee_local	$push134=, $7=, $pop135
	i32.load	$push53=, 0($pop134)
	i32.store	0($1), $pop53
	i32.const	$push133=, -8
	i32.add 	$push54=, $8, $pop133
	i32.const	$push132=, 12
	i32.add 	$push55=, $2, $pop132
	i32.load	$push56=, 0($pop55)
	i32.store	0($pop54), $pop56
	i32.const	$push131=, 16
	i32.add 	$push130=, $2, $pop131
	tee_local	$push129=, $1=, $pop130
	i32.load	$push57=, 0($pop129)
	i32.store	0($6), $pop57
	i32.const	$push128=, 0
	i32.store	0($1), $pop128
	i64.const	$push127=, 0
	i64.store	0($7):p2align=2, $pop127
	i32.const	$push126=, -40
	i32.add 	$8=, $8, $pop126
	i32.const	$push125=, -40
	i32.add 	$push124=, $2, $pop125
	tee_local	$push123=, $2=, $pop124
	i32.add 	$push58=, $pop123, $3
	i32.const	$push122=, -20
	i32.ne  	$push59=, $pop58, $pop122
	br_if   	0, $pop59
	end_loop
	i32.const	$push60=, 4
	i32.add 	$push61=, $0, $pop60
	i32.load	$2=, 0($pop61)
	i32.load	$6=, 0($0)
	br      	1
.LBB52_10:
	end_block
	copy_local	$6=, $2
.LBB52_11:
	end_block
	i32.store	0($0), $8
	i32.const	$push166=, 4
	i32.add 	$push62=, $0, $pop166
	i32.store	0($pop62), $5
	i32.const	$push63=, 8
	i32.add 	$push64=, $0, $pop63
	i32.store	0($pop64), $4
	block   	
	i32.eq  	$push65=, $2, $6
	br_if   	0, $pop65
	i32.const	$push66=, 0
	i32.sub 	$1=, $pop66, $6
	i32.const	$push167=, -24
	i32.add 	$8=, $2, $pop167
.LBB52_13:
	loop    	
	block   	
	i32.const	$push170=, 12
	i32.add 	$push67=, $8, $pop170
	i32.load	$push169=, 0($pop67)
	tee_local	$push168=, $2=, $pop169
	i32.eqz 	$push180=, $pop168
	br_if   	0, $pop180
	i32.const	$push171=, 16
	i32.add 	$push68=, $8, $pop171
	i32.store	0($pop68), $2
	call    	_ZdlPv@FUNCTION, $2
.LBB52_15:
	end_block
	block   	
	i32.load	$push173=, 0($8)
	tee_local	$push172=, $2=, $pop173
	i32.eqz 	$push181=, $pop172
	br_if   	0, $pop181
	i32.const	$push174=, 4
	i32.add 	$push69=, $8, $pop174
	i32.store	0($pop69), $2
	call    	_ZdlPv@FUNCTION, $2
.LBB52_17:
	end_block
	i32.const	$push178=, -40
	i32.add 	$push177=, $8, $pop178
	tee_local	$push176=, $8=, $pop177
	i32.add 	$push70=, $pop176, $1
	i32.const	$push175=, -24
	i32.ne  	$push71=, $pop70, $pop175
	br_if   	0, $pop71
.LBB52_18:
	end_loop
	end_block
	block   	
	i32.eqz 	$push182=, $6
	br_if   	0, $pop182
	call    	_ZdlPv@FUNCTION, $6
.LBB52_20:
	end_block
	.endfunc
.Lfunc_end52:
	.size	_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelERyyS8_EEEvDpOT_, .Lfunc_end52-_ZNSt3__16vectorIN5eosio6actionENS_9allocatorIS2_EEE24__emplace_back_slow_pathIJNS1_16permission_levelERyyS8_EEEvDpOT_

	.section	.text._ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_,"axG",@progbits,_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_,comdat
	.hidden	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
	.weak	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_
	.type	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_,@function
_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_:
	.param  	i32, i32
	.local  	i32, i32, i32
	i32.const	$push14=, 0
	i32.const	$push11=, 0
	i32.load	$push12=, __stack_pointer($pop11)
	i32.const	$push13=, 16
	i32.sub 	$push23=, $pop12, $pop13
	tee_local	$push22=, $4=, $pop23
	i32.store	__stack_pointer($pop14), $pop22
	i32.const	$3=, 0
	i32.const	$push21=, 0
	i32.store	8($0), $pop21
	i64.const	$push0=, 0
	i64.store	0($0):p2align=2, $pop0
	i32.const	$push20=, 0
	i32.store	0($4), $pop20
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE@FUNCTION, $4, $1
	block   	
	block   	
	i32.load	$push19=, 0($4)
	tee_local	$push18=, $2=, $pop19
	i32.eqz 	$push24=, $pop18
	br_if   	0, $pop24
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $0, $2
	i32.const	$push1=, 4
	i32.add 	$push2=, $0, $pop1
	i32.load	$3=, 0($pop2)
	i32.load	$0=, 0($0)
	br      	1
.LBB53_2:
	end_block
	i32.const	$0=, 0
.LBB53_3:
	end_block
	i32.store	4($4), $0
	i32.store	0($4), $0
	i32.store	8($4), $3
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE@FUNCTION, $4, $1
	i32.const	$push5=, 24
	i32.add 	$push6=, $1, $pop5
	i32.call	$push7=, _ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE@FUNCTION, $4, $pop6
	i32.const	$push3=, 36
	i32.add 	$push4=, $1, $pop3
	i32.call	$push8=, _ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE@FUNCTION, $pop7, $pop4
	i32.const	$push9=, 48
	i32.add 	$push10=, $1, $pop9
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE@FUNCTION, $pop8, $pop10
	i32.const	$push17=, 0
	i32.const	$push15=, 16
	i32.add 	$push16=, $4, $pop15
	i32.store	__stack_pointer($pop17), $pop16
	.endfunc
.Lfunc_end53:
	.size	_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_, .Lfunc_end53-_ZN5eosio4packINS_11transactionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_

	.section	.text._ZN5eosio11transactionD2Ev,"axG",@progbits,_ZN5eosio11transactionD2Ev,comdat
	.hidden	_ZN5eosio11transactionD2Ev
	.weak	_ZN5eosio11transactionD2Ev
	.type	_ZN5eosio11transactionD2Ev,@function
_ZN5eosio11transactionD2Ev:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	block   	
	i32.load	$push29=, 48($0)
	tee_local	$push28=, $1=, $pop29
	i32.eqz 	$push78=, $pop28
	br_if   	0, $pop78
	block   	
	block   	
	i32.const	$push0=, 52
	i32.add 	$push33=, $0, $pop0
	tee_local	$push32=, $4=, $pop33
	i32.load	$push31=, 0($pop32)
	tee_local	$push30=, $5=, $pop31
	i32.eq  	$push1=, $pop30, $1
	br_if   	0, $pop1
	i32.const	$push2=, 0
	i32.sub 	$2=, $pop2, $1
	i32.const	$push34=, -12
	i32.add 	$5=, $5, $pop34
.LBB54_3:
	loop    	
	block   	
	i32.load	$push36=, 0($5)
	tee_local	$push35=, $3=, $pop36
	i32.eqz 	$push79=, $pop35
	br_if   	0, $pop79
	i32.const	$push37=, 4
	i32.add 	$push3=, $5, $pop37
	i32.store	0($pop3), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB54_5:
	end_block
	i32.const	$push41=, -16
	i32.add 	$push40=, $5, $pop41
	tee_local	$push39=, $5=, $pop40
	i32.add 	$push4=, $pop39, $2
	i32.const	$push38=, -12
	i32.ne  	$push5=, $pop4, $pop38
	br_if   	0, $pop5
	end_loop
	i32.const	$push6=, 48
	i32.add 	$push7=, $0, $pop6
	i32.load	$5=, 0($pop7)
	br      	1
.LBB54_7:
	end_block
	copy_local	$5=, $1
.LBB54_8:
	end_block
	i32.store	0($4), $1
	call    	_ZdlPv@FUNCTION, $5
.LBB54_9:
	end_block
	block   	
	i32.load	$push43=, 36($0)
	tee_local	$push42=, $1=, $pop43
	i32.eqz 	$push80=, $pop42
	br_if   	0, $pop80
	block   	
	block   	
	i32.const	$push8=, 40
	i32.add 	$push47=, $0, $pop8
	tee_local	$push46=, $4=, $pop47
	i32.load	$push45=, 0($pop46)
	tee_local	$push44=, $5=, $pop45
	i32.eq  	$push9=, $pop44, $1
	br_if   	0, $pop9
	i32.const	$push10=, 0
	i32.sub 	$2=, $pop10, $1
	i32.const	$push48=, -24
	i32.add 	$5=, $5, $pop48
.LBB54_12:
	loop    	
	block   	
	i32.const	$push51=, 12
	i32.add 	$push11=, $5, $pop51
	i32.load	$push50=, 0($pop11)
	tee_local	$push49=, $3=, $pop50
	i32.eqz 	$push81=, $pop49
	br_if   	0, $pop81
	i32.const	$push52=, 16
	i32.add 	$push12=, $5, $pop52
	i32.store	0($pop12), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB54_14:
	end_block
	block   	
	i32.load	$push54=, 0($5)
	tee_local	$push53=, $3=, $pop54
	i32.eqz 	$push82=, $pop53
	br_if   	0, $pop82
	i32.const	$push55=, 4
	i32.add 	$push13=, $5, $pop55
	i32.store	0($pop13), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB54_16:
	end_block
	i32.const	$push59=, -40
	i32.add 	$push58=, $5, $pop59
	tee_local	$push57=, $5=, $pop58
	i32.add 	$push14=, $pop57, $2
	i32.const	$push56=, -24
	i32.ne  	$push15=, $pop14, $pop56
	br_if   	0, $pop15
	end_loop
	i32.const	$push16=, 36
	i32.add 	$push17=, $0, $pop16
	i32.load	$5=, 0($pop17)
	br      	1
.LBB54_18:
	end_block
	copy_local	$5=, $1
.LBB54_19:
	end_block
	i32.store	0($4), $1
	call    	_ZdlPv@FUNCTION, $5
.LBB54_20:
	end_block
	block   	
	i32.load	$push61=, 24($0)
	tee_local	$push60=, $1=, $pop61
	i32.eqz 	$push83=, $pop60
	br_if   	0, $pop83
	block   	
	block   	
	i32.const	$push18=, 28
	i32.add 	$push65=, $0, $pop18
	tee_local	$push64=, $4=, $pop65
	i32.load	$push63=, 0($pop64)
	tee_local	$push62=, $5=, $pop63
	i32.eq  	$push19=, $pop62, $1
	br_if   	0, $pop19
	i32.const	$push20=, 0
	i32.sub 	$2=, $pop20, $1
	i32.const	$push66=, -24
	i32.add 	$5=, $5, $pop66
.LBB54_23:
	loop    	
	block   	
	i32.const	$push69=, 12
	i32.add 	$push21=, $5, $pop69
	i32.load	$push68=, 0($pop21)
	tee_local	$push67=, $3=, $pop68
	i32.eqz 	$push84=, $pop67
	br_if   	0, $pop84
	i32.const	$push70=, 16
	i32.add 	$push22=, $5, $pop70
	i32.store	0($pop22), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB54_25:
	end_block
	block   	
	i32.load	$push72=, 0($5)
	tee_local	$push71=, $3=, $pop72
	i32.eqz 	$push85=, $pop71
	br_if   	0, $pop85
	i32.const	$push73=, 4
	i32.add 	$push23=, $5, $pop73
	i32.store	0($pop23), $3
	call    	_ZdlPv@FUNCTION, $3
.LBB54_27:
	end_block
	i32.const	$push77=, -40
	i32.add 	$push76=, $5, $pop77
	tee_local	$push75=, $5=, $pop76
	i32.add 	$push24=, $pop75, $2
	i32.const	$push74=, -24
	i32.ne  	$push25=, $pop24, $pop74
	br_if   	0, $pop25
	end_loop
	i32.const	$push26=, 24
	i32.add 	$push27=, $0, $pop26
	i32.load	$5=, 0($pop27)
	br      	1
.LBB54_29:
	end_block
	copy_local	$5=, $1
.LBB54_30:
	end_block
	i32.store	0($4), $1
	call    	_ZdlPv@FUNCTION, $5
.LBB54_31:
	end_block
	copy_local	$push86=, $0
	.endfunc
.Lfunc_end54:
	.size	_ZN5eosio11transactionD2Ev, .Lfunc_end54-_ZN5eosio11transactionD2Ev

	.section	.text._ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE
	.weak	_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE
	.type	_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE,@function
_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i64
	i32.load	$push52=, 0($0)
	tee_local	$push51=, $6=, $pop52
	i32.const	$push0=, 10
	i32.add 	$push1=, $pop51, $pop0
	i32.store	0($0), $pop1
	i32.const	$push2=, 11
	i32.add 	$6=, $6, $pop2
	i64.load32_u	$8=, 12($1)
.LBB55_1:
	loop    	
	i32.const	$push57=, 1
	i32.add 	$6=, $6, $pop57
	i64.const	$push56=, 7
	i64.shr_u	$push55=, $8, $pop56
	tee_local	$push54=, $8=, $pop55
	i64.const	$push53=, 0
	i64.ne  	$push3=, $pop54, $pop53
	br_if   	0, $pop3
	end_loop
	i32.store	0($0), $6
	i64.load32_u	$8=, 20($1)
.LBB55_3:
	loop    	
	i32.const	$push62=, 1
	i32.add 	$6=, $6, $pop62
	i64.const	$push61=, 7
	i64.shr_u	$push60=, $8, $pop61
	tee_local	$push59=, $8=, $pop60
	i64.const	$push58=, 0
	i64.ne  	$push4=, $pop59, $pop58
	br_if   	0, $pop4
	end_loop
	i32.store	0($0), $6
	i32.const	$push5=, 28
	i32.add 	$push6=, $1, $pop5
	i32.load	$push66=, 0($pop6)
	tee_local	$push65=, $2=, $pop66
	i32.load	$push64=, 24($1)
	tee_local	$push63=, $7=, $pop64
	i32.sub 	$push7=, $pop65, $pop63
	i32.const	$push8=, 40
	i32.div_s	$push9=, $pop7, $pop8
	i64.extend_u/i32	$8=, $pop9
.LBB55_5:
	loop    	
	i32.const	$push71=, 1
	i32.add 	$6=, $6, $pop71
	i64.const	$push70=, 7
	i64.shr_u	$push69=, $8, $pop70
	tee_local	$push68=, $8=, $pop69
	i64.const	$push67=, 0
	i64.ne  	$push10=, $pop68, $pop67
	br_if   	0, $pop10
	end_loop
	i32.store	0($0), $6
	block   	
	i32.eq  	$push11=, $7, $2
	br_if   	0, $pop11
.LBB55_8:
	loop    	
	i32.const	$push80=, 16
	i32.add 	$6=, $6, $pop80
	i32.const	$push79=, 20
	i32.add 	$push12=, $7, $pop79
	i32.load	$push78=, 0($pop12)
	tee_local	$push77=, $3=, $pop78
	i32.load	$push76=, 16($7)
	tee_local	$push75=, $4=, $pop76
	i32.sub 	$push74=, $pop77, $pop75
	tee_local	$push73=, $5=, $pop74
	i32.const	$push72=, 4
	i32.shr_s	$push13=, $pop73, $pop72
	i64.extend_u/i32	$8=, $pop13
.LBB55_9:
	loop    	
	i32.const	$push85=, 1
	i32.add 	$6=, $6, $pop85
	i64.const	$push84=, 7
	i64.shr_u	$push83=, $8, $pop84
	tee_local	$push82=, $8=, $pop83
	i64.const	$push81=, 0
	i64.ne  	$push14=, $pop82, $pop81
	br_if   	0, $pop14
	end_loop
	block   	
	i32.eq  	$push15=, $4, $3
	br_if   	0, $pop15
	i32.const	$push86=, -16
	i32.and 	$push16=, $5, $pop86
	i32.add 	$6=, $pop16, $6
.LBB55_12:
	end_block
	i32.const	$push91=, 32
	i32.add 	$push17=, $7, $pop91
	i32.load	$push90=, 0($pop17)
	tee_local	$push89=, $3=, $pop90
	i32.add 	$push18=, $6, $pop89
	i32.load	$push88=, 28($7)
	tee_local	$push87=, $4=, $pop88
	i32.sub 	$6=, $pop18, $pop87
	i32.sub 	$push19=, $3, $4
	i64.extend_u/i32	$8=, $pop19
.LBB55_13:
	loop    	
	i32.const	$push96=, 1
	i32.add 	$6=, $6, $pop96
	i64.const	$push95=, 7
	i64.shr_u	$push94=, $8, $pop95
	tee_local	$push93=, $8=, $pop94
	i64.const	$push92=, 0
	i64.ne  	$push20=, $pop93, $pop92
	br_if   	0, $pop20
	end_loop
	i32.const	$push99=, 40
	i32.add 	$push98=, $7, $pop99
	tee_local	$push97=, $7=, $pop98
	i32.ne  	$push21=, $pop97, $2
	br_if   	0, $pop21
	end_loop
	i32.store	0($0), $6
.LBB55_16:
	end_block
	i32.const	$push22=, 40
	i32.add 	$push23=, $1, $pop22
	i32.load	$push104=, 0($pop23)
	tee_local	$push103=, $2=, $pop104
	i32.load	$push102=, 36($1)
	tee_local	$push101=, $7=, $pop102
	i32.sub 	$push24=, $pop103, $pop101
	i32.const	$push100=, 40
	i32.div_s	$push25=, $pop24, $pop100
	i64.extend_u/i32	$8=, $pop25
.LBB55_17:
	loop    	
	i32.const	$push109=, 1
	i32.add 	$6=, $6, $pop109
	i64.const	$push108=, 7
	i64.shr_u	$push107=, $8, $pop108
	tee_local	$push106=, $8=, $pop107
	i64.const	$push105=, 0
	i64.ne  	$push26=, $pop106, $pop105
	br_if   	0, $pop26
	end_loop
	i32.store	0($0), $6
	block   	
	i32.eq  	$push27=, $7, $2
	br_if   	0, $pop27
.LBB55_20:
	loop    	
	i32.const	$push118=, 16
	i32.add 	$6=, $6, $pop118
	i32.const	$push117=, 20
	i32.add 	$push28=, $7, $pop117
	i32.load	$push116=, 0($pop28)
	tee_local	$push115=, $3=, $pop116
	i32.load	$push114=, 16($7)
	tee_local	$push113=, $4=, $pop114
	i32.sub 	$push112=, $pop115, $pop113
	tee_local	$push111=, $5=, $pop112
	i32.const	$push110=, 4
	i32.shr_s	$push29=, $pop111, $pop110
	i64.extend_u/i32	$8=, $pop29
.LBB55_21:
	loop    	
	i32.const	$push123=, 1
	i32.add 	$6=, $6, $pop123
	i64.const	$push122=, 7
	i64.shr_u	$push121=, $8, $pop122
	tee_local	$push120=, $8=, $pop121
	i64.const	$push119=, 0
	i64.ne  	$push30=, $pop120, $pop119
	br_if   	0, $pop30
	end_loop
	block   	
	i32.eq  	$push31=, $4, $3
	br_if   	0, $pop31
	i32.const	$push124=, -16
	i32.and 	$push32=, $5, $pop124
	i32.add 	$6=, $pop32, $6
.LBB55_24:
	end_block
	i32.const	$push129=, 32
	i32.add 	$push33=, $7, $pop129
	i32.load	$push128=, 0($pop33)
	tee_local	$push127=, $3=, $pop128
	i32.add 	$push34=, $6, $pop127
	i32.load	$push126=, 28($7)
	tee_local	$push125=, $4=, $pop126
	i32.sub 	$6=, $pop34, $pop125
	i32.sub 	$push35=, $3, $4
	i64.extend_u/i32	$8=, $pop35
.LBB55_25:
	loop    	
	i32.const	$push134=, 1
	i32.add 	$6=, $6, $pop134
	i64.const	$push133=, 7
	i64.shr_u	$push132=, $8, $pop133
	tee_local	$push131=, $8=, $pop132
	i64.const	$push130=, 0
	i64.ne  	$push36=, $pop131, $pop130
	br_if   	0, $pop36
	end_loop
	i32.const	$push137=, 40
	i32.add 	$push136=, $7, $pop137
	tee_local	$push135=, $7=, $pop136
	i32.ne  	$push37=, $pop135, $2
	br_if   	0, $pop37
	end_loop
	i32.store	0($0), $6
.LBB55_28:
	end_block
	i32.const	$push38=, 52
	i32.add 	$push39=, $1, $pop38
	i32.load	$push141=, 0($pop39)
	tee_local	$push140=, $5=, $pop141
	i32.load	$push139=, 48($1)
	tee_local	$push138=, $7=, $pop139
	i32.sub 	$push40=, $pop140, $pop138
	i32.const	$push41=, 4
	i32.shr_s	$push42=, $pop40, $pop41
	i64.extend_u/i32	$8=, $pop42
.LBB55_29:
	loop    	
	i32.const	$push146=, 1
	i32.add 	$6=, $6, $pop146
	i64.const	$push145=, 7
	i64.shr_u	$push144=, $8, $pop145
	tee_local	$push143=, $8=, $pop144
	i64.const	$push142=, 0
	i64.ne  	$push43=, $pop143, $pop142
	br_if   	0, $pop43
	end_loop
	i32.store	0($0), $6
	block   	
	i32.eq  	$push44=, $7, $5
	br_if   	0, $pop44
.LBB55_32:
	loop    	
	i32.const	$push152=, 8
	i32.add 	$push45=, $7, $pop152
	i32.load	$push151=, 0($pop45)
	tee_local	$push150=, $3=, $pop151
	i32.add 	$push46=, $6, $pop150
	i32.const	$push149=, 2
	i32.add 	$push47=, $pop46, $pop149
	i32.load	$push148=, 4($7)
	tee_local	$push147=, $4=, $pop148
	i32.sub 	$6=, $pop47, $pop147
	i32.sub 	$push48=, $3, $4
	i64.extend_u/i32	$8=, $pop48
.LBB55_33:
	loop    	
	i32.const	$push157=, 1
	i32.add 	$6=, $6, $pop157
	i64.const	$push156=, 7
	i64.shr_u	$push155=, $8, $pop156
	tee_local	$push154=, $8=, $pop155
	i64.const	$push153=, 0
	i64.ne  	$push49=, $pop154, $pop153
	br_if   	0, $pop49
	end_loop
	i32.const	$push160=, 16
	i32.add 	$push159=, $7, $pop160
	tee_local	$push158=, $7=, $pop159
	i32.ne  	$push50=, $pop158, $5
	br_if   	0, $pop50
	end_loop
	i32.store	0($0), $6
.LBB55_36:
	end_block
	copy_local	$push161=, $0
	.endfunc
.Lfunc_end55:
	.size	_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE, .Lfunc_end55-_ZN5eosiolsINS_10datastreamIjEEEERT_S4_RKNS_11transactionE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE
	.weak	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE
	.type	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE,@function
_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32
	i32.const	$push49=, 0
	i32.const	$push46=, 0
	i32.load	$push47=, __stack_pointer($pop46)
	i32.const	$push48=, 16
	i32.sub 	$push76=, $pop47, $pop48
	tee_local	$push75=, $7=, $pop76
	i32.store	__stack_pointer($pop49), $pop75
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 3
	i32.gt_s	$push4=, $pop2, $pop3
	i32.const	$push74=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop4, $pop74
	i32.load	$push5=, 4($0)
	i32.const	$push73=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop5, $1, $pop73
	i32.load	$push6=, 4($0)
	i32.const	$push72=, 4
	i32.add 	$push71=, $pop6, $pop72
	tee_local	$push70=, $4=, $pop71
	i32.store	4($0), $pop70
	i32.load	$push7=, 8($0)
	i32.sub 	$push8=, $pop7, $4
	i32.const	$push69=, 1
	i32.gt_s	$push9=, $pop8, $pop69
	i32.const	$push68=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop9, $pop68
	i32.load	$push11=, 4($0)
	i32.const	$push67=, 4
	i32.add 	$push10=, $1, $pop67
	i32.const	$push12=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $pop10, $pop12
	i32.load	$push13=, 4($0)
	i32.const	$push66=, 2
	i32.add 	$push65=, $pop13, $pop66
	tee_local	$push64=, $4=, $pop65
	i32.store	4($0), $pop64
	i32.load	$push14=, 8($0)
	i32.sub 	$push15=, $pop14, $4
	i32.const	$push63=, 3
	i32.gt_s	$push16=, $pop15, $pop63
	i32.const	$push62=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop16, $pop62
	i32.load	$push18=, 4($0)
	i32.const	$push61=, 8
	i32.add 	$push17=, $1, $pop61
	i32.const	$push60=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop18, $pop17, $pop60
	i32.load	$push19=, 4($0)
	i32.const	$push59=, 4
	i32.add 	$push58=, $pop19, $pop59
	tee_local	$push57=, $5=, $pop58
	i32.store	4($0), $pop57
	i64.load32_u	$6=, 12($1)
.LBB56_1:
	loop    	
	i32.wrap/i64	$4=, $6
	i64.const	$push94=, 7
	i64.shr_u	$push93=, $6, $pop94
	tee_local	$push92=, $6=, $pop93
	i64.const	$push91=, 0
	i64.ne  	$push90=, $pop92, $pop91
	tee_local	$push89=, $2=, $pop90
	i32.const	$push88=, 7
	i32.shl 	$push21=, $pop89, $pop88
	i32.const	$push87=, 127
	i32.and 	$push20=, $4, $pop87
	i32.or  	$push22=, $pop21, $pop20
	i32.store8	14($7), $pop22
	i32.const	$push86=, 8
	i32.add 	$push23=, $0, $pop86
	i32.load	$push24=, 0($pop23)
	i32.sub 	$push25=, $pop24, $5
	i32.const	$push85=, 0
	i32.gt_s	$push26=, $pop25, $pop85
	i32.const	$push84=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop26, $pop84
	i32.const	$push83=, 4
	i32.add 	$push82=, $0, $pop83
	tee_local	$push81=, $4=, $pop82
	i32.load	$push27=, 0($pop81)
	i32.const	$push53=, 14
	i32.add 	$push54=, $7, $pop53
	i32.const	$push80=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop27, $pop54, $pop80
	i32.load	$push28=, 0($4)
	i32.const	$push79=, 1
	i32.add 	$push78=, $pop28, $pop79
	tee_local	$push77=, $5=, $pop78
	i32.store	0($4), $pop77
	br_if   	0, $2
	end_loop
	i32.const	$push29=, 8
	i32.add 	$push104=, $0, $pop29
	tee_local	$push103=, $3=, $pop104
	i32.load	$push30=, 0($pop103)
	i32.sub 	$push31=, $pop30, $5
	i32.const	$push102=, 0
	i32.gt_s	$push32=, $pop31, $pop102
	i32.const	$push101=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop32, $pop101
	i32.const	$push35=, 4
	i32.add 	$push100=, $0, $pop35
	tee_local	$push99=, $4=, $pop100
	i32.load	$push36=, 0($pop99)
	i32.const	$push33=, 16
	i32.add 	$push34=, $1, $pop33
	i32.const	$push98=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop36, $pop34, $pop98
	i32.load	$push37=, 0($4)
	i32.const	$push97=, 1
	i32.add 	$push96=, $pop37, $pop97
	tee_local	$push95=, $5=, $pop96
	i32.store	0($4), $pop95
	i64.load32_u	$6=, 20($1)
.LBB56_3:
	loop    	
	i32.wrap/i64	$2=, $6
	i64.const	$push118=, 7
	i64.shr_u	$push117=, $6, $pop118
	tee_local	$push116=, $6=, $pop117
	i64.const	$push115=, 0
	i64.ne  	$push114=, $pop116, $pop115
	tee_local	$push113=, $1=, $pop114
	i32.const	$push112=, 7
	i32.shl 	$push39=, $pop113, $pop112
	i32.const	$push111=, 127
	i32.and 	$push38=, $2, $pop111
	i32.or  	$push40=, $pop39, $pop38
	i32.store8	15($7), $pop40
	i32.load	$push41=, 0($3)
	i32.sub 	$push42=, $pop41, $5
	i32.const	$push110=, 0
	i32.gt_s	$push43=, $pop42, $pop110
	i32.const	$push109=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop43, $pop109
	i32.load	$push44=, 0($4)
	i32.const	$push55=, 15
	i32.add 	$push56=, $7, $pop55
	i32.const	$push108=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop44, $pop56, $pop108
	i32.load	$push45=, 0($4)
	i32.const	$push107=, 1
	i32.add 	$push106=, $pop45, $pop107
	tee_local	$push105=, $5=, $pop106
	i32.store	0($4), $pop105
	br_if   	0, $1
	end_loop
	i32.const	$push52=, 0
	i32.const	$push50=, 16
	i32.add 	$push51=, $7, $pop50
	i32.store	__stack_pointer($pop52), $pop51
	copy_local	$push119=, $0
	.endfunc
.Lfunc_end56:
	.size	_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE, .Lfunc_end56-_ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNS_18transaction_headerE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE,@function
_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32, i32
	i32.const	$push36=, 0
	i32.const	$push33=, 0
	i32.load	$push34=, __stack_pointer($pop33)
	i32.const	$push35=, 16
	i32.sub 	$push43=, $pop34, $pop35
	tee_local	$push42=, $8=, $pop43
	i32.store	__stack_pointer($pop36), $pop42
	i32.load	$push1=, 4($1)
	i32.load	$push0=, 0($1)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 40
	i32.div_s	$push4=, $pop2, $pop3
	i64.extend_u/i32	$5=, $pop4
	i32.load	$6=, 4($0)
	i32.const	$push8=, 8
	i32.add 	$3=, $0, $pop8
	i32.const	$push12=, 4
	i32.add 	$4=, $0, $pop12
.LBB57_1:
	loop    	
	i32.wrap/i64	$7=, $5
	i64.const	$push57=, 7
	i64.shr_u	$push56=, $5, $pop57
	tee_local	$push55=, $5=, $pop56
	i64.const	$push54=, 0
	i64.ne  	$push53=, $pop55, $pop54
	tee_local	$push52=, $2=, $pop53
	i32.const	$push51=, 7
	i32.shl 	$push6=, $pop52, $pop51
	i32.const	$push50=, 127
	i32.and 	$push5=, $7, $pop50
	i32.or  	$push7=, $pop6, $pop5
	i32.store8	15($8), $pop7
	i32.load	$push9=, 0($3)
	i32.sub 	$push10=, $pop9, $6
	i32.const	$push49=, 0
	i32.gt_s	$push11=, $pop10, $pop49
	i32.const	$push48=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop11, $pop48
	i32.load	$push13=, 0($4)
	i32.const	$push40=, 15
	i32.add 	$push41=, $8, $pop40
	i32.const	$push47=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop41, $pop47
	i32.load	$push14=, 0($4)
	i32.const	$push46=, 1
	i32.add 	$push45=, $pop14, $pop46
	tee_local	$push44=, $6=, $pop45
	i32.store	0($4), $pop44
	br_if   	0, $2
	end_loop
	block   	
	i32.load	$push62=, 0($1)
	tee_local	$push61=, $7=, $pop62
	i32.const	$push60=, 4
	i32.add 	$push15=, $1, $pop60
	i32.load	$push59=, 0($pop15)
	tee_local	$push58=, $3=, $pop59
	i32.eq  	$push16=, $pop61, $pop58
	br_if   	0, $pop16
	i32.const	$push63=, 4
	i32.add 	$4=, $0, $pop63
.LBB57_4:
	loop    	
	i32.const	$push82=, 8
	i32.add 	$push81=, $0, $pop82
	tee_local	$push80=, $2=, $pop81
	i32.load	$push17=, 0($pop80)
	i32.sub 	$push18=, $pop17, $6
	i32.const	$push79=, 7
	i32.gt_s	$push19=, $pop18, $pop79
	i32.const	$push78=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop19, $pop78
	i32.load	$push20=, 0($4)
	i32.const	$push77=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop20, $7, $pop77
	i32.load	$push21=, 0($4)
	i32.const	$push76=, 8
	i32.add 	$push75=, $pop21, $pop76
	tee_local	$push74=, $6=, $pop75
	i32.store	0($4), $pop74
	i32.load	$push22=, 0($2)
	i32.sub 	$push23=, $pop22, $6
	i32.const	$push73=, 7
	i32.gt_s	$push24=, $pop23, $pop73
	i32.const	$push72=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop24, $pop72
	i32.load	$push26=, 0($4)
	i32.const	$push71=, 8
	i32.add 	$push25=, $7, $pop71
	i32.const	$push70=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop26, $pop25, $pop70
	i32.load	$push27=, 0($4)
	i32.const	$push69=, 8
	i32.add 	$push28=, $pop27, $pop69
	i32.store	0($4), $pop28
	i32.const	$push68=, 16
	i32.add 	$push30=, $7, $pop68
	i32.call	$push31=, _ZN5eosiolsINS_10datastreamIPcEENS_16permission_levelEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE@FUNCTION, $0, $pop30
	i32.const	$push67=, 28
	i32.add 	$push29=, $7, $pop67
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE@FUNCTION, $pop31, $pop29
	i32.const	$push66=, 40
	i32.add 	$push65=, $7, $pop66
	tee_local	$push64=, $7=, $pop65
	i32.eq  	$push32=, $pop64, $3
	br_if   	1, $pop32
	i32.load	$6=, 0($4)
	br      	0
.LBB57_6:
	end_loop
	end_block
	i32.const	$push39=, 0
	i32.const	$push37=, 16
	i32.add 	$push38=, $8, $pop37
	i32.store	__stack_pointer($pop39), $pop38
	copy_local	$push83=, $0
	.endfunc
.Lfunc_end57:
	.size	_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE, .Lfunc_end57-_ZN5eosiolsINS_10datastreamIPcEENS_6actionEEERT_S6_RKNSt3__16vectorIT0_NS7_9allocatorIS9_EEEE

	.section	.text._ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE,"axG",@progbits,_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE,comdat
	.hidden	_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE
	.weak	_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE
	.type	_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE,@function
_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i64, i32, i32
	i32.const	$push27=, 0
	i32.const	$push24=, 0
	i32.load	$push25=, __stack_pointer($pop24)
	i32.const	$push26=, 16
	i32.sub 	$push35=, $pop25, $pop26
	tee_local	$push34=, $7=, $pop35
	i32.store	__stack_pointer($pop27), $pop34
	i32.load	$push1=, 4($1)
	i32.load	$push0=, 0($1)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push33=, 4
	i32.shr_s	$push3=, $pop2, $pop33
	i64.extend_u/i32	$5=, $pop3
	i32.load	$6=, 4($0)
	i32.const	$push7=, 8
	i32.add 	$3=, $0, $pop7
.LBB58_1:
	loop    	
	i32.wrap/i64	$4=, $5
	i64.const	$push52=, 7
	i64.shr_u	$push51=, $5, $pop52
	tee_local	$push50=, $5=, $pop51
	i64.const	$push49=, 0
	i64.ne  	$push48=, $pop50, $pop49
	tee_local	$push47=, $2=, $pop48
	i32.const	$push46=, 7
	i32.shl 	$push5=, $pop47, $pop46
	i32.const	$push45=, 127
	i32.and 	$push4=, $4, $pop45
	i32.or  	$push6=, $pop5, $pop4
	i32.store8	15($7), $pop6
	i32.load	$push8=, 0($3)
	i32.sub 	$push9=, $pop8, $6
	i32.const	$push44=, 0
	i32.gt_s	$push10=, $pop9, $pop44
	i32.const	$push43=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop10, $pop43
	i32.const	$push42=, 4
	i32.add 	$push41=, $0, $pop42
	tee_local	$push40=, $4=, $pop41
	i32.load	$push11=, 0($pop40)
	i32.const	$push31=, 15
	i32.add 	$push32=, $7, $pop31
	i32.const	$push39=, 1
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $pop32, $pop39
	i32.load	$push12=, 0($4)
	i32.const	$push38=, 1
	i32.add 	$push37=, $pop12, $pop38
	tee_local	$push36=, $6=, $pop37
	i32.store	0($4), $pop36
	br_if   	0, $2
	end_loop
	block   	
	i32.load	$push57=, 0($1)
	tee_local	$push56=, $4=, $pop57
	i32.const	$push55=, 4
	i32.add 	$push13=, $1, $pop55
	i32.load	$push54=, 0($pop13)
	tee_local	$push53=, $2=, $pop54
	i32.eq  	$push14=, $pop56, $pop53
	br_if   	0, $pop14
	i32.const	$push15=, 8
	i32.add 	$3=, $0, $pop15
.LBB58_4:
	loop    	
	i32.load	$push16=, 0($3)
	i32.sub 	$push17=, $pop16, $6
	i32.const	$push68=, 1
	i32.gt_s	$push18=, $pop17, $pop68
	i32.const	$push67=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop18, $pop67
	i32.const	$push66=, 4
	i32.add 	$push65=, $0, $pop66
	tee_local	$push64=, $6=, $pop65
	i32.load	$push19=, 0($pop64)
	i32.const	$push63=, 2
	i32.call	$drop=, memcpy@FUNCTION, $pop19, $4, $pop63
	i32.load	$push20=, 0($6)
	i32.const	$push62=, 2
	i32.add 	$push21=, $pop20, $pop62
	i32.store	0($6), $pop21
	i32.const	$push61=, 4
	i32.add 	$push22=, $4, $pop61
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__16vectorIcNS6_9allocatorIcEEEE@FUNCTION, $0, $pop22
	i32.const	$push60=, 16
	i32.add 	$push59=, $4, $pop60
	tee_local	$push58=, $4=, $pop59
	i32.eq  	$push23=, $pop58, $2
	br_if   	1, $pop23
	i32.load	$6=, 0($6)
	br      	0
.LBB58_6:
	end_loop
	end_block
	i32.const	$push30=, 0
	i32.const	$push28=, 16
	i32.add 	$push29=, $7, $pop28
	i32.store	__stack_pointer($pop30), $pop29
	copy_local	$push69=, $0
	.endfunc
.Lfunc_end58:
	.size	_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE, .Lfunc_end58-_ZN5eosiolsINS_10datastreamIPcEENSt3__15tupleIJtNS4_6vectorIcNS4_9allocatorIcEEEEEEEEERT_SC_RKNS6_IT0_NS7_ISD_EEEE

	.section	.text._ZZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRSD_E_clINS3_4itemEEEDaSF_,"axG",@progbits,_ZZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRSD_E_clINS3_4itemEEEDaSF_,comdat
	.hidden	_ZZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRSD_E_clINS3_4itemEEEDaSF_
	.weak	_ZZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRSD_E_clINS3_4itemEEEDaSF_
	.type	_ZZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRSD_E_clINS3_4itemEEEDaSF_,@function
_ZZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRSD_E_clINS3_4itemEEEDaSF_:
	.param  	i32, i32
	.local  	i32, i64, i32
	i32.const	$push32=, 0
	i32.const	$push29=, 0
	i32.load	$push30=, __stack_pointer($pop29)
	i32.const	$push31=, 32
	i32.sub 	$push50=, $pop30, $pop31
	tee_local	$push49=, $4=, $pop50
	i32.store	__stack_pointer($pop32), $pop49
	i32.load	$2=, 0($0)
	i32.load	$push0=, 4($0)
	call    	_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE0_clES7_@FUNCTION, $pop0, $1
	i32.const	$push2=, 1
	i32.const	$push1=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop2, $pop1
	i32.const	$push3=, 8
	i32.call	$drop=, memcpy@FUNCTION, $4, $1, $pop3
	i32.const	$push48=, 1
	i32.const	$push47=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop48, $pop47
	i32.const	$push46=, 8
	i32.or  	$push5=, $4, $pop46
	i32.const	$push45=, 8
	i32.add 	$push4=, $1, $pop45
	i32.const	$push6=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop5, $pop4, $pop6
	i32.const	$push44=, 1
	i32.const	$push43=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop44, $pop43
	i32.const	$push8=, 12
	i32.or  	$push9=, $4, $pop8
	i32.const	$push42=, 16
	i32.add 	$push7=, $1, $pop42
	i32.const	$push41=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop9, $pop7, $pop41
	i32.const	$push40=, 1
	i32.const	$push39=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop40, $pop39
	i32.const	$push12=, 20
	i32.add 	$push13=, $4, $pop12
	i32.const	$push10=, 24
	i32.add 	$push11=, $1, $pop10
	i32.const	$push38=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop11, $pop38
	i64.load	$push14=, 8($2)
	i64.const	$push18=, -5001342326447013888
	i32.load	$push15=, 8($0)
	i64.load	$push16=, 0($pop15)
	i64.load	$push37=, 0($1)
	tee_local	$push36=, $3=, $pop37
	i32.const	$push17=, 28
	i32.call	$push19=, db_store_i64@FUNCTION, $pop14, $pop18, $pop16, $pop36, $4, $pop17
	i32.store	36($1), $pop19
	block   	
	i64.load	$push20=, 16($2)
	i64.lt_u	$push21=, $3, $pop20
	br_if   	0, $pop21
	i32.const	$push51=, 16
	i32.add 	$push28=, $2, $pop51
	i64.const	$push26=, -2
	i64.const	$push24=, 1
	i64.add 	$push25=, $3, $pop24
	i64.const	$push22=, -3
	i64.gt_u	$push23=, $3, $pop22
	i64.select	$push27=, $pop26, $pop25, $pop23
	i64.store	0($pop28), $pop27
.LBB59_2:
	end_block
	i32.const	$push35=, 0
	i32.const	$push33=, 32
	i32.add 	$push34=, $4, $pop33
	i32.store	__stack_pointer($pop35), $pop34
	.endfunc
.Lfunc_end59:
	.size	_ZZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRSD_E_clINS3_4itemEEEDaSF_, .Lfunc_end59-_ZZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE7emplaceIZNS1_12horustokenio23create_or_update_refundERyyRKNS_5assetEEUlRS2_E0_EENS3_14const_iteratorEyOT_ENKUlRSD_E_clINS3_4itemEEEDaSF_

	.section	.text._ZNSt3__16vectorIN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,"axG",@progbits,_ZNSt3__16vectorIN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,comdat
	.hidden	_ZNSt3__16vectorIN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.weak	_ZNSt3__16vectorIN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_
	.type	_ZNSt3__16vectorIN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_,@function
_ZNSt3__16vectorIN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_:
	.param  	i32, i32, i32, i32
	.local  	i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push0=, 4($0)
	i32.load	$push46=, 0($0)
	tee_local	$push45=, $6=, $pop46
	i32.sub 	$push1=, $pop0, $pop45
	i32.const	$push44=, 24
	i32.div_s	$push43=, $pop1, $pop44
	tee_local	$push42=, $4=, $pop43
	i32.const	$push2=, 1
	i32.add 	$push41=, $pop42, $pop2
	tee_local	$push40=, $5=, $pop41
	i32.const	$push3=, 178956971
	i32.ge_u	$push4=, $pop40, $pop3
	br_if   	0, $pop4
	i32.const	$7=, 178956970
	block   	
	block   	
	i32.load	$push5=, 8($0)
	i32.sub 	$push6=, $pop5, $6
	i32.const	$push49=, 24
	i32.div_s	$push48=, $pop6, $pop49
	tee_local	$push47=, $6=, $pop48
	i32.const	$push7=, 89478484
	i32.gt_u	$push8=, $pop47, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, 1
	i32.shl 	$push53=, $6, $pop9
	tee_local	$push52=, $7=, $pop53
	i32.lt_u	$push10=, $7, $5
	i32.select	$push51=, $5, $pop52, $pop10
	tee_local	$push50=, $7=, $pop51
	i32.eqz 	$push79=, $pop50
	br_if   	1, $pop79
.LBB60_3:
	end_block
	i32.const	$push11=, 24
	i32.mul 	$push12=, $7, $pop11
	i32.call	$6=, _Znwj@FUNCTION, $pop12
	br      	2
.LBB60_4:
	end_block
	i32.const	$7=, 0
	i32.const	$6=, 0
	br      	1
.LBB60_5:
	end_block
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $0
	unreachable
.LBB60_6:
	end_block
	i32.load	$5=, 0($1)
	i32.const	$push62=, 0
	i32.store	0($1), $pop62
	i32.const	$push13=, 24
	i32.mul 	$push14=, $4, $pop13
	i32.add 	$push61=, $6, $pop14
	tee_local	$push60=, $1=, $pop61
	i32.store	0($pop60), $5
	i64.load	$push15=, 0($2)
	i64.store	8($1), $pop15
	i32.load	$push16=, 0($3)
	i32.store	16($1), $pop16
	i32.const	$push59=, 24
	i32.mul 	$push17=, $7, $pop59
	i32.add 	$4=, $6, $pop17
	i32.const	$push58=, 24
	i32.add 	$5=, $1, $pop58
	block   	
	block   	
	i32.const	$push18=, 4
	i32.add 	$push19=, $0, $pop18
	i32.load	$push57=, 0($pop19)
	tee_local	$push56=, $6=, $pop57
	i32.load	$push55=, 0($0)
	tee_local	$push54=, $7=, $pop55
	i32.eq  	$push20=, $pop56, $pop54
	br_if   	0, $pop20
.LBB60_8:
	loop    	
	i32.const	$push74=, -24
	i32.add 	$push73=, $6, $pop74
	tee_local	$push72=, $2=, $pop73
	i32.load	$3=, 0($pop72)
	i32.const	$push71=, 0
	i32.store	0($2), $pop71
	i32.const	$push70=, -24
	i32.add 	$push21=, $1, $pop70
	i32.store	0($pop21), $3
	i32.const	$push69=, -8
	i32.add 	$push22=, $1, $pop69
	i32.const	$push68=, -8
	i32.add 	$push23=, $6, $pop68
	i32.load	$push24=, 0($pop23)
	i32.store	0($pop22), $pop24
	i32.const	$push67=, -12
	i32.add 	$push25=, $1, $pop67
	i32.const	$push66=, -12
	i32.add 	$push26=, $6, $pop66
	i32.load	$push27=, 0($pop26)
	i32.store	0($pop25), $pop27
	i32.const	$push65=, -16
	i32.add 	$push28=, $1, $pop65
	i32.const	$push64=, -16
	i32.add 	$push29=, $6, $pop64
	i32.load	$push30=, 0($pop29)
	i32.store	0($pop28), $pop30
	i32.const	$push63=, -24
	i32.add 	$1=, $1, $pop63
	copy_local	$6=, $2
	i32.ne  	$push31=, $7, $2
	br_if   	0, $pop31
	end_loop
	i32.const	$push32=, 4
	i32.add 	$push33=, $0, $pop32
	i32.load	$7=, 0($pop33)
	i32.load	$6=, 0($0)
	br      	1
.LBB60_10:
	end_block
	copy_local	$6=, $7
.LBB60_11:
	end_block
	i32.store	0($0), $1
	i32.const	$push34=, 4
	i32.add 	$push35=, $0, $pop34
	i32.store	0($pop35), $5
	i32.const	$push36=, 8
	i32.add 	$push37=, $0, $pop36
	i32.store	0($pop37), $4
	block   	
	i32.eq  	$push38=, $7, $6
	br_if   	0, $pop38
.LBB60_13:
	loop    	
	i32.const	$push78=, -24
	i32.add 	$push77=, $7, $pop78
	tee_local	$push76=, $7=, $pop77
	i32.load	$1=, 0($pop76)
	i32.const	$push75=, 0
	i32.store	0($7), $pop75
	block   	
	i32.eqz 	$push80=, $1
	br_if   	0, $pop80
	call    	_ZdlPv@FUNCTION, $1
.LBB60_15:
	end_block
	i32.ne  	$push39=, $6, $7
	br_if   	0, $pop39
.LBB60_16:
	end_loop
	end_block
	block   	
	i32.eqz 	$push81=, $6
	br_if   	0, $pop81
	call    	_ZdlPv@FUNCTION, $6
.LBB60_18:
	end_block
	.endfunc
.Lfunc_end60:
	.size	_ZNSt3__16vectorIN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_, .Lfunc_end60-_ZNSt3__16vectorIN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE8item_ptrENS_9allocatorIS6_EEE24__emplace_back_slow_pathIJNS_10unique_ptrINS5_4itemENS_14default_deleteISC_EEEERyRlEEEvDpOT_

	.section	.text._ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE0_clES7_,"axG",@progbits,_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE0_clES7_,comdat
	.hidden	_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE0_clES7_
	.weak	_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE0_clES7_
	.type	_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE0_clES7_,@function
_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE0_clES7_:
	.param  	i32, i32
	.local  	i32, i64, i32, i32
	i32.load	$push0=, 0($0)
	i64.load	$push1=, 0($pop0)
	i64.store	0($1), $pop1
	i32.load	$2=, 4($0)
	i32.const	$push42=, 1
	i32.const	$push2=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop42, $pop2
	i32.const	$4=, 0
	i64.const	$3=, 357913743176
.LBB61_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push3=, $3
	i32.const	$push45=, 24
	i32.shl 	$push4=, $pop3, $pop45
	i32.const	$push44=, -1073741825
	i32.add 	$push5=, $pop4, $pop44
	i32.const	$push43=, 452984830
	i32.gt_u	$push6=, $pop5, $pop43
	br_if   	1, $pop6
	block   	
	i64.const	$push50=, 8
	i64.shr_u	$push49=, $3, $pop50
	tee_local	$push48=, $3=, $pop49
	i64.const	$push47=, 255
	i64.and 	$push7=, $pop48, $pop47
	i64.const	$push46=, 0
	i64.ne  	$push8=, $pop7, $pop46
	br_if   	0, $pop8
.LBB61_3:
	loop    	
	i64.const	$push55=, 8
	i64.shr_u	$push54=, $3, $pop55
	tee_local	$push53=, $3=, $pop54
	i64.const	$push52=, 255
	i64.and 	$push9=, $pop53, $pop52
	i64.const	$push51=, 0
	i64.ne  	$push10=, $pop9, $pop51
	br_if   	3, $pop10
	i32.const	$push59=, 1
	i32.add 	$push58=, $4, $pop59
	tee_local	$push57=, $4=, $pop58
	i32.const	$push56=, 7
	i32.lt_s	$push11=, $pop57, $pop56
	br_if   	0, $pop11
.LBB61_5:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push63=, 1
	i32.add 	$push62=, $4, $pop63
	tee_local	$push61=, $4=, $pop62
	i32.const	$push60=, 7
	i32.lt_s	$push12=, $pop61, $pop60
	br_if   	0, $pop12
	br      	2
.LBB61_6:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB61_7:
	end_block
	i32.const	$push13=, .L.str
	call    	eosio_assert@FUNCTION, $5, $pop13
	i64.load	$push14=, 8($2)
	i64.const	$push65=, 91625918253060
	i64.eq  	$push15=, $pop14, $pop65
	i32.const	$push16=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop15, $pop16
	block   	
	i64.load	$push17=, 0($2)
	i64.const	$push64=, 0
	i64.ge_s	$push18=, $pop17, $pop64
	br_if   	0, $pop18
	i32.const	$push19=, 4
	i32.add 	$push20=, $0, $pop19
	i32.load	$push70=, 0($pop20)
	tee_local	$push69=, $4=, $pop70
	i64.load	$3=, 0($pop69)
	i32.const	$push68=, 24
	i32.add 	$push21=, $1, $pop68
	i64.load	$push22=, 8($4)
	i64.store	0($pop21), $pop22
	i64.const	$push67=, 0
	i64.sub 	$push23=, $pop67, $3
	i64.store	16($1), $pop23
	i32.const	$push66=, 1
	i32.const	$push24=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop66, $pop24
	i64.const	$3=, 357913743176
	i32.const	$4=, 0
.LBB61_9:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push25=, $3
	i32.const	$push73=, 24
	i32.shl 	$push26=, $pop25, $pop73
	i32.const	$push72=, -1073741825
	i32.add 	$push27=, $pop26, $pop72
	i32.const	$push71=, 452984830
	i32.gt_u	$push28=, $pop27, $pop71
	br_if   	1, $pop28
	block   	
	i64.const	$push78=, 8
	i64.shr_u	$push77=, $3, $pop78
	tee_local	$push76=, $3=, $pop77
	i64.const	$push75=, 255
	i64.and 	$push29=, $pop76, $pop75
	i64.const	$push74=, 0
	i64.ne  	$push30=, $pop29, $pop74
	br_if   	0, $pop30
.LBB61_11:
	loop    	
	i64.const	$push83=, 8
	i64.shr_u	$push82=, $3, $pop83
	tee_local	$push81=, $3=, $pop82
	i64.const	$push80=, 255
	i64.and 	$push31=, $pop81, $pop80
	i64.const	$push79=, 0
	i64.ne  	$push32=, $pop31, $pop79
	br_if   	3, $pop32
	i32.const	$push87=, 1
	i32.add 	$push86=, $4, $pop87
	tee_local	$push85=, $4=, $pop86
	i32.const	$push84=, 7
	i32.lt_s	$push33=, $pop85, $pop84
	br_if   	0, $pop33
.LBB61_13:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push91=, 1
	i32.add 	$push90=, $4, $pop91
	tee_local	$push89=, $4=, $pop90
	i32.const	$push88=, 7
	i32.lt_s	$push34=, $pop89, $pop88
	br_if   	0, $pop34
	br      	2
.LBB61_14:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB61_15:
	end_block
	i32.const	$push35=, .L.str
	call    	eosio_assert@FUNCTION, $5, $pop35
	i32.const	$push36=, 4
	i32.add 	$push37=, $0, $pop36
	i32.load	$push94=, 0($pop37)
	tee_local	$push93=, $4=, $pop94
	i64.const	$push92=, 91625918253060
	i64.store	8($pop93), $pop92
	i64.const	$push38=, 0
	i64.store	0($4), $pop38
.LBB61_16:
	end_block
	i64.call	$push40=, current_time@FUNCTION
	i64.const	$push39=, 1000000
	i64.div_u	$push41=, $pop40, $pop39
	i64.store32	8($1), $pop41
	.endfunc
.Lfunc_end61:
	.size	_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE0_clES7_, .Lfunc_end61-_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE0_clES7_

	.section	.text._ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE_clES7_,"axG",@progbits,_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE_clES7_,comdat
	.hidden	_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE_clES7_
	.weak	_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE_clES7_
	.type	_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE_clES7_,@function
_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE_clES7_:
	.param  	i32, i32
	.local  	i32, i64, i32, i32
	i32.load	$2=, 0($0)
	i32.const	$push85=, 1
	i32.const	$push0=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop85, $pop0
	i32.const	$4=, 0
	i64.const	$3=, 357913743176
.LBB62_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push1=, $3
	i32.const	$push88=, 24
	i32.shl 	$push2=, $pop1, $pop88
	i32.const	$push87=, -1073741825
	i32.add 	$push3=, $pop2, $pop87
	i32.const	$push86=, 452984830
	i32.gt_u	$push4=, $pop3, $pop86
	br_if   	1, $pop4
	block   	
	i64.const	$push93=, 8
	i64.shr_u	$push92=, $3, $pop93
	tee_local	$push91=, $3=, $pop92
	i64.const	$push90=, 255
	i64.and 	$push5=, $pop91, $pop90
	i64.const	$push89=, 0
	i64.ne  	$push6=, $pop5, $pop89
	br_if   	0, $pop6
.LBB62_3:
	loop    	
	i64.const	$push98=, 8
	i64.shr_u	$push97=, $3, $pop98
	tee_local	$push96=, $3=, $pop97
	i64.const	$push95=, 255
	i64.and 	$push7=, $pop96, $pop95
	i64.const	$push94=, 0
	i64.ne  	$push8=, $pop7, $pop94
	br_if   	3, $pop8
	i32.const	$push102=, 1
	i32.add 	$push101=, $4, $pop102
	tee_local	$push100=, $4=, $pop101
	i32.const	$push99=, 7
	i32.lt_s	$push9=, $pop100, $pop99
	br_if   	0, $pop9
.LBB62_5:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push106=, 1
	i32.add 	$push105=, $4, $pop106
	tee_local	$push104=, $4=, $pop105
	i32.const	$push103=, 7
	i32.lt_s	$push10=, $pop104, $pop103
	br_if   	0, $pop10
	br      	2
.LBB62_6:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB62_7:
	end_block
	i32.const	$push11=, .L.str
	call    	eosio_assert@FUNCTION, $5, $pop11
	i64.load	$push12=, 8($2)
	i64.const	$push107=, 91625918253060
	i64.eq  	$push13=, $pop12, $pop107
	i32.const	$push14=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop13, $pop14
	block   	
	i64.load	$push15=, 0($2)
	i64.const	$push16=, -1
	i64.gt_s	$push17=, $pop15, $pop16
	br_if   	0, $pop17
	i64.call	$push19=, current_time@FUNCTION
	i64.const	$push18=, 1000000
	i64.div_u	$push20=, $pop19, $pop18
	i64.store32	8($1), $pop20
.LBB62_9:
	end_block
	i32.load	$push113=, 0($0)
	tee_local	$push112=, $4=, $pop113
	i64.load	$push23=, 8($pop112)
	i32.const	$push111=, 24
	i32.add 	$push21=, $1, $pop111
	i64.load	$push22=, 0($pop21)
	i64.eq  	$push24=, $pop23, $pop22
	i32.const	$push25=, .L.str.45
	call    	eosio_assert@FUNCTION, $pop24, $pop25
	i64.load	$push27=, 16($1)
	i64.load	$push26=, 0($4)
	i64.sub 	$push110=, $pop27, $pop26
	tee_local	$push109=, $3=, $pop110
	i64.store	16($1), $pop109
	i64.const	$push28=, -4611686018427387904
	i64.gt_s	$push29=, $3, $pop28
	i32.const	$push30=, .L.str.46
	call    	eosio_assert@FUNCTION, $pop29, $pop30
	i64.load	$push31=, 16($1)
	i64.const	$push32=, 4611686018427387904
	i64.lt_s	$push33=, $pop31, $pop32
	i32.const	$push34=, .L.str.47
	call    	eosio_assert@FUNCTION, $pop33, $pop34
	i32.const	$push108=, 1
	i32.const	$push35=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop108, $pop35
	i64.const	$3=, 357913743176
	i32.const	$4=, 0
.LBB62_10:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push36=, $3
	i32.const	$push116=, 24
	i32.shl 	$push37=, $pop36, $pop116
	i32.const	$push115=, -1073741825
	i32.add 	$push38=, $pop37, $pop115
	i32.const	$push114=, 452984830
	i32.gt_u	$push39=, $pop38, $pop114
	br_if   	1, $pop39
	block   	
	i64.const	$push121=, 8
	i64.shr_u	$push120=, $3, $pop121
	tee_local	$push119=, $3=, $pop120
	i64.const	$push118=, 255
	i64.and 	$push40=, $pop119, $pop118
	i64.const	$push117=, 0
	i64.ne  	$push41=, $pop40, $pop117
	br_if   	0, $pop41
.LBB62_12:
	loop    	
	i64.const	$push126=, 8
	i64.shr_u	$push125=, $3, $pop126
	tee_local	$push124=, $3=, $pop125
	i64.const	$push123=, 255
	i64.and 	$push42=, $pop124, $pop123
	i64.const	$push122=, 0
	i64.ne  	$push43=, $pop42, $pop122
	br_if   	3, $pop43
	i32.const	$push130=, 1
	i32.add 	$push129=, $4, $pop130
	tee_local	$push128=, $4=, $pop129
	i32.const	$push127=, 7
	i32.lt_s	$push44=, $pop128, $pop127
	br_if   	0, $pop44
.LBB62_14:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push134=, 1
	i32.add 	$push133=, $4, $pop134
	tee_local	$push132=, $4=, $pop133
	i32.const	$push131=, 7
	i32.lt_s	$push45=, $pop132, $pop131
	br_if   	0, $pop45
	br      	2
.LBB62_15:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB62_16:
	end_block
	i32.const	$push46=, .L.str
	call    	eosio_assert@FUNCTION, $5, $pop46
	i32.const	$push141=, 24
	i32.add 	$push140=, $1, $pop141
	tee_local	$push139=, $4=, $pop140
	i64.load	$push47=, 0($pop139)
	i64.const	$push138=, 91625918253060
	i64.eq  	$push48=, $pop47, $pop138
	i32.const	$push49=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop48, $pop49
	block   	
	i32.const	$push50=, 16
	i32.add 	$push51=, $1, $pop50
	i64.load	$push137=, 0($pop51)
	tee_local	$push136=, $3=, $pop137
	i64.const	$push135=, 0
	i64.lt_s	$push52=, $pop136, $pop135
	br_if   	0, $pop52
	i32.const	$push142=, 1
	i32.const	$push53=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop142, $pop53
	i64.const	$3=, 357913743176
	i32.const	$4=, 0
.LBB62_18:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push54=, $3
	i32.const	$push145=, 24
	i32.shl 	$push55=, $pop54, $pop145
	i32.const	$push144=, -1073741825
	i32.add 	$push56=, $pop55, $pop144
	i32.const	$push143=, 452984830
	i32.gt_u	$push57=, $pop56, $pop143
	br_if   	1, $pop57
	block   	
	i64.const	$push150=, 8
	i64.shr_u	$push149=, $3, $pop150
	tee_local	$push148=, $3=, $pop149
	i64.const	$push147=, 255
	i64.and 	$push58=, $pop148, $pop147
	i64.const	$push146=, 0
	i64.ne  	$push59=, $pop58, $pop146
	br_if   	0, $pop59
.LBB62_20:
	loop    	
	i64.const	$push155=, 8
	i64.shr_u	$push154=, $3, $pop155
	tee_local	$push153=, $3=, $pop154
	i64.const	$push152=, 255
	i64.and 	$push60=, $pop153, $pop152
	i64.const	$push151=, 0
	i64.ne  	$push61=, $pop60, $pop151
	br_if   	3, $pop61
	i32.const	$push159=, 1
	i32.add 	$push158=, $4, $pop159
	tee_local	$push157=, $4=, $pop158
	i32.const	$push156=, 7
	i32.lt_s	$push62=, $pop157, $pop156
	br_if   	0, $pop62
.LBB62_22:
	end_loop
	end_block
	i32.const	$1=, 1
	i32.const	$push163=, 1
	i32.add 	$push162=, $4, $pop163
	tee_local	$push161=, $4=, $pop162
	i32.const	$push160=, 7
	i32.lt_s	$push63=, $pop161, $pop160
	br_if   	0, $pop63
	br      	2
.LBB62_23:
	end_loop
	end_block
	i32.const	$1=, 0
.LBB62_24:
	end_block
	i32.const	$push64=, .L.str
	call    	eosio_assert@FUNCTION, $1, $pop64
	i32.load	$push166=, 0($0)
	tee_local	$push165=, $4=, $pop166
	i64.const	$push164=, 91625918253060
	i64.store	8($pop165), $pop164
	i64.const	$push65=, 0
	i64.store	0($4), $pop65
	return
.LBB62_25:
	end_block
	i32.load	$push170=, 0($0)
	tee_local	$push169=, $5=, $pop170
	i64.load	$push66=, 0($4)
	i64.store	8($pop169), $pop66
	i64.const	$push168=, 0
	i64.sub 	$push67=, $pop168, $3
	i64.store	0($5), $pop67
	i32.const	$push167=, 1
	i32.const	$push68=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop167, $pop68
	i64.const	$3=, 357913743176
	i32.const	$4=, 0
.LBB62_26:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push69=, $3
	i32.const	$push173=, 24
	i32.shl 	$push70=, $pop69, $pop173
	i32.const	$push172=, -1073741825
	i32.add 	$push71=, $pop70, $pop172
	i32.const	$push171=, 452984830
	i32.gt_u	$push72=, $pop71, $pop171
	br_if   	1, $pop72
	block   	
	i64.const	$push178=, 8
	i64.shr_u	$push177=, $3, $pop178
	tee_local	$push176=, $3=, $pop177
	i64.const	$push175=, 255
	i64.and 	$push73=, $pop176, $pop175
	i64.const	$push174=, 0
	i64.ne  	$push74=, $pop73, $pop174
	br_if   	0, $pop74
.LBB62_28:
	loop    	
	i64.const	$push183=, 8
	i64.shr_u	$push182=, $3, $pop183
	tee_local	$push181=, $3=, $pop182
	i64.const	$push180=, 255
	i64.and 	$push75=, $pop181, $pop180
	i64.const	$push179=, 0
	i64.ne  	$push76=, $pop75, $pop179
	br_if   	3, $pop76
	i32.const	$push187=, 1
	i32.add 	$push186=, $4, $pop187
	tee_local	$push185=, $4=, $pop186
	i32.const	$push184=, 7
	i32.lt_s	$push77=, $pop185, $pop184
	br_if   	0, $pop77
.LBB62_30:
	end_loop
	end_block
	i32.const	$5=, 1
	i32.const	$push191=, 1
	i32.add 	$push190=, $4, $pop191
	tee_local	$push189=, $4=, $pop190
	i32.const	$push188=, 7
	i32.lt_s	$push78=, $pop189, $pop188
	br_if   	0, $pop78
	br      	2
.LBB62_31:
	end_loop
	end_block
	i32.const	$5=, 0
.LBB62_32:
	end_block
	i32.const	$push79=, .L.str
	call    	eosio_assert@FUNCTION, $5, $pop79
	i32.const	$push80=, 24
	i32.add 	$push81=, $1, $pop80
	i64.const	$push192=, 91625918253060
	i64.store	0($pop81), $pop192
	i32.const	$push82=, 16
	i32.add 	$push83=, $1, $pop82
	i64.const	$push84=, 0
	i64.store	0($pop83), $pop84
	.endfunc
.Lfunc_end62:
	.size	_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE_clES7_, .Lfunc_end62-_ZZN13horuspaytoken12horustokenio23create_or_update_refundERyyRKN5eosio5assetEENKUlRNS_14refund_requestEE_clES7_

	.section	.text._ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_14refund_requestE,"axG",@progbits,_ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_14refund_requestE,comdat
	.hidden	_ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_14refund_requestE
	.weak	_ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_14refund_requestE
	.type	_ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_14refund_requestE,@function
_ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_14refund_requestE:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.load	$push1=, 8($0)
	i32.load	$push0=, 4($0)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($0)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $1, $pop6, $pop7
	i32.load	$push8=, 4($0)
	i32.const	$push49=, 8
	i32.add 	$push48=, $pop8, $pop49
	tee_local	$push47=, $2=, $pop48
	i32.store	4($0), $pop47
	i32.load	$push9=, 8($0)
	i32.sub 	$push10=, $pop9, $2
	i32.const	$push11=, 3
	i32.gt_u	$push12=, $pop10, $pop11
	i32.const	$push46=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop12, $pop46
	i32.const	$push45=, 8
	i32.add 	$push13=, $1, $pop45
	i32.load	$push14=, 4($0)
	i32.const	$push15=, 4
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $pop14, $pop15
	i32.load	$push16=, 4($0)
	i32.const	$push44=, 4
	i32.add 	$push43=, $pop16, $pop44
	tee_local	$push42=, $2=, $pop43
	i32.store	4($0), $pop42
	i32.load	$push17=, 8($0)
	i32.sub 	$push18=, $pop17, $2
	i32.const	$push41=, 7
	i32.gt_u	$push19=, $pop18, $pop41
	i32.const	$push40=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop19, $pop40
	i32.const	$push20=, 16
	i32.add 	$push21=, $1, $pop20
	i32.load	$push22=, 4($0)
	i32.const	$push39=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop21, $pop22, $pop39
	i32.load	$push23=, 4($0)
	i32.const	$push38=, 8
	i32.add 	$push37=, $pop23, $pop38
	tee_local	$push36=, $2=, $pop37
	i32.store	4($0), $pop36
	i32.load	$push24=, 8($0)
	i32.sub 	$push25=, $pop24, $2
	i32.const	$push35=, 7
	i32.gt_u	$push26=, $pop25, $pop35
	i32.const	$push34=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop26, $pop34
	i32.const	$push27=, 24
	i32.add 	$push28=, $1, $pop27
	i32.load	$push29=, 4($0)
	i32.const	$push33=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop28, $pop29, $pop33
	i32.load	$push30=, 4($0)
	i32.const	$push32=, 8
	i32.add 	$push31=, $pop30, $pop32
	i32.store	4($0), $pop31
	copy_local	$push50=, $0
	.endfunc
.Lfunc_end63:
	.size	_ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_14refund_requestE, .Lfunc_end63-_ZN13horuspaytokenrsIN5eosio10datastreamIPKcEEEERT_S7_RNS_14refund_requestE

	.text
	.hidden	_ZN13horuspaytoken12horustokenio11claimrewardEyy
	.globl	_ZN13horuspaytoken12horustokenio11claimrewardEyy
	.type	_ZN13horuspaytoken12horustokenio11claimrewardEyy,@function
_ZN13horuspaytoken12horustokenio11claimrewardEyy:
	.param  	i32, i64, i64
	.local  	i32, i32, i64, i32, i64, i64, i64, i32
	i32.const	$push297=, 0
	i32.const	$push294=, 0
	i32.load	$push295=, __stack_pointer($pop294)
	i32.const	$push296=, 160
	i32.sub 	$push349=, $pop295, $pop296
	tee_local	$push348=, $10=, $pop349
	i32.store	__stack_pointer($pop297), $pop348
	i32.const	$push347=, 1
	i32.const	$push0=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop347, $pop0
	i32.const	$6=, 0
	i64.const	$8=, 5462355
.LBB64_1:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push1=, $8
	i32.const	$push352=, 24
	i32.shl 	$push2=, $pop1, $pop352
	i32.const	$push351=, -1073741825
	i32.add 	$push3=, $pop2, $pop351
	i32.const	$push350=, 452984830
	i32.gt_u	$push4=, $pop3, $pop350
	br_if   	1, $pop4
	block   	
	i64.const	$push357=, 8
	i64.shr_u	$push356=, $8, $pop357
	tee_local	$push355=, $8=, $pop356
	i64.const	$push354=, 255
	i64.and 	$push5=, $pop355, $pop354
	i64.const	$push353=, 0
	i64.ne  	$push6=, $pop5, $pop353
	br_if   	0, $pop6
.LBB64_3:
	loop    	
	i64.const	$push362=, 8
	i64.shr_u	$push361=, $8, $pop362
	tee_local	$push360=, $8=, $pop361
	i64.const	$push359=, 255
	i64.and 	$push7=, $pop360, $pop359
	i64.const	$push358=, 0
	i64.ne  	$push8=, $pop7, $pop358
	br_if   	3, $pop8
	i32.const	$push366=, 1
	i32.add 	$push365=, $6, $pop366
	tee_local	$push364=, $6=, $pop365
	i32.const	$push363=, 7
	i32.lt_s	$push9=, $pop364, $pop363
	br_if   	0, $pop9
.LBB64_5:
	end_loop
	end_block
	i32.const	$4=, 1
	i32.const	$push370=, 1
	i32.add 	$push369=, $6, $pop370
	tee_local	$push368=, $6=, $pop369
	i32.const	$push367=, 7
	i32.lt_s	$push10=, $pop368, $pop367
	br_if   	0, $pop10
	br      	2
.LBB64_6:
	end_loop
	end_block
	i32.const	$4=, 0
.LBB64_7:
	end_block
	i32.const	$push11=, .L.str
	call    	eosio_assert@FUNCTION, $4, $pop11
	i32.const	$push12=, 88
	i32.add 	$push13=, $10, $pop12
	i32.const	$push376=, 0
	i32.store	0($pop13), $pop376
	i64.const	$push14=, -1
	i64.store	72($10), $pop14
	i64.const	$push15=, 0
	i64.store	80($10), $pop15
	i64.load	$push375=, 0($0)
	tee_local	$push374=, $8=, $pop375
	i64.store	56($10), $pop374
	i64.store	64($10), $1
	i32.const	$0=, 0
	block   	
	i64.const	$push16=, -4157661221488775168
	i32.call	$push373=, db_find_i64@FUNCTION, $8, $1, $pop16, $2
	tee_local	$push372=, $6=, $pop373
	i32.const	$push371=, 0
	i32.lt_s	$push17=, $pop372, $pop371
	br_if   	0, $pop17
	i32.const	$push343=, 56
	i32.add 	$push344=, $10, $pop343
	i32.call	$push378=, _ZNK5eosio11multi_indexILy14289082852220776448EN13horuspaytoken12staked_horusEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop344, $6
	tee_local	$push377=, $0=, $pop378
	i32.load	$push18=, 44($pop377)
	i32.const	$push345=, 56
	i32.add 	$push346=, $10, $pop345
	i32.eq  	$push19=, $pop18, $pop346
	i32.const	$push20=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop19, $pop20
.LBB64_9:
	end_block
	i32.const	$push385=, 0
	i32.ne  	$push384=, $0, $pop385
	tee_local	$push383=, $3=, $pop384
	i32.const	$push21=, .L.str.25
	call    	eosio_assert@FUNCTION, $pop383, $pop21
	i64.load	$push22=, 0($0)
	i64.eq  	$push23=, $pop22, $2
	i32.const	$push24=, .L.str.26
	call    	eosio_assert@FUNCTION, $pop23, $pop24
	block   	
	i64.call	$push25=, current_time@FUNCTION
	i64.const	$push382=, 1000000
	i64.div_u	$push28=, $pop25, $pop382
	i64.const	$push381=, 4294967295
	i64.and 	$push29=, $pop28, $pop381
	i64.load32_u	$push26=, 40($0)
	i64.const	$push27=, 604800
	i64.add 	$push380=, $pop26, $pop27
	tee_local	$push379=, $8=, $pop380
	i64.ge_u	$push30=, $pop29, $pop379
	br_if   	0, $pop30
	i32.const	$push301=, 40
	i32.add 	$push302=, $10, $pop301
	i64.call	$push31=, current_time@FUNCTION
	i64.const	$push406=, 1000000
	i64.div_u	$push32=, $pop31, $pop406
	i64.const	$push405=, 4294967295
	i64.and 	$push33=, $pop32, $pop405
	i64.sub 	$push34=, $8, $pop33
	call    	_ZNSt3__19to_stringEy@FUNCTION, $pop302, $pop34
	i32.const	$push305=, 144
	i32.add 	$push306=, $10, $pop305
	i32.const	$push37=, 8
	i32.add 	$push39=, $pop306, $pop37
	i32.const	$push303=, 40
	i32.add 	$push304=, $10, $pop303
	i32.const	$push36=, 0
	i32.const	$push35=, .L.str.27
	i32.call	$push404=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc@FUNCTION, $pop304, $pop36, $pop35
	tee_local	$push403=, $6=, $pop404
	i32.const	$push402=, 8
	i32.add 	$push401=, $pop403, $pop402
	tee_local	$push400=, $4=, $pop401
	i32.load	$push38=, 0($pop400)
	i32.store	0($pop39), $pop38
	i64.load	$push40=, 0($6):p2align=2
	i64.store	144($10), $pop40
	i32.const	$push399=, 0
	i32.store	0($6), $pop399
	i32.const	$push41=, 4
	i32.add 	$push42=, $6, $pop41
	i32.const	$push398=, 0
	i32.store	0($pop42), $pop398
	i32.const	$push397=, 0
	i32.store	0($4), $pop397
	i32.const	$push309=, 96
	i32.add 	$push310=, $10, $pop309
	i32.const	$push396=, 8
	i32.add 	$push45=, $pop310, $pop396
	i32.const	$push307=, 144
	i32.add 	$push308=, $10, $pop307
	i32.const	$push43=, .L.str.28
	i32.call	$push395=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc@FUNCTION, $pop308, $pop43
	tee_local	$push394=, $6=, $pop395
	i32.const	$push393=, 8
	i32.add 	$push392=, $pop394, $pop393
	tee_local	$push391=, $4=, $pop392
	i32.load	$push44=, 0($pop391)
	i32.store	0($pop45), $pop44
	i64.load	$push46=, 0($6):p2align=2
	i64.store	96($10), $pop46
	i32.const	$push390=, 0
	i32.store	0($6), $pop390
	i32.const	$push389=, 4
	i32.add 	$push47=, $6, $pop389
	i32.const	$push388=, 0
	i32.store	0($pop47), $pop388
	i32.const	$push387=, 0
	i32.store	0($4), $pop387
	block   	
	i32.load8_u	$push48=, 144($10)
	i32.const	$push386=, 1
	i32.and 	$push49=, $pop48, $pop386
	i32.eqz 	$push639=, $pop49
	br_if   	0, $pop639
	i32.load	$push50=, 152($10)
	call    	_ZdlPv@FUNCTION, $pop50
.LBB64_12:
	end_block
	block   	
	i32.load8_u	$push51=, 40($10)
	i32.const	$push407=, 1
	i32.and 	$push52=, $pop51, $pop407
	i32.eqz 	$push640=, $pop52
	br_if   	0, $pop640
	i32.load	$push53=, 48($10)
	call    	_ZdlPv@FUNCTION, $pop53
.LBB64_14:
	end_block
	i32.const	$push60=, 0
	i32.load	$push58=, 104($10)
	i32.const	$push311=, 96
	i32.add 	$push312=, $10, $pop311
	i32.const	$push54=, 1
	i32.or  	$push57=, $pop312, $pop54
	i32.load8_u	$push55=, 96($10)
	i32.const	$push409=, 1
	i32.and 	$push56=, $pop55, $pop409
	i32.select	$push59=, $pop58, $pop57, $pop56
	call    	eosio_assert@FUNCTION, $pop60, $pop59
	i32.load8_u	$push61=, 96($10)
	i32.const	$push408=, 1
	i32.and 	$push62=, $pop61, $pop408
	i32.eqz 	$push641=, $pop62
	br_if   	0, $pop641
	i32.const	$push63=, 104
	i32.add 	$push64=, $10, $pop63
	i32.load	$push65=, 0($pop64)
	call    	_ZdlPv@FUNCTION, $pop65
.LBB64_16:
	end_block
	i32.const	$push410=, 1
	i32.const	$push66=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop410, $pop66
	i64.const	$8=, 357913743176
	i32.const	$6=, 0
.LBB64_17:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push67=, $8
	i32.const	$push413=, 24
	i32.shl 	$push68=, $pop67, $pop413
	i32.const	$push412=, -1073741825
	i32.add 	$push69=, $pop68, $pop412
	i32.const	$push411=, 452984830
	i32.gt_u	$push70=, $pop69, $pop411
	br_if   	1, $pop70
	block   	
	i64.const	$push418=, 8
	i64.shr_u	$push417=, $8, $pop418
	tee_local	$push416=, $8=, $pop417
	i64.const	$push415=, 255
	i64.and 	$push71=, $pop416, $pop415
	i64.const	$push414=, 0
	i64.ne  	$push72=, $pop71, $pop414
	br_if   	0, $pop72
.LBB64_19:
	loop    	
	i64.const	$push423=, 8
	i64.shr_u	$push422=, $8, $pop423
	tee_local	$push421=, $8=, $pop422
	i64.const	$push420=, 255
	i64.and 	$push73=, $pop421, $pop420
	i64.const	$push419=, 0
	i64.ne  	$push74=, $pop73, $pop419
	br_if   	3, $pop74
	i32.const	$push427=, 1
	i32.add 	$push426=, $6, $pop427
	tee_local	$push425=, $6=, $pop426
	i32.const	$push424=, 7
	i32.lt_s	$push75=, $pop425, $pop424
	br_if   	0, $pop75
.LBB64_21:
	end_loop
	end_block
	i32.const	$4=, 1
	i32.const	$push431=, 1
	i32.add 	$push430=, $6, $pop431
	tee_local	$push429=, $6=, $pop430
	i32.const	$push428=, 7
	i32.lt_s	$push76=, $pop429, $pop428
	br_if   	0, $pop76
	br      	2
.LBB64_22:
	end_loop
	end_block
	i32.const	$4=, 0
.LBB64_23:
	end_block
	i32.const	$push77=, .L.str
	call    	eosio_assert@FUNCTION, $4, $pop77
	i32.const	$push78=, 32
	i32.add 	$push79=, $0, $pop78
	i64.load	$push80=, 0($pop79)
	i64.const	$push434=, 91625918253060
	i64.eq  	$push81=, $pop80, $pop434
	i32.const	$push82=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop81, $pop82
	block   	
	block   	
	i64.load	$push433=, 24($0)
	tee_local	$push432=, $8=, $pop433
	i64.const	$push83=, 10000000000
	i64.lt_s	$push84=, $pop432, $pop83
	br_if   	0, $pop84
	i64.const	$push129=, 2333
	i64.mul 	$2=, $8, $pop129
	i64.const	$8=, 1000000
	br      	1
.LBB64_25:
	end_block
	i32.const	$push435=, 1
	i32.const	$push85=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop435, $pop85
	i64.const	$8=, 357913743176
	i32.const	$6=, 0
.LBB64_26:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push86=, $8
	i32.const	$push438=, 24
	i32.shl 	$push87=, $pop86, $pop438
	i32.const	$push437=, -1073741825
	i32.add 	$push88=, $pop87, $pop437
	i32.const	$push436=, 452984830
	i32.gt_u	$push89=, $pop88, $pop436
	br_if   	1, $pop89
	block   	
	i64.const	$push443=, 8
	i64.shr_u	$push442=, $8, $pop443
	tee_local	$push441=, $8=, $pop442
	i64.const	$push440=, 255
	i64.and 	$push90=, $pop441, $pop440
	i64.const	$push439=, 0
	i64.ne  	$push91=, $pop90, $pop439
	br_if   	0, $pop91
.LBB64_28:
	loop    	
	i64.const	$push448=, 8
	i64.shr_u	$push447=, $8, $pop448
	tee_local	$push446=, $8=, $pop447
	i64.const	$push445=, 255
	i64.and 	$push92=, $pop446, $pop445
	i64.const	$push444=, 0
	i64.ne  	$push93=, $pop92, $pop444
	br_if   	3, $pop93
	i32.const	$push452=, 1
	i32.add 	$push451=, $6, $pop452
	tee_local	$push450=, $6=, $pop451
	i32.const	$push449=, 7
	i32.lt_s	$push94=, $pop450, $pop449
	br_if   	0, $pop94
.LBB64_30:
	end_loop
	end_block
	i32.const	$4=, 1
	i32.const	$push456=, 1
	i32.add 	$push455=, $6, $pop456
	tee_local	$push454=, $6=, $pop455
	i32.const	$push453=, 7
	i32.lt_s	$push95=, $pop454, $pop453
	br_if   	0, $pop95
	br      	2
.LBB64_31:
	end_loop
	end_block
	i32.const	$4=, 0
.LBB64_32:
	end_block
	i32.const	$push96=, .L.str
	call    	eosio_assert@FUNCTION, $4, $pop96
	i32.const	$push97=, 32
	i32.add 	$push98=, $0, $pop97
	i64.load	$push99=, 0($pop98)
	i64.const	$push460=, 91625918253060
	i64.eq  	$push100=, $pop99, $pop460
	i32.const	$push101=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop100, $pop101
	block   	
	i32.const	$push459=, 24
	i32.add 	$push102=, $0, $pop459
	i64.load	$push458=, 0($pop102)
	tee_local	$push457=, $8=, $pop458
	i64.const	$push103=, 5000000000
	i64.lt_s	$push104=, $pop457, $pop103
	br_if   	0, $pop104
	i64.const	$push128=, 1166
	i64.mul 	$2=, $8, $pop128
	i64.const	$8=, 1000000
	br      	1
.LBB64_34:
	end_block
	i32.const	$push461=, 1
	i32.const	$push105=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop461, $pop105
	i64.const	$8=, 357913743176
	i32.const	$6=, 0
.LBB64_35:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push106=, $8
	i32.const	$push464=, 24
	i32.shl 	$push107=, $pop106, $pop464
	i32.const	$push463=, -1073741825
	i32.add 	$push108=, $pop107, $pop463
	i32.const	$push462=, 452984830
	i32.gt_u	$push109=, $pop108, $pop462
	br_if   	1, $pop109
	block   	
	i64.const	$push469=, 8
	i64.shr_u	$push468=, $8, $pop469
	tee_local	$push467=, $8=, $pop468
	i64.const	$push466=, 255
	i64.and 	$push110=, $pop467, $pop466
	i64.const	$push465=, 0
	i64.ne  	$push111=, $pop110, $pop465
	br_if   	0, $pop111
.LBB64_37:
	loop    	
	i64.const	$push474=, 8
	i64.shr_u	$push473=, $8, $pop474
	tee_local	$push472=, $8=, $pop473
	i64.const	$push471=, 255
	i64.and 	$push112=, $pop472, $pop471
	i64.const	$push470=, 0
	i64.ne  	$push113=, $pop112, $pop470
	br_if   	3, $pop113
	i32.const	$push478=, 1
	i32.add 	$push477=, $6, $pop478
	tee_local	$push476=, $6=, $pop477
	i32.const	$push475=, 7
	i32.lt_s	$push114=, $pop476, $pop475
	br_if   	0, $pop114
.LBB64_39:
	end_loop
	end_block
	i32.const	$4=, 1
	i32.const	$push482=, 1
	i32.add 	$push481=, $6, $pop482
	tee_local	$push480=, $6=, $pop481
	i32.const	$push479=, 7
	i32.lt_s	$push115=, $pop480, $pop479
	br_if   	0, $pop115
	br      	2
.LBB64_40:
	end_loop
	end_block
	i32.const	$4=, 0
.LBB64_41:
	end_block
	i32.const	$push116=, .L.str
	call    	eosio_assert@FUNCTION, $4, $pop116
	i32.const	$push117=, 32
	i32.add 	$push118=, $0, $pop117
	i64.load	$push119=, 0($pop118)
	i64.const	$push485=, 91625918253060
	i64.eq  	$push120=, $pop119, $pop485
	i32.const	$push121=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop120, $pop121
	block   	
	block   	
	i32.const	$push122=, 24
	i32.add 	$push123=, $0, $pop122
	i64.load	$push484=, 0($pop123)
	tee_local	$push483=, $8=, $pop484
	i64.const	$push124=, 1000000000
	i64.lt_s	$push125=, $pop483, $pop124
	br_if   	0, $pop125
	i64.const	$push127=, 4666
	i64.mul 	$2=, $8, $pop127
	br      	1
.LBB64_43:
	end_block
	i64.const	$push126=, 2333
	i64.mul 	$2=, $8, $pop126
.LBB64_44:
	end_block
	i64.const	$8=, 10000000
.LBB64_45:
	end_block
	i64.div_s	$push487=, $2, $8
	tee_local	$push486=, $5=, $pop487
	i64.const	$push130=, 4611686018427387903
	i64.add 	$push131=, $pop486, $pop130
	i64.const	$push132=, 9223372036854775807
	i64.lt_u	$push133=, $pop131, $pop132
	i32.const	$push134=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop133, $pop134
	i64.const	$8=, 310634431301
	i32.const	$6=, 0
.LBB64_46:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push135=, $8
	i32.const	$push490=, 24
	i32.shl 	$push136=, $pop135, $pop490
	i32.const	$push489=, -1073741825
	i32.add 	$push137=, $pop136, $pop489
	i32.const	$push488=, 452984830
	i32.gt_u	$push138=, $pop137, $pop488
	br_if   	1, $pop138
	block   	
	i64.const	$push495=, 8
	i64.shr_u	$push494=, $8, $pop495
	tee_local	$push493=, $8=, $pop494
	i64.const	$push492=, 255
	i64.and 	$push139=, $pop493, $pop492
	i64.const	$push491=, 0
	i64.ne  	$push140=, $pop139, $pop491
	br_if   	0, $pop140
.LBB64_48:
	loop    	
	i64.const	$push500=, 8
	i64.shr_u	$push499=, $8, $pop500
	tee_local	$push498=, $8=, $pop499
	i64.const	$push497=, 255
	i64.and 	$push141=, $pop498, $pop497
	i64.const	$push496=, 0
	i64.ne  	$push142=, $pop141, $pop496
	br_if   	3, $pop142
	i32.const	$push504=, 1
	i32.add 	$push503=, $6, $pop504
	tee_local	$push502=, $6=, $pop503
	i32.const	$push501=, 7
	i32.lt_s	$push143=, $pop502, $pop501
	br_if   	0, $pop143
.LBB64_50:
	end_loop
	end_block
	i32.const	$4=, 1
	i32.const	$push508=, 1
	i32.add 	$push507=, $6, $pop508
	tee_local	$push506=, $6=, $pop507
	i32.const	$push505=, 7
	i32.lt_s	$push144=, $pop506, $pop505
	br_if   	0, $pop144
	br      	2
.LBB64_51:
	end_loop
	end_block
	i32.const	$4=, 0
.LBB64_52:
	end_block
	i32.const	$push145=, .L.str
	call    	eosio_assert@FUNCTION, $4, $pop145
	i32.const	$push146=, .L.str.30
	call    	prints@FUNCTION, $pop146
	call    	printi@FUNCTION, $5
	i32.const	$push147=, .L.str.31
	call    	prints@FUNCTION, $pop147
	i32.const	$push509=, 1
	i32.const	$push148=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop509, $pop148
	i64.const	$8=, 310634431301
	i32.const	$6=, 0
.LBB64_53:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push149=, $8
	i32.const	$push512=, 24
	i32.shl 	$push150=, $pop149, $pop512
	i32.const	$push511=, -1073741825
	i32.add 	$push151=, $pop150, $pop511
	i32.const	$push510=, 452984830
	i32.gt_u	$push152=, $pop151, $pop510
	br_if   	1, $pop152
	block   	
	i64.const	$push517=, 8
	i64.shr_u	$push516=, $8, $pop517
	tee_local	$push515=, $8=, $pop516
	i64.const	$push514=, 255
	i64.and 	$push153=, $pop515, $pop514
	i64.const	$push513=, 0
	i64.ne  	$push154=, $pop153, $pop513
	br_if   	0, $pop154
.LBB64_55:
	loop    	
	i64.const	$push522=, 8
	i64.shr_u	$push521=, $8, $pop522
	tee_local	$push520=, $8=, $pop521
	i64.const	$push519=, 255
	i64.and 	$push155=, $pop520, $pop519
	i64.const	$push518=, 0
	i64.ne  	$push156=, $pop155, $pop518
	br_if   	3, $pop156
	i32.const	$push526=, 1
	i32.add 	$push525=, $6, $pop526
	tee_local	$push524=, $6=, $pop525
	i32.const	$push523=, 7
	i32.lt_s	$push157=, $pop524, $pop523
	br_if   	0, $pop157
.LBB64_57:
	end_loop
	end_block
	i32.const	$4=, 1
	i32.const	$push530=, 1
	i32.add 	$push529=, $6, $pop530
	tee_local	$push528=, $6=, $pop529
	i32.const	$push527=, 7
	i32.lt_s	$push158=, $pop528, $pop527
	br_if   	0, $pop158
	br      	2
.LBB64_58:
	end_loop
	end_block
	i32.const	$4=, 0
.LBB64_59:
	end_block
	i32.const	$push159=, .L.str
	call    	eosio_assert@FUNCTION, $4, $pop159
	i64.const	$push542=, 79522414413060
	i64.const	$push541=, 79522414413060
	i64.eq  	$push160=, $pop542, $pop541
	i32.const	$push161=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop160, $pop161
	i64.const	$8=, 0
	i64.const	$push540=, 0
	i64.gt_s	$push162=, $5, $pop540
	i32.const	$push163=, .L.str.32
	call    	eosio_assert@FUNCTION, $pop162, $pop163
	i64.call	$2=, current_time@FUNCTION
	i32.const	$push164=, 40
	i32.add 	$push539=, $0, $pop164
	tee_local	$push538=, $6=, $pop539
	i32.load	$4=, 0($pop538)
	i32.const	$push165=, .L.str.33
	call    	prints@FUNCTION, $pop165
	i32.const	$push166=, -604800
	i32.sub 	$push167=, $pop166, $4
	i64.const	$push168=, 1000000
	i64.div_u	$push169=, $2, $pop168
	i32.wrap/i64	$push170=, $pop169
	i32.add 	$push537=, $pop167, $pop170
	tee_local	$push536=, $4=, $pop537
	i64.extend_u/i32	$push171=, $pop536
	call    	printui@FUNCTION, $pop171
	i32.const	$push172=, .L.str.34
	call    	prints@FUNCTION, $pop172
	i32.const	$push173=, .L.str.58
	call    	eosio_assert@FUNCTION, $3, $pop173
	i32.load	$push174=, 44($0)
	i32.const	$push313=, 56
	i32.add 	$push314=, $10, $pop313
	i32.eq  	$push175=, $pop174, $pop314
	i32.const	$push176=, .L.str.59
	call    	eosio_assert@FUNCTION, $pop175, $pop176
	i64.load	$push177=, 56($10)
	i64.call	$push178=, current_receiver@FUNCTION
	i64.eq  	$push179=, $pop177, $pop178
	i32.const	$push180=, .L.str.60
	call    	eosio_assert@FUNCTION, $pop179, $pop180
	i64.load	$2=, 0($0)
	i64.call	$push181=, current_time@FUNCTION
	i64.const	$push535=, 1000000
	i64.div_u	$push182=, $pop181, $pop535
	i32.wrap/i64	$push183=, $pop182
	i32.sub 	$push184=, $pop183, $4
	i32.store	0($6), $pop184
	i64.load	$push185=, 0($0)
	i64.eq  	$push186=, $2, $pop185
	i32.const	$push187=, .L.str.61
	call    	eosio_assert@FUNCTION, $pop186, $pop187
	i32.const	$push315=, 96
	i32.add 	$push316=, $10, $pop315
	i32.const	$push188=, 44
	i32.add 	$push189=, $pop316, $pop188
	i32.store	152($10), $pop189
	i32.const	$push317=, 96
	i32.add 	$push318=, $10, $pop317
	i32.store	148($10), $pop318
	i32.const	$push319=, 96
	i32.add 	$push320=, $10, $pop319
	i32.store	144($10), $pop320
	i32.const	$push321=, 144
	i32.add 	$push322=, $10, $pop321
	i32.call	$drop=, _ZN13horuspaytokenlsIN5eosio10datastreamIPcEEEERT_S6_RKNS_12staked_horusE@FUNCTION, $pop322, $0
	i32.load	$push190=, 48($0)
	i64.const	$push534=, 0
	i32.const	$push323=, 96
	i32.add 	$push324=, $10, $pop323
	i32.const	$push533=, 44
	call    	db_update_i64@FUNCTION, $pop190, $pop534, $pop324, $pop533
	block   	
	i32.const	$push191=, 72
	i32.add 	$push532=, $10, $pop191
	tee_local	$push531=, $6=, $pop532
	i64.load	$push192=, 0($pop531)
	i64.lt_u	$push193=, $2, $pop192
	br_if   	0, $pop193
	i64.const	$push198=, -2
	i64.const	$push196=, 1
	i64.add 	$push197=, $2, $pop196
	i64.const	$push194=, -3
	i64.gt_u	$push195=, $2, $pop194
	i64.select	$push199=, $pop198, $pop197, $pop195
	i64.store	0($6), $pop199
.LBB64_61:
	end_block
	i64.const	$7=, 59
	i32.const	$6=, .L.str.10
	i64.const	$9=, 0
.LBB64_62:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push543=, 5
	i64.gt_u	$push200=, $8, $pop543
	br_if   	0, $pop200
	i32.load8_s	$push548=, 0($6)
	tee_local	$push547=, $4=, $pop548
	i32.const	$push546=, -97
	i32.add 	$push202=, $pop547, $pop546
	i32.const	$push545=, 255
	i32.and 	$push203=, $pop202, $pop545
	i32.const	$push544=, 25
	i32.gt_u	$push204=, $pop203, $pop544
	br_if   	1, $pop204
	i32.const	$push549=, 165
	i32.add 	$4=, $4, $pop549
	br      	2
.LBB64_65:
	end_block
	i64.const	$2=, 0
	i64.const	$push550=, 11
	i64.le_u	$push201=, $8, $pop550
	br_if   	2, $pop201
	br      	3
.LBB64_66:
	end_block
	i32.const	$push555=, 208
	i32.add 	$push205=, $4, $pop555
	i32.const	$push554=, 0
	i32.const	$push553=, -49
	i32.add 	$push206=, $4, $pop553
	i32.const	$push552=, 255
	i32.and 	$push207=, $pop206, $pop552
	i32.const	$push551=, 5
	i32.lt_u	$push208=, $pop207, $pop551
	i32.select	$4=, $pop205, $pop554, $pop208
.LBB64_67:
	end_block
	i64.extend_u/i32	$push209=, $4
	i64.const	$push557=, 56
	i64.shl 	$push210=, $pop209, $pop557
	i64.const	$push556=, 56
	i64.shr_s	$2=, $pop210, $pop556
.LBB64_68:
	end_block
	i64.const	$push559=, 31
	i64.and 	$push212=, $2, $pop559
	i64.const	$push558=, 4294967295
	i64.and 	$push211=, $7, $pop558
	i64.shl 	$2=, $pop212, $pop211
.LBB64_69:
	end_block
	i32.const	$push565=, 1
	i32.add 	$6=, $6, $pop565
	i64.const	$push564=, 1
	i64.add 	$8=, $8, $pop564
	i64.or  	$9=, $2, $9
	i64.const	$push563=, -5
	i64.add 	$push562=, $7, $pop563
	tee_local	$push561=, $7=, $pop562
	i64.const	$push560=, -6
	i64.ne  	$push213=, $pop561, $pop560
	br_if   	0, $pop213
	end_loop
	i64.store	104($10), $9
	i64.const	$push214=, 7867696630547668288
	i64.store	96($10), $pop214
	i64.const	$8=, 0
	i64.const	$7=, 59
	i32.const	$6=, .L.str.10
	i64.const	$9=, 0
.LBB64_71:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push566=, 5
	i64.gt_u	$push215=, $8, $pop566
	br_if   	0, $pop215
	i32.load8_s	$push571=, 0($6)
	tee_local	$push570=, $4=, $pop571
	i32.const	$push569=, -97
	i32.add 	$push217=, $pop570, $pop569
	i32.const	$push568=, 255
	i32.and 	$push218=, $pop217, $pop568
	i32.const	$push567=, 25
	i32.gt_u	$push219=, $pop218, $pop567
	br_if   	1, $pop219
	i32.const	$push572=, 165
	i32.add 	$4=, $4, $pop572
	br      	2
.LBB64_74:
	end_block
	i64.const	$2=, 0
	i64.const	$push573=, 11
	i64.le_u	$push216=, $8, $pop573
	br_if   	2, $pop216
	br      	3
.LBB64_75:
	end_block
	i32.const	$push578=, 208
	i32.add 	$push220=, $4, $pop578
	i32.const	$push577=, 0
	i32.const	$push576=, -49
	i32.add 	$push221=, $4, $pop576
	i32.const	$push575=, 255
	i32.and 	$push222=, $pop221, $pop575
	i32.const	$push574=, 5
	i32.lt_u	$push223=, $pop222, $pop574
	i32.select	$4=, $pop220, $pop577, $pop223
.LBB64_76:
	end_block
	i64.extend_u/i32	$push224=, $4
	i64.const	$push580=, 56
	i64.shl 	$push225=, $pop224, $pop580
	i64.const	$push579=, 56
	i64.shr_s	$2=, $pop225, $pop579
.LBB64_77:
	end_block
	i64.const	$push582=, 31
	i64.and 	$push227=, $2, $pop582
	i64.const	$push581=, 4294967295
	i64.and 	$push226=, $7, $pop581
	i64.shl 	$2=, $pop227, $pop226
.LBB64_78:
	end_block
	i32.const	$push588=, 1
	i32.add 	$6=, $6, $pop588
	i64.const	$push587=, 1
	i64.add 	$8=, $8, $pop587
	i64.or  	$9=, $2, $9
	i64.const	$push586=, -5
	i64.add 	$push585=, $7, $pop586
	tee_local	$push584=, $7=, $pop585
	i64.const	$push583=, -6
	i64.ne  	$push228=, $pop584, $pop583
	br_if   	0, $pop228
	end_loop
	i32.const	$push325=, 96
	i32.add 	$push326=, $10, $pop325
	i32.const	$push229=, 24
	i32.add 	$push607=, $pop326, $pop229
	tee_local	$push606=, $4=, $pop607
	i64.store	0($pop606), $9
	i64.store	112($10), $1
	i32.const	$push230=, 32
	i32.call	$push605=, _Znwj@FUNCTION, $pop230
	tee_local	$push604=, $6=, $pop605
	i32.const	$push231=, 12
	i32.add 	$push232=, $pop604, $pop231
	i32.const	$push327=, 96
	i32.add 	$push328=, $10, $pop327
	i32.const	$push603=, 12
	i32.add 	$push233=, $pop328, $pop603
	i32.load	$push234=, 0($pop233)
	i32.store	0($pop232), $pop234
	i32.const	$push235=, 4
	i32.add 	$push236=, $6, $pop235
	i32.load	$push237=, 100($10)
	i32.store	0($pop236), $pop237
	i32.store	40($10), $6
	i32.load	$push238=, 96($10)
	i32.store	0($6), $pop238
	i32.const	$push602=, 32
	i32.add 	$push601=, $6, $pop602
	tee_local	$push600=, $3=, $pop601
	i32.store	48($10), $pop600
	i32.const	$push239=, 8
	i32.add 	$push240=, $6, $pop239
	i32.const	$push329=, 96
	i32.add 	$push330=, $10, $pop329
	i32.const	$push599=, 8
	i32.add 	$push241=, $pop330, $pop599
	i32.load	$push242=, 0($pop241)
	i32.store	0($pop240), $pop242
	i32.const	$push598=, 24
	i32.add 	$push243=, $6, $pop598
	i64.load	$push244=, 0($4)
	i64.store	0($pop243), $pop244
	i64.load	$push245=, 112($10)
	i64.store	16($6), $pop245
	i32.store	44($10), $3
	i32.const	$push597=, 32
	i32.call	$push596=, _Znwj@FUNCTION, $pop597
	tee_local	$push595=, $4=, $pop596
	i32.store	24($10), $pop595
	i32.store	28($10), $4
	i32.const	$push594=, 32
	i32.add 	$push246=, $4, $pop594
	i32.store	32($10), $pop246
	i32.const	$push593=, 32
	i32.call	$drop=, memcpy@FUNCTION, $4, $6, $pop593
	i32.load	$push247=, 28($10)
	i32.const	$push592=, 32
	i32.add 	$push248=, $pop247, $pop592
	i32.store	28($10), $pop248
	i32.const	$push331=, 8
	i32.add 	$push332=, $10, $pop331
	i32.const	$push591=, 8
	i32.add 	$push249=, $pop332, $pop591
	i32.const	$push250=, 0
	i32.store	0($pop249), $pop250
	i64.const	$push251=, 0
	i64.store	8($10), $pop251
	block   	
	i32.const	$push252=, .L.str.35
	i32.call	$push590=, strlen@FUNCTION, $pop252
	tee_local	$push589=, $6=, $pop590
	i32.const	$push253=, -16
	i32.ge_u	$push254=, $pop589, $pop253
	br_if   	0, $pop254
	block   	
	block   	
	block   	
	i32.const	$push255=, 11
	i32.ge_u	$push256=, $6, $pop255
	br_if   	0, $pop256
	i32.const	$push262=, 1
	i32.shl 	$push263=, $6, $pop262
	i32.store8	8($10), $pop263
	i32.const	$push335=, 8
	i32.add 	$push336=, $10, $pop335
	i32.const	$push608=, 1
	i32.or  	$4=, $pop336, $pop608
	br_if   	1, $6
	br      	2
.LBB64_82:
	end_block
	i32.const	$push257=, 16
	i32.add 	$push258=, $6, $pop257
	i32.const	$push259=, -16
	i32.and 	$push610=, $pop258, $pop259
	tee_local	$push609=, $3=, $pop610
	i32.call	$4=, _Znwj@FUNCTION, $pop609
	i32.const	$push260=, 1
	i32.or  	$push261=, $3, $pop260
	i32.store	8($10), $pop261
	i32.store	16($10), $4
	i32.store	12($10), $6
.LBB64_83:
	end_block
	i32.const	$push264=, .L.str.35
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop264, $6
.LBB64_84:
	end_block
	i32.add 	$push265=, $4, $6
	i32.const	$push266=, 0
	i32.store8	0($pop265), $pop266
	i32.load	$6=, 8($10)
	i32.const	$push622=, 0
	i32.store	8($10), $pop622
	i32.load	$4=, 12($10)
	i32.const	$push621=, 0
	i32.store	12($10), $pop621
	i32.load	$3=, 16($10)
	i32.const	$push620=, 0
	i32.store	16($10), $pop620
	i32.const	$push267=, 16
	i32.add 	$push268=, $0, $pop267
	i64.load	$8=, 0($pop268)
	i32.const	$push269=, 32
	i32.add 	$push619=, $10, $pop269
	tee_local	$push618=, $0=, $pop619
	i32.load	$push270=, 0($pop618)
	i32.store	152($10), $pop270
	i32.const	$push617=, 0
	i32.store	0($0), $pop617
	i32.load	$push271=, 24($10)
	i32.store	144($10), $pop271
	i32.load	$push272=, 28($10)
	i32.store	148($10), $pop272
	i32.const	$push616=, 0
	i32.store	28($10), $pop616
	i32.const	$push615=, 0
	i32.store	24($10), $pop615
	i64.store	104($10), $5
	i64.store	96($10), $8
	i32.const	$push337=, 96
	i32.add 	$push338=, $10, $pop337
	i32.const	$push614=, 16
	i32.add 	$push273=, $pop338, $pop614
	i64.const	$push613=, 79522414413060
	i64.store	0($pop273), $pop613
	i32.store	120($10), $6
	i32.const	$push274=, 124
	i32.add 	$push275=, $10, $pop274
	i32.store	0($pop275), $4
	i32.const	$push276=, 128
	i32.add 	$push612=, $10, $pop276
	tee_local	$push611=, $6=, $pop612
	i32.store	0($pop611), $3
	i64.const	$push278=, 7867696630547668288
	i64.const	$push277=, 8516769789752901632
	i32.const	$push339=, 144
	i32.add 	$push340=, $10, $pop339
	i32.const	$push341=, 96
	i32.add 	$push342=, $10, $pop341
	call    	_ZN5eosio15dispatch_inlineIJyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE@FUNCTION, $pop278, $pop277, $pop340, $pop342
	block   	
	i32.load8_u	$push280=, 120($10)
	i32.const	$push279=, 1
	i32.and 	$push281=, $pop280, $pop279
	i32.eqz 	$push642=, $pop281
	br_if   	0, $pop642
	i32.load	$push282=, 0($6)
	call    	_ZdlPv@FUNCTION, $pop282
.LBB64_86:
	end_block
	block   	
	i32.load	$push624=, 144($10)
	tee_local	$push623=, $6=, $pop624
	i32.eqz 	$push643=, $pop623
	br_if   	0, $pop643
	i32.store	148($10), $6
	call    	_ZdlPv@FUNCTION, $6
.LBB64_88:
	end_block
	block   	
	i32.load8_u	$push284=, 8($10)
	i32.const	$push283=, 1
	i32.and 	$push285=, $pop284, $pop283
	i32.eqz 	$push644=, $pop285
	br_if   	0, $pop644
	i32.const	$push286=, 16
	i32.add 	$push287=, $10, $pop286
	i32.load	$push288=, 0($pop287)
	call    	_ZdlPv@FUNCTION, $pop288
.LBB64_90:
	end_block
	block   	
	i32.load	$push626=, 24($10)
	tee_local	$push625=, $6=, $pop626
	i32.eqz 	$push645=, $pop625
	br_if   	0, $pop645
	i32.store	28($10), $6
	call    	_ZdlPv@FUNCTION, $6
.LBB64_92:
	end_block
	block   	
	i32.load	$push628=, 40($10)
	tee_local	$push627=, $6=, $pop628
	i32.eqz 	$push646=, $pop627
	br_if   	0, $pop646
	i32.store	44($10), $6
	call    	_ZdlPv@FUNCTION, $6
.LBB64_94:
	end_block
	block   	
	i32.load	$push630=, 80($10)
	tee_local	$push629=, $0=, $pop630
	i32.eqz 	$push647=, $pop629
	br_if   	0, $pop647
	block   	
	block   	
	i32.const	$push289=, 84
	i32.add 	$push634=, $10, $pop289
	tee_local	$push633=, $3=, $pop634
	i32.load	$push632=, 0($pop633)
	tee_local	$push631=, $6=, $pop632
	i32.eq  	$push290=, $pop631, $0
	br_if   	0, $pop290
.LBB64_97:
	loop    	
	i32.const	$push638=, -24
	i32.add 	$push637=, $6, $pop638
	tee_local	$push636=, $6=, $pop637
	i32.load	$4=, 0($pop636)
	i32.const	$push635=, 0
	i32.store	0($6), $pop635
	block   	
	i32.eqz 	$push648=, $4
	br_if   	0, $pop648
	call    	_ZdlPv@FUNCTION, $4
.LBB64_99:
	end_block
	i32.ne  	$push291=, $0, $6
	br_if   	0, $pop291
	end_loop
	i32.const	$push292=, 80
	i32.add 	$push293=, $10, $pop292
	i32.load	$6=, 0($pop293)
	br      	1
.LBB64_101:
	end_block
	copy_local	$6=, $0
.LBB64_102:
	end_block
	i32.store	0($3), $0
	call    	_ZdlPv@FUNCTION, $6
.LBB64_103:
	end_block
	i32.const	$push300=, 0
	i32.const	$push298=, 160
	i32.add 	$push299=, $10, $pop298
	i32.store	__stack_pointer($pop300), $pop299
	return
.LBB64_104:
	end_block
	i32.const	$push333=, 8
	i32.add 	$push334=, $10, $pop333
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop334
	unreachable
	.endfunc
.Lfunc_end64:
	.size	_ZN13horuspaytoken12horustokenio11claimrewardEyy, .Lfunc_end64-_ZN13horuspaytoken12horustokenio11claimrewardEyy

	.section	.text._ZN5eosio15dispatch_inlineIJyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE,"axG",@progbits,_ZN5eosio15dispatch_inlineIJyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE,comdat
	.hidden	_ZN5eosio15dispatch_inlineIJyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE
	.weak	_ZN5eosio15dispatch_inlineIJyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE
	.type	_ZN5eosio15dispatch_inlineIJyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE,@function
_ZN5eosio15dispatch_inlineIJyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE:
	.param  	i64, i64, i32, i32
	.local  	i32, i32, i32, i32, i32, i32
	i32.const	$push56=, 0
	i32.const	$push53=, 0
	i32.load	$push54=, __stack_pointer($pop53)
	i32.const	$push55=, 80
	i32.sub 	$push79=, $pop54, $pop55
	tee_local	$push78=, $9=, $pop79
	i32.store	__stack_pointer($pop56), $pop78
	i32.const	$push77=, 0
	i32.store	16($9), $pop77
	i64.const	$push76=, 0
	i64.store	8($9), $pop76
	i32.const	$6=, 0
	i32.const	$7=, 0
	i32.const	$8=, 0
	block   	
	block   	
	i32.load	$push1=, 4($2)
	i32.load	$push0=, 0($2)
	i32.sub 	$push75=, $pop1, $pop0
	tee_local	$push74=, $4=, $pop75
	i32.const	$push2=, 4
	i32.shr_s	$push73=, $pop74, $pop2
	tee_local	$push72=, $5=, $pop73
	i32.eqz 	$push133=, $pop72
	br_if   	0, $pop133
	i32.const	$push3=, 268435456
	i32.ge_u	$push4=, $5, $pop3
	br_if   	1, $pop4
	i32.const	$push7=, 16
	i32.add 	$push8=, $9, $pop7
	i32.call	$push88=, _Znwj@FUNCTION, $4
	tee_local	$push87=, $8=, $pop88
	i32.const	$push5=, 4
	i32.shl 	$push6=, $5, $pop5
	i32.add 	$push86=, $pop87, $pop6
	tee_local	$push85=, $6=, $pop86
	i32.store	0($pop8), $pop85
	i32.store	8($9), $8
	i32.store	12($9), $8
	block   	
	i32.const	$push84=, 4
	i32.add 	$push9=, $2, $pop84
	i32.load	$push10=, 0($pop9)
	i32.load	$push83=, 0($2)
	tee_local	$push82=, $7=, $pop83
	i32.sub 	$push81=, $pop10, $pop82
	tee_local	$push80=, $2=, $pop81
	i32.const	$push11=, 1
	i32.lt_s	$push12=, $pop80, $pop11
	br_if   	0, $pop12
	i32.call	$drop=, memcpy@FUNCTION, $8, $7, $2
	i32.add 	$push90=, $8, $2
	tee_local	$push89=, $7=, $pop90
	i32.store	12($9), $pop89
	br      	1
.LBB65_4:
	end_block
	copy_local	$7=, $8
.LBB65_5:
	end_block
	i32.const	$push13=, 44
	i32.add 	$push14=, $9, $pop13
	i32.store	0($pop14), $7
	i64.store	32($9), $1
	i32.const	$push15=, 16
	i32.add 	$push16=, $9, $pop15
	i32.const	$push104=, 0
	i32.store	0($pop16), $pop104
	i32.const	$push60=, 24
	i32.add 	$push61=, $9, $pop60
	i32.const	$push17=, 24
	i32.add 	$push18=, $pop61, $pop17
	i32.store	0($pop18), $6
	i64.store	24($9), $0
	i32.store	40($9), $8
	i64.const	$push103=, 0
	i64.store	8($9), $pop103
	i32.const	$push102=, 0
	i32.store	52($9), $pop102
	i32.const	$push19=, 56
	i32.add 	$push20=, $9, $pop19
	i32.const	$push101=, 0
	i32.store	0($pop20), $pop101
	i32.const	$push21=, 60
	i32.add 	$push22=, $9, $pop21
	i32.const	$push100=, 0
	i32.store	0($pop22), $pop100
	i32.const	$push25=, 28
	i32.add 	$push26=, $3, $pop25
	i32.load	$push27=, 0($pop26)
	i32.load8_u	$push99=, 24($3)
	tee_local	$push98=, $8=, $pop99
	i32.const	$push97=, 1
	i32.shr_u	$push24=, $pop98, $pop97
	i32.const	$push96=, 1
	i32.and 	$push23=, $8, $pop96
	i32.select	$push95=, $pop27, $pop24, $pop23
	tee_local	$push94=, $2=, $pop95
	i32.const	$push93=, 24
	i32.add 	$8=, $pop94, $pop93
	i64.extend_u/i32	$0=, $2
	i32.const	$push92=, 24
	i32.add 	$6=, $3, $pop92
	i32.const	$push62=, 24
	i32.add 	$push63=, $9, $pop62
	i32.const	$push91=, 28
	i32.add 	$2=, $pop63, $pop91
.LBB65_6:
	loop    	
	i32.const	$push109=, 1
	i32.add 	$8=, $8, $pop109
	i64.const	$push108=, 7
	i64.shr_u	$push107=, $0, $pop108
	tee_local	$push106=, $0=, $pop107
	i64.const	$push105=, 0
	i64.ne  	$push28=, $pop106, $pop105
	br_if   	0, $pop28
	end_loop
	block   	
	block   	
	i32.eqz 	$push134=, $8
	br_if   	0, $pop134
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $2, $8
	i32.const	$push29=, 56
	i32.add 	$push30=, $9, $pop29
	i32.load	$2=, 0($pop30)
	i32.const	$push31=, 52
	i32.add 	$push32=, $9, $pop31
	i32.load	$8=, 0($pop32)
	br      	1
.LBB65_9:
	end_block
	i32.const	$2=, 0
	i32.const	$8=, 0
.LBB65_10:
	end_block
	i32.store	64($9), $8
	i32.store	72($9), $2
	i32.sub 	$push33=, $2, $8
	i32.const	$push34=, 7
	i32.gt_s	$push35=, $pop33, $pop34
	i32.const	$push36=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop35, $pop36
	i32.const	$push37=, 8
	i32.call	$drop=, memcpy@FUNCTION, $8, $3, $pop37
	i32.const	$push126=, 8
	i32.add 	$push125=, $8, $pop126
	tee_local	$push124=, $7=, $pop125
	i32.sub 	$push38=, $2, $pop124
	i32.const	$push123=, 7
	i32.gt_s	$push39=, $pop38, $pop123
	i32.const	$push122=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop39, $pop122
	i32.const	$push121=, 8
	i32.add 	$push40=, $3, $pop121
	i32.const	$push120=, 8
	i32.call	$drop=, memcpy@FUNCTION, $7, $pop40, $pop120
	i32.const	$push41=, 16
	i32.add 	$push119=, $8, $pop41
	tee_local	$push118=, $7=, $pop119
	i32.sub 	$push42=, $2, $pop118
	i32.const	$push117=, 7
	i32.gt_s	$push43=, $pop42, $pop117
	i32.const	$push116=, .L.str.55
	call    	eosio_assert@FUNCTION, $pop43, $pop116
	i32.const	$push115=, 16
	i32.add 	$push44=, $3, $pop115
	i32.const	$push114=, 8
	i32.call	$drop=, memcpy@FUNCTION, $7, $pop44, $pop114
	i32.const	$push45=, 24
	i32.add 	$push46=, $8, $pop45
	i32.store	68($9), $pop46
	i32.const	$push64=, 64
	i32.add 	$push65=, $9, $pop64
	i32.call	$drop=, _ZN5eosiolsINS_10datastreamIPcEEEERT_S5_RKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE@FUNCTION, $pop65, $6
	i32.const	$push66=, 64
	i32.add 	$push67=, $9, $pop66
	i32.const	$push68=, 24
	i32.add 	$push69=, $9, $pop68
	call    	_ZN5eosio4packINS_6actionEEENSt3__16vectorIcNS2_9allocatorIcEEEERKT_@FUNCTION, $pop67, $pop69
	i32.load	$push113=, 64($9)
	tee_local	$push112=, $8=, $pop113
	i32.load	$push47=, 68($9)
	i32.sub 	$push48=, $pop47, $8
	call    	send_inline@FUNCTION, $pop112, $pop48
	block   	
	i32.load	$push111=, 64($9)
	tee_local	$push110=, $8=, $pop111
	i32.eqz 	$push135=, $pop110
	br_if   	0, $pop135
	i32.store	68($9), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB65_12:
	end_block
	block   	
	i32.load	$push128=, 52($9)
	tee_local	$push127=, $8=, $pop128
	i32.eqz 	$push136=, $pop127
	br_if   	0, $pop136
	i32.const	$push49=, 56
	i32.add 	$push50=, $9, $pop49
	i32.store	0($pop50), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB65_14:
	end_block
	block   	
	i32.load	$push130=, 40($9)
	tee_local	$push129=, $8=, $pop130
	i32.eqz 	$push137=, $pop129
	br_if   	0, $pop137
	i32.const	$push51=, 44
	i32.add 	$push52=, $9, $pop51
	i32.store	0($pop52), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB65_16:
	end_block
	block   	
	i32.load	$push132=, 8($9)
	tee_local	$push131=, $8=, $pop132
	i32.eqz 	$push138=, $pop131
	br_if   	0, $pop138
	i32.store	12($9), $8
	call    	_ZdlPv@FUNCTION, $8
.LBB65_18:
	end_block
	i32.const	$push59=, 0
	i32.const	$push57=, 80
	i32.add 	$push58=, $9, $pop57
	i32.store	__stack_pointer($pop59), $pop58
	return
.LBB65_19:
	end_block
	i32.const	$push70=, 8
	i32.add 	$push71=, $9, $pop70
	call    	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv@FUNCTION, $pop71
	unreachable
	.endfunc
.Lfunc_end65:
	.size	_ZN5eosio15dispatch_inlineIJyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE, .Lfunc_end65-_ZN5eosio15dispatch_inlineIJyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvyyNS2_6vectorINS_16permission_levelENS6_ISA_EEEENS2_5tupleIJDpT_EEE

	.text
	.hidden	_ZN13horuspaytoken12horustokenio11refundhorusEy
	.globl	_ZN13horuspaytoken12horustokenio11refundhorusEy
	.type	_ZN13horuspaytoken12horustokenio11refundhorusEy,@function
_ZN13horuspaytoken12horustokenio11refundhorusEy:
	.param  	i32, i64
	.local  	i32, i64, i32, i32, i32, i32
	i32.const	$push71=, 0
	i32.const	$push68=, 0
	i32.load	$push69=, __stack_pointer($pop68)
	i32.const	$push70=, 96
	i32.sub 	$push100=, $pop69, $pop70
	tee_local	$push99=, $7=, $pop100
	i32.store	__stack_pointer($pop71), $pop99
	i64.store	88($7), $1
	call    	require_auth@FUNCTION, $1
	i32.const	$push0=, 80
	i32.add 	$push1=, $7, $pop0
	i32.const	$push98=, 0
	i32.store	0($pop1), $pop98
	i64.store	56($7), $1
	i64.const	$push2=, -1
	i64.store	64($7), $pop2
	i64.const	$push3=, 0
	i64.store	72($7), $pop3
	i64.load	$push97=, 0($0)
	tee_local	$push96=, $3=, $pop97
	i64.store	48($7), $pop96
	i32.const	$6=, 0
	block   	
	i64.const	$push4=, -5001342326447013888
	i32.call	$push95=, db_find_i64@FUNCTION, $3, $1, $pop4, $1
	tee_local	$push94=, $2=, $pop95
	i32.const	$push93=, 0
	i32.lt_s	$push5=, $pop94, $pop93
	br_if   	0, $pop5
	i32.const	$push89=, 48
	i32.add 	$push90=, $7, $pop89
	i32.call	$push102=, _ZNK5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop90, $2
	tee_local	$push101=, $6=, $pop102
	i32.load	$push6=, 32($pop101)
	i32.const	$push91=, 48
	i32.add 	$push92=, $7, $pop91
	i32.eq  	$push7=, $pop6, $pop92
	i32.const	$push8=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop7, $pop8
.LBB66_2:
	end_block
	i32.const	$push108=, 0
	i32.ne  	$push107=, $6, $pop108
	tee_local	$push106=, $2=, $pop107
	i32.const	$push9=, .L.str.36
	call    	eosio_assert@FUNCTION, $pop106, $pop9
	block   	
	i64.call	$push10=, current_time@FUNCTION
	i64.const	$push105=, 1000000
	i64.div_u	$push13=, $pop10, $pop105
	i32.wrap/i64	$push14=, $pop13
	i32.load	$push11=, 8($6)
	i32.const	$push12=, 604800
	i32.add 	$push104=, $pop11, $pop12
	tee_local	$push103=, $4=, $pop104
	i32.ge_u	$push15=, $pop14, $pop103
	br_if   	0, $pop15
	i32.const	$push75=, 16
	i32.add 	$push76=, $7, $pop75
	i64.call	$push16=, current_time@FUNCTION
	i64.const	$push128=, 1000000
	i64.div_u	$push17=, $pop16, $pop128
	i32.wrap/i64	$push18=, $pop17
	i32.sub 	$push19=, $4, $pop18
	call    	_ZNSt3__19to_stringEm@FUNCTION, $pop76, $pop19
	i32.const	$push79=, 32
	i32.add 	$push80=, $7, $pop79
	i32.const	$push22=, 8
	i32.add 	$push24=, $pop80, $pop22
	i32.const	$push77=, 16
	i32.add 	$push78=, $7, $pop77
	i32.const	$push21=, 0
	i32.const	$push20=, .L.str.37
	i32.call	$push127=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc@FUNCTION, $pop78, $pop21, $pop20
	tee_local	$push126=, $4=, $pop127
	i32.const	$push125=, 8
	i32.add 	$push124=, $pop126, $pop125
	tee_local	$push123=, $5=, $pop124
	i32.load	$push23=, 0($pop123)
	i32.store	0($pop24), $pop23
	i64.load	$push25=, 0($4):p2align=2
	i64.store	32($7), $pop25
	i32.const	$push122=, 0
	i32.store	0($4), $pop122
	i32.const	$push26=, 4
	i32.add 	$push27=, $4, $pop26
	i32.const	$push121=, 0
	i32.store	0($pop27), $pop121
	i32.const	$push120=, 0
	i32.store	0($5), $pop120
	i32.const	$push119=, 8
	i32.add 	$push30=, $7, $pop119
	i32.const	$push81=, 32
	i32.add 	$push82=, $7, $pop81
	i32.const	$push28=, .L.str.28
	i32.call	$push118=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc@FUNCTION, $pop82, $pop28
	tee_local	$push117=, $4=, $pop118
	i32.const	$push116=, 8
	i32.add 	$push115=, $pop117, $pop116
	tee_local	$push114=, $5=, $pop115
	i32.load	$push29=, 0($pop114)
	i32.store	0($pop30), $pop29
	i64.load	$push31=, 0($4):p2align=2
	i64.store	0($7), $pop31
	i32.const	$push113=, 0
	i32.store	0($4), $pop113
	i32.const	$push112=, 4
	i32.add 	$push32=, $4, $pop112
	i32.const	$push111=, 0
	i32.store	0($pop32), $pop111
	i32.const	$push110=, 0
	i32.store	0($5), $pop110
	block   	
	i32.load8_u	$push33=, 32($7)
	i32.const	$push109=, 1
	i32.and 	$push34=, $pop33, $pop109
	i32.eqz 	$push146=, $pop34
	br_if   	0, $pop146
	i32.load	$push35=, 40($7)
	call    	_ZdlPv@FUNCTION, $pop35
.LBB66_5:
	end_block
	block   	
	i32.load8_u	$push36=, 16($7)
	i32.const	$push129=, 1
	i32.and 	$push37=, $pop36, $pop129
	i32.eqz 	$push147=, $pop37
	br_if   	0, $pop147
	i32.load	$push38=, 24($7)
	call    	_ZdlPv@FUNCTION, $pop38
.LBB66_7:
	end_block
	i32.const	$push45=, 0
	i32.load	$push43=, 8($7)
	i32.const	$push39=, 1
	i32.or  	$push42=, $7, $pop39
	i32.load8_u	$push40=, 0($7)
	i32.const	$push131=, 1
	i32.and 	$push41=, $pop40, $pop131
	i32.select	$push44=, $pop43, $pop42, $pop41
	call    	eosio_assert@FUNCTION, $pop45, $pop44
	i32.load8_u	$push46=, 0($7)
	i32.const	$push130=, 1
	i32.and 	$push47=, $pop46, $pop130
	i32.eqz 	$push148=, $pop47
	br_if   	0, $pop148
	i32.const	$push48=, 8
	i32.add 	$push49=, $7, $pop48
	i32.load	$push50=, 0($pop49)
	call    	_ZdlPv@FUNCTION, $pop50
.LBB66_9:
	end_block
	i32.const	$push54=, 8
	i32.add 	$push55=, $7, $pop54
	i32.const	$push51=, 24
	i32.add 	$push52=, $6, $pop51
	i64.load	$push53=, 0($pop52)
	i64.store	0($pop55), $pop53
	i64.load	$push135=, 16($6)
	tee_local	$push134=, $1=, $pop135
	i64.store	0($7), $pop134
	i64.const	$push56=, 0
	i64.sub 	$push57=, $pop56, $1
	i64.store	0($7), $pop57
	i32.const	$push83=, 88
	i32.add 	$push84=, $7, $pop83
	call    	_ZN13horuspaytoken12horustokenio21update_user_resourcesERyRKN5eosio5assetE@FUNCTION, $0, $pop84, $7
	i32.const	$push58=, .L.str.65
	call    	eosio_assert@FUNCTION, $2, $pop58
	i32.const	$push59=, .L.str.66
	call    	eosio_assert@FUNCTION, $2, $pop59
	block   	
	i32.load	$push60=, 36($6)
	i32.call	$push133=, db_next_i64@FUNCTION, $pop60, $7
	tee_local	$push132=, $0=, $pop133
	i32.const	$push61=, 0
	i32.lt_s	$push62=, $pop132, $pop61
	br_if   	0, $pop62
	i32.const	$push87=, 48
	i32.add 	$push88=, $7, $pop87
	i32.call	$drop=, _ZNK5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop88, $0
.LBB66_11:
	end_block
	i32.const	$push85=, 48
	i32.add 	$push86=, $7, $pop85
	call    	_ZN5eosio11multi_indexILy13445401747262537728EN13horuspaytoken14refund_requestEJEE5eraseERKS2_@FUNCTION, $pop86, $6
	block   	
	i32.load	$push137=, 72($7)
	tee_local	$push136=, $2=, $pop137
	i32.eqz 	$push149=, $pop136
	br_if   	0, $pop149
	block   	
	block   	
	i32.const	$push63=, 76
	i32.add 	$push141=, $7, $pop63
	tee_local	$push140=, $4=, $pop141
	i32.load	$push139=, 0($pop140)
	tee_local	$push138=, $6=, $pop139
	i32.eq  	$push64=, $pop138, $2
	br_if   	0, $pop64
.LBB66_14:
	loop    	
	i32.const	$push145=, -24
	i32.add 	$push144=, $6, $pop145
	tee_local	$push143=, $6=, $pop144
	i32.load	$0=, 0($pop143)
	i32.const	$push142=, 0
	i32.store	0($6), $pop142
	block   	
	i32.eqz 	$push150=, $0
	br_if   	0, $pop150
	call    	_ZdlPv@FUNCTION, $0
.LBB66_16:
	end_block
	i32.ne  	$push65=, $2, $6
	br_if   	0, $pop65
	end_loop
	i32.const	$push66=, 72
	i32.add 	$push67=, $7, $pop66
	i32.load	$6=, 0($pop67)
	br      	1
.LBB66_18:
	end_block
	copy_local	$6=, $2
.LBB66_19:
	end_block
	i32.store	0($4), $2
	call    	_ZdlPv@FUNCTION, $6
.LBB66_20:
	end_block
	i32.const	$push74=, 0
	i32.const	$push72=, 96
	i32.add 	$push73=, $7, $pop72
	i32.store	__stack_pointer($pop74), $pop73
	.endfunc
.Lfunc_end66:
	.size	_ZN13horuspaytoken12horustokenio11refundhorusEy, .Lfunc_end66-_ZN13horuspaytoken12horustokenio11refundhorusEy

	.hidden	_ZN13horuspaytoken12horustokenio8transferEyyN5eosio5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE
	.globl	_ZN13horuspaytoken12horustokenio8transferEyyN5eosio5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE
	.type	_ZN13horuspaytoken12horustokenio8transferEyyN5eosio5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE,@function
_ZN13horuspaytoken12horustokenio8transferEyyN5eosio5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE:
	.param  	i32, i64, i64, i32, i32
	.local  	i64, i64, i32, i64, i32, i64, i64, i32, i32
	i32.const	$push105=, 0
	i32.const	$push102=, 0
	i32.load	$push103=, __stack_pointer($pop102)
	i32.const	$push104=, 192
	i32.sub 	$push141=, $pop103, $pop104
	tee_local	$push140=, $13=, $pop141
	i32.store	__stack_pointer($pop105), $pop140
	i64.ne  	$push0=, $1, $2
	i32.const	$push1=, .L.str.11
	call    	eosio_assert@FUNCTION, $pop0, $pop1
	call    	require_auth@FUNCTION, $1
	i32.call	$push2=, is_account@FUNCTION, $2
	i32.const	$push3=, .L.str.12
	call    	eosio_assert@FUNCTION, $pop2, $pop3
	i64.load	$5=, 8($3)
	i32.const	$9=, 0
	i32.const	$push4=, 184
	i32.add 	$push5=, $13, $pop4
	i32.const	$push139=, 0
	i32.store	0($pop5), $pop139
	i64.const	$push138=, 8
	i64.shr_u	$push137=, $5, $pop138
	tee_local	$push136=, $6=, $pop137
	i64.store	160($13), $pop136
	i64.const	$push6=, -1
	i64.store	168($13), $pop6
	i64.const	$push135=, 0
	i64.store	176($13), $pop135
	i64.load	$push7=, 0($0)
	i64.store	152($13), $pop7
	i32.const	$push109=, 152
	i32.add 	$push110=, $13, $pop109
	i32.const	$push8=, .L.str.13
	i32.call	$7=, _ZNK5eosio11multi_indexILy14289235522390851584ENS_5token14currency_statsEJEE3getEyPKc@FUNCTION, $pop110, $6, $pop8
	call    	require_recipient@FUNCTION, $1
	call    	require_recipient@FUNCTION, $2
	block   	
	i64.load	$push134=, 0($3)
	tee_local	$push133=, $8=, $pop134
	i64.const	$push9=, 4611686018427387903
	i64.add 	$push10=, $pop133, $pop9
	i64.const	$push11=, 9223372036854775806
	i64.gt_u	$push12=, $pop10, $pop11
	br_if   	0, $pop12
	i32.const	$12=, 0
	copy_local	$11=, $6
.LBB67_2:
	block   	
	loop    	
	i32.wrap/i64	$push13=, $11
	i32.const	$push144=, 24
	i32.shl 	$push14=, $pop13, $pop144
	i32.const	$push143=, -1073741825
	i32.add 	$push15=, $pop14, $pop143
	i32.const	$push142=, 452984830
	i32.gt_u	$push16=, $pop15, $pop142
	br_if   	1, $pop16
	block   	
	i64.const	$push149=, 8
	i64.shr_u	$push148=, $11, $pop149
	tee_local	$push147=, $11=, $pop148
	i64.const	$push146=, 255
	i64.and 	$push17=, $pop147, $pop146
	i64.const	$push145=, 0
	i64.ne  	$push18=, $pop17, $pop145
	br_if   	0, $pop18
.LBB67_4:
	loop    	
	i64.const	$push154=, 8
	i64.shr_u	$push153=, $11, $pop154
	tee_local	$push152=, $11=, $pop153
	i64.const	$push151=, 255
	i64.and 	$push19=, $pop152, $pop151
	i64.const	$push150=, 0
	i64.ne  	$push20=, $pop19, $pop150
	br_if   	3, $pop20
	i32.const	$push158=, 1
	i32.add 	$push157=, $12, $pop158
	tee_local	$push156=, $12=, $pop157
	i32.const	$push155=, 7
	i32.lt_s	$push21=, $pop156, $pop155
	br_if   	0, $pop21
.LBB67_6:
	end_loop
	end_block
	i32.const	$9=, 1
	i32.const	$push162=, 1
	i32.add 	$push161=, $12, $pop162
	tee_local	$push160=, $12=, $pop161
	i32.const	$push159=, 7
	i32.lt_s	$push22=, $pop160, $pop159
	br_if   	0, $pop22
	br      	2
.LBB67_7:
	end_loop
	end_block
	i32.const	$9=, 0
.LBB67_8:
	end_block
	i32.const	$push23=, .L.str.6
	call    	eosio_assert@FUNCTION, $9, $pop23
	i64.const	$push166=, 0
	i64.gt_s	$push24=, $8, $pop166
	i32.const	$push25=, .L.str.14
	call    	eosio_assert@FUNCTION, $pop24, $pop25
	i64.load	$push26=, 8($7)
	i64.eq  	$push27=, $5, $pop26
	i32.const	$push28=, .L.str.8
	call    	eosio_assert@FUNCTION, $pop27, $pop28
	block   	
	block   	
	i32.load8_u	$push165=, 0($4)
	tee_local	$push164=, $12=, $pop165
	i32.const	$push163=, 1
	i32.and 	$push29=, $pop164, $pop163
	br_if   	0, $pop29
	i32.const	$push167=, 1
	i32.shr_u	$12=, $12, $pop167
	br      	1
.LBB67_10:
	end_block
	i32.load	$12=, 4($4)
.LBB67_11:
	end_block
	i32.const	$push30=, 257
	i32.lt_u	$push31=, $12, $pop30
	i32.const	$push32=, .L.str.4
	call    	eosio_assert@FUNCTION, $pop31, $pop32
	i32.call	$push33=, has_auth@FUNCTION, $2
	i64.select	$11=, $2, $1, $pop33
	block   	
	i64.const	$push34=, 91625918253060
	i64.ne  	$push35=, $5, $pop34
	br_if   	0, $pop35
	i32.const	$push36=, 144
	i32.add 	$push37=, $13, $pop36
	i32.const	$push38=, 0
	i32.store	0($pop37), $pop38
	i64.const	$push39=, -1
	i64.store	128($13), $pop39
	i64.const	$push40=, 0
	i64.store	136($13), $pop40
	i64.load	$push172=, 0($0)
	tee_local	$push171=, $10=, $pop172
	i64.store	112($13), $pop171
	i64.store	120($13), $1
	block   	
	i64.const	$push41=, -3020372000712425472
	i32.call	$push170=, db_find_i64@FUNCTION, $10, $1, $pop41, $1
	tee_local	$push169=, $12=, $pop170
	i32.const	$push168=, 0
	i32.lt_s	$push42=, $pop169, $pop168
	br_if   	0, $pop42
	i32.const	$push127=, 112
	i32.add 	$push128=, $13, $pop127
	i32.call	$push174=, _ZNK5eosio11multi_indexILy15426372072997126144EN13horuspaytoken14user_resourcesEJEE31load_object_by_primary_iteratorEl@FUNCTION, $pop128, $12
	tee_local	$push173=, $12=, $pop174
	i32.load	$push43=, 24($pop173)
	i32.const	$push129=, 112
	i32.add 	$push130=, $13, $pop129
	i32.eq  	$push44=, $pop43, $pop130
	i32.const	$push45=, .L.str.75
	call    	eosio_assert@FUNCTION, $pop44, $pop45
	i64.load	$push46=, 8($12)
	i64.eqz 	$push47=, $pop46
	br_if   	0, $pop47
	i32.const	$push48=, 104
	i32.add 	$push49=, $13, $pop48
	i32.const	$push50=, 0
	i32.store	0($pop49), $pop50
	i64.store	80($13), $1
	i64.const	$push51=, -1
	i64.store	88($13), $pop51
	i64.const	$push52=, 0
	i64.store	96($13), $pop52
	i64.load	$push53=, 0($0)
	i64.store	72($13), $pop53
	i32.const	$push131=, 72
	i32.add 	$push132=, $13, $pop131
	i32.const	$push54=, .L.str.38
	i32.call	$push182=, _ZNK5eosio11multi_indexILy3607749779137757184ENS_5token7accountEJEE3getEyPKc@FUNCTION, $pop132, $6, $pop54
	tee_local	$push181=, $9=, $pop182
	i64.load	$6=, 0($pop181)
	i32.const	$push55=, 16
	i32.add 	$push56=, $12, $pop55
	i64.load	$push57=, 0($pop56)
	i64.load	$push180=, 8($9)
	tee_local	$push179=, $10=, $pop180
	i64.eq  	$push58=, $pop57, $pop179
	i32.const	$push59=, .L.str.45
	call    	eosio_assert@FUNCTION, $pop58, $pop59
	i32.const	$push60=, 8
	i32.add 	$push61=, $12, $pop60
	i64.load	$push62=, 0($pop61)
	i64.sub 	$push178=, $6, $pop62
	tee_local	$push177=, $6=, $pop178
	i64.const	$push63=, -4611686018427387904
	i64.gt_s	$push64=, $pop177, $pop63
	i32.const	$push65=, .L.str.46
	call    	eosio_assert@FUNCTION, $pop64, $pop65
	i64.const	$push66=, 4611686018427387904
	i64.lt_s	$push67=, $6, $pop66
	i32.const	$push68=, .L.str.47
	call    	eosio_assert@FUNCTION, $pop67, $pop68
	i64.eq  	$push69=, $5, $10
	i32.const	$push70=, .L.str.44
	call    	eosio_assert@FUNCTION, $pop69, $pop70
	i64.le_s	$push71=, $8, $6
	i32.const	$push72=, .L.str.39
	call    	eosio_assert@FUNCTION, $pop71, $pop72
	i32.load	$push176=, 96($13)
	tee_local	$push175=, $4=, $pop176
	i32.eqz 	$push222=, $pop175
	br_if   	0, $pop222
	block   	
	block   	
	i32.const	$push73=, 100
	i32.add 	$push186=, $13, $pop73
	tee_local	$push185=, $7=, $pop186
	i32.load	$push184=, 0($pop185)
	tee_local	$push183=, $12=, $pop184
	i32.eq  	$push74=, $pop183, $4
	br_if   	0, $pop74
.LBB67_17:
	loop    	
	i32.const	$push190=, -24
	i32.add 	$push189=, $12, $pop190
	tee_local	$push188=, $12=, $pop189
	i32.load	$9=, 0($pop188)
	i32.const	$push187=, 0
	i32.store	0($12), $pop187
	block   	
	i32.eqz 	$push223=, $9
	br_if   	0, $pop223
	call    	_ZdlPv@FUNCTION, $9
.LBB67_19:
	end_block
	i32.ne  	$push75=, $4, $12
	br_if   	0, $pop75
	end_loop
	i32.const	$push76=, 96
	i32.add 	$push77=, $13, $pop76
	i32.load	$12=, 0($pop77)
	br      	1
.LBB67_21:
	end_block
	copy_local	$12=, $4
.LBB67_22:
	end_block
	i32.store	0($7), $4
	call    	_ZdlPv@FUNCTION, $12
.LBB67_23:
	end_block
	i32.load	$push192=, 136($13)
	tee_local	$push191=, $4=, $pop192
	i32.eqz 	$push224=, $pop191
	br_if   	0, $pop224
	block   	
	block   	
	i32.const	$push78=, 140
	i32.add 	$push196=, $13, $pop78
	tee_local	$push195=, $7=, $pop196
	i32.load	$push194=, 0($pop195)
	tee_local	$push193=, $12=, $pop194
	i32.eq  	$push79=, $pop193, $4
	br_if   	0, $pop79
.LBB67_26:
	loop    	
	i32.const	$push200=, -24
	i32.add 	$push199=, $12, $pop200
	tee_local	$push198=, $12=, $pop199
	i32.load	$9=, 0($pop198)
	i32.const	$push197=, 0
	i32.store	0($12), $pop197
	block   	
	i32.eqz 	$push225=, $9
	br_if   	0, $pop225
	call    	_ZdlPv@FUNCTION, $9
.LBB67_28:
	end_block
	i32.ne  	$push80=, $4, $12
	br_if   	0, $pop80
	end_loop
	i32.const	$push81=, 136
	i32.add 	$push82=, $13, $pop81
	i32.load	$12=, 0($pop82)
	br      	1
.LBB67_30:
	end_block
	copy_local	$12=, $4
.LBB67_31:
	end_block
	i32.store	0($7), $4
	call    	_ZdlPv@FUNCTION, $12
.LBB67_32:
	end_block
	i32.const	$push111=, 56
	i32.add 	$push112=, $13, $pop111
	i32.const	$push83=, 8
	i32.add 	$push84=, $pop112, $pop83
	i32.const	$push213=, 8
	i32.add 	$push212=, $3, $pop213
	tee_local	$push211=, $12=, $pop212
	i64.load	$push210=, 0($pop211)
	tee_local	$push209=, $5=, $pop210
	i64.store	0($pop84), $pop209
	i64.load	$6=, 0($3)
	i32.const	$push113=, 24
	i32.add 	$push114=, $13, $pop113
	i32.const	$push208=, 8
	i32.add 	$push85=, $pop114, $pop208
	i64.store	0($pop85), $5
	i64.store	56($13), $6
	i32.load	$push86=, 60($13)
	i32.store	28($13), $pop86
	i32.load	$push87=, 56($13)
	i32.store	24($13), $pop87
	i32.const	$push115=, 24
	i32.add 	$push116=, $13, $pop115
	call    	_ZN5eosio5token11sub_balanceEyNS_5assetE@FUNCTION, $0, $1, $pop116
	i32.const	$push117=, 40
	i32.add 	$push118=, $13, $pop117
	i32.const	$push207=, 8
	i32.add 	$push206=, $pop118, $pop207
	tee_local	$push205=, $9=, $pop206
	i64.load	$push88=, 0($12)
	i64.store	0($pop205), $pop88
	i64.load	$1=, 0($3)
	i32.const	$push119=, 8
	i32.add 	$push120=, $13, $pop119
	i32.const	$push89=, 12
	i32.add 	$push90=, $pop120, $pop89
	i32.const	$push121=, 40
	i32.add 	$push122=, $13, $pop121
	i32.const	$push204=, 12
	i32.add 	$push91=, $pop122, $pop204
	i32.load	$push92=, 0($pop91)
	i32.store	0($pop90), $pop92
	i32.const	$push123=, 8
	i32.add 	$push124=, $13, $pop123
	i32.const	$push203=, 8
	i32.add 	$push93=, $pop124, $pop203
	i32.load	$push94=, 0($9)
	i32.store	0($pop93), $pop94
	i64.store	40($13), $1
	i32.load	$push95=, 44($13)
	i32.store	12($13), $pop95
	i32.load	$push96=, 40($13)
	i32.store	8($13), $pop96
	i32.const	$push125=, 8
	i32.add 	$push126=, $13, $pop125
	call    	_ZN5eosio5token11add_balanceEyNS_5assetEy@FUNCTION, $0, $2, $pop126, $11
	block   	
	i32.load	$push202=, 176($13)
	tee_local	$push201=, $4=, $pop202
	i32.eqz 	$push226=, $pop201
	br_if   	0, $pop226
	block   	
	block   	
	i32.const	$push97=, 180
	i32.add 	$push217=, $13, $pop97
	tee_local	$push216=, $3=, $pop217
	i32.load	$push215=, 0($pop216)
	tee_local	$push214=, $12=, $pop215
	i32.eq  	$push98=, $pop214, $4
	br_if   	0, $pop98
.LBB67_35:
	loop    	
	i32.const	$push221=, -24
	i32.add 	$push220=, $12, $pop221
	tee_local	$push219=, $12=, $pop220
	i32.load	$9=, 0($pop219)
	i32.const	$push218=, 0
	i32.store	0($12), $pop218
	block   	
	i32.eqz 	$push227=, $9
	br_if   	0, $pop227
	call    	_ZdlPv@FUNCTION, $9
.LBB67_37:
	end_block
	i32.ne  	$push99=, $4, $12
	br_if   	0, $pop99
	end_loop
	i32.const	$push100=, 176
	i32.add 	$push101=, $13, $pop100
	i32.load	$12=, 0($pop101)
	br      	1
.LBB67_39:
	end_block
	copy_local	$12=, $4
.LBB67_40:
	end_block
	i32.store	0($3), $4
	call    	_ZdlPv@FUNCTION, $12
.LBB67_41:
	end_block
	i32.const	$push108=, 0
	i32.const	$push106=, 192
	i32.add 	$push107=, $13, $pop106
	i32.store	__stack_pointer($pop108), $pop107
	.endfunc
.Lfunc_end67:
	.size	_ZN13horuspaytoken12horustokenio8transferEyyN5eosio5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE, .Lfunc_end67-_ZN13horuspaytoken12horustokenio8transferEyyN5eosio5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE

	.hidden	apply
	.globl	apply
	.type	apply,@function
apply:
	.param  	i64, i64, i64
	.local  	i32, i32, i64, i64, i64, i64, i32
	i32.const	$push89=, 0
	i32.const	$push86=, 0
	i32.load	$push87=, __stack_pointer($pop86)
	i32.const	$push88=, 128
	i32.sub 	$push122=, $pop87, $pop88
	tee_local	$push121=, $9=, $pop122
	i32.store	__stack_pointer($pop89), $pop121
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.40
	i64.const	$7=, 0
.LBB68_1:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push123=, 6
	i64.gt_u	$push0=, $6, $pop123
	br_if   	0, $pop0
	i32.load8_s	$push128=, 0($4)
	tee_local	$push127=, $3=, $pop128
	i32.const	$push126=, -97
	i32.add 	$push2=, $pop127, $pop126
	i32.const	$push125=, 255
	i32.and 	$push3=, $pop2, $pop125
	i32.const	$push124=, 25
	i32.gt_u	$push4=, $pop3, $pop124
	br_if   	1, $pop4
	i32.const	$push129=, 165
	i32.add 	$3=, $3, $pop129
	br      	2
.LBB68_4:
	end_block
	i64.const	$8=, 0
	i64.const	$push130=, 11
	i64.le_u	$push1=, $6, $pop130
	br_if   	2, $pop1
	br      	3
.LBB68_5:
	end_block
	i32.const	$push135=, 208
	i32.add 	$push5=, $3, $pop135
	i32.const	$push134=, 0
	i32.const	$push133=, -49
	i32.add 	$push6=, $3, $pop133
	i32.const	$push132=, 255
	i32.and 	$push7=, $pop6, $pop132
	i32.const	$push131=, 5
	i32.lt_u	$push8=, $pop7, $pop131
	i32.select	$3=, $pop5, $pop134, $pop8
.LBB68_6:
	end_block
	i64.extend_u/i32	$push9=, $3
	i64.const	$push137=, 56
	i64.shl 	$push10=, $pop9, $pop137
	i64.const	$push136=, 56
	i64.shr_s	$8=, $pop10, $pop136
.LBB68_7:
	end_block
	i64.const	$push139=, 31
	i64.and 	$push12=, $8, $pop139
	i64.const	$push138=, 4294967295
	i64.and 	$push11=, $5, $pop138
	i64.shl 	$8=, $pop12, $pop11
.LBB68_8:
	end_block
	i32.const	$push145=, 1
	i32.add 	$4=, $4, $pop145
	i64.const	$push144=, 1
	i64.add 	$6=, $6, $pop144
	i64.or  	$7=, $8, $7
	i64.const	$push143=, -5
	i64.add 	$push142=, $5, $pop143
	tee_local	$push141=, $5=, $pop142
	i64.const	$push140=, -6
	i64.ne  	$push13=, $pop141, $pop140
	br_if   	0, $pop13
	end_loop
	block   	
	i64.ne  	$push14=, $7, $2
	br_if   	0, $pop14
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.41
	i64.const	$7=, 0
.LBB68_11:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push146=, 4
	i64.gt_u	$push15=, $6, $pop146
	br_if   	0, $pop15
	i32.load8_s	$push151=, 0($4)
	tee_local	$push150=, $3=, $pop151
	i32.const	$push149=, -97
	i32.add 	$push17=, $pop150, $pop149
	i32.const	$push148=, 255
	i32.and 	$push18=, $pop17, $pop148
	i32.const	$push147=, 25
	i32.gt_u	$push19=, $pop18, $pop147
	br_if   	1, $pop19
	i32.const	$push152=, 165
	i32.add 	$3=, $3, $pop152
	br      	2
.LBB68_14:
	end_block
	i64.const	$8=, 0
	i64.const	$push153=, 11
	i64.le_u	$push16=, $6, $pop153
	br_if   	2, $pop16
	br      	3
.LBB68_15:
	end_block
	i32.const	$push158=, 208
	i32.add 	$push20=, $3, $pop158
	i32.const	$push157=, 0
	i32.const	$push156=, -49
	i32.add 	$push21=, $3, $pop156
	i32.const	$push155=, 255
	i32.and 	$push22=, $pop21, $pop155
	i32.const	$push154=, 5
	i32.lt_u	$push23=, $pop22, $pop154
	i32.select	$3=, $pop20, $pop157, $pop23
.LBB68_16:
	end_block
	i64.extend_u/i32	$push24=, $3
	i64.const	$push160=, 56
	i64.shl 	$push25=, $pop24, $pop160
	i64.const	$push159=, 56
	i64.shr_s	$8=, $pop25, $pop159
.LBB68_17:
	end_block
	i64.const	$push162=, 31
	i64.and 	$push27=, $8, $pop162
	i64.const	$push161=, 4294967295
	i64.and 	$push26=, $5, $pop161
	i64.shl 	$8=, $pop27, $pop26
.LBB68_18:
	end_block
	i32.const	$push168=, 1
	i32.add 	$4=, $4, $pop168
	i64.const	$push167=, 1
	i64.add 	$6=, $6, $pop167
	i64.or  	$7=, $8, $7
	i64.const	$push166=, -5
	i64.add 	$push165=, $5, $pop166
	tee_local	$push164=, $5=, $pop165
	i64.const	$push163=, -6
	i64.ne  	$push28=, $pop164, $pop163
	br_if   	0, $pop28
	end_loop
	i64.eq  	$push29=, $7, $1
	i32.const	$push30=, .L.str.42
	call    	eosio_assert@FUNCTION, $pop29, $pop30
.LBB68_20:
	end_block
	block   	
	block   	
	i64.eq  	$push31=, $1, $0
	br_if   	0, $pop31
	i64.const	$6=, 0
	i64.const	$5=, 59
	i32.const	$4=, .L.str.40
	i64.const	$7=, 0
.LBB68_22:
	loop    	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push169=, 6
	i64.gt_u	$push32=, $6, $pop169
	br_if   	0, $pop32
	i32.load8_s	$push174=, 0($4)
	tee_local	$push173=, $3=, $pop174
	i32.const	$push172=, -97
	i32.add 	$push34=, $pop173, $pop172
	i32.const	$push171=, 255
	i32.and 	$push35=, $pop34, $pop171
	i32.const	$push170=, 25
	i32.gt_u	$push36=, $pop35, $pop170
	br_if   	1, $pop36
	i32.const	$push175=, 165
	i32.add 	$3=, $3, $pop175
	br      	2
.LBB68_25:
	end_block
	i64.const	$8=, 0
	i64.const	$push176=, 11
	i64.le_u	$push33=, $6, $pop176
	br_if   	2, $pop33
	br      	3
.LBB68_26:
	end_block
	i32.const	$push181=, 208
	i32.add 	$push37=, $3, $pop181
	i32.const	$push180=, 0
	i32.const	$push179=, -49
	i32.add 	$push38=, $3, $pop179
	i32.const	$push178=, 255
	i32.and 	$push39=, $pop38, $pop178
	i32.const	$push177=, 5
	i32.lt_u	$push40=, $pop39, $pop177
	i32.select	$3=, $pop37, $pop180, $pop40
.LBB68_27:
	end_block
	i64.extend_u/i32	$push41=, $3
	i64.const	$push183=, 56
	i64.shl 	$push42=, $pop41, $pop183
	i64.const	$push182=, 56
	i64.shr_s	$8=, $pop42, $pop182
.LBB68_28:
	end_block
	i64.const	$push185=, 31
	i64.and 	$push44=, $8, $pop185
	i64.const	$push184=, 4294967295
	i64.and 	$push43=, $5, $pop184
	i64.shl 	$8=, $pop44, $pop43
.LBB68_29:
	end_block
	i32.const	$push191=, 1
	i32.add 	$4=, $4, $pop191
	i64.const	$push190=, 1
	i64.add 	$6=, $6, $pop190
	i64.or  	$7=, $8, $7
	i64.const	$push189=, -5
	i64.add 	$push188=, $5, $pop189
	tee_local	$push187=, $5=, $pop188
	i64.const	$push186=, -6
	i64.ne  	$push45=, $pop187, $pop186
	br_if   	0, $pop45
	end_loop
	i64.ne  	$push46=, $7, $2
	br_if   	1, $pop46
.LBB68_31:
	end_block
	i64.store	120($9), $0
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i64.const	$push47=, -3102536759596681857
	i64.le_s	$push48=, $2, $pop47
	br_if   	0, $pop48
	i64.const	$push49=, 5031766152489992191
	i64.gt_s	$push50=, $2, $pop49
	br_if   	1, $pop50
	i64.const	$push55=, -3102536759596681856
	i64.eq  	$push56=, $2, $pop55
	br_if   	2, $pop56
	i64.const	$push57=, 4921565079997370880
	i64.ne  	$push58=, $2, $pop57
	br_if   	6, $pop58
	i32.const	$push65=, 0
	i32.store	68($9), $pop65
	i32.const	$push66=, _ZN13horuspaytoken12horustokenio11claimrewardEyy@FUNCTION
	i32.store	64($9), $pop66
	i64.load	$push67=, 64($9)
	i64.store	56($9):p2align=2, $pop67
	i32.const	$push109=, 120
	i32.add 	$push110=, $9, $pop109
	i32.const	$push111=, 56
	i32.add 	$push112=, $9, $pop111
	i32.call	$drop=, _ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop110, $pop112
	br      	6
.LBB68_36:
	end_block
	i64.const	$push59=, -5001342332004552704
	i64.eq  	$push60=, $2, $pop59
	br_if   	2, $pop60
	i64.const	$push61=, -4157661148959342592
	i64.eq  	$push62=, $2, $pop61
	br_if   	3, $pop62
	i64.const	$push63=, -3617168760277827584
	i64.ne  	$push64=, $2, $pop63
	br_if   	5, $pop64
	i32.const	$push77=, 0
	i32.store	100($9), $pop77
	i32.const	$push78=, _ZN13horuspaytoken12horustokenio8transferEyyN5eosio5assetENSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE@FUNCTION
	i32.store	96($9), $pop78
	i64.load	$push79=, 96($9)
	i64.store	24($9):p2align=2, $pop79
	i32.const	$push101=, 120
	i32.add 	$push102=, $9, $pop101
	i32.const	$push103=, 24
	i32.add 	$push104=, $9, $pop103
	i32.call	$drop=, _ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop102, $pop104
	br      	5
.LBB68_40:
	end_block
	i64.const	$push51=, 8516769789752901632
	i64.eq  	$push52=, $2, $pop51
	br_if   	3, $pop52
	i64.const	$push53=, 5031766152489992192
	i64.ne  	$push54=, $2, $pop53
	br_if   	4, $pop54
	i32.const	$push83=, 0
	i32.store	116($9), $pop83
	i32.const	$push84=, _ZN5eosio5token6createEyNS_5assetE@FUNCTION
	i32.store	112($9), $pop84
	i64.load	$push85=, 112($9)
	i64.store	8($9):p2align=2, $pop85
	i32.const	$push117=, 120
	i32.add 	$push118=, $9, $pop117
	i32.const	$push119=, 8
	i32.add 	$push120=, $9, $pop119
	i32.call	$drop=, _ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetEEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop118, $pop120
	br      	4
.LBB68_43:
	end_block
	i32.const	$push71=, 0
	i32.store	84($9), $pop71
	i32.const	$push72=, _ZN13horuspaytoken12horustokenio12unstakehorusEyy@FUNCTION
	i32.store	80($9), $pop72
	i64.load	$push73=, 80($9)
	i64.store	40($9):p2align=2, $pop73
	i32.const	$push105=, 120
	i32.add 	$push106=, $9, $pop105
	i32.const	$push107=, 40
	i32.add 	$push108=, $9, $pop107
	i32.call	$drop=, _ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop106, $pop108
	br      	3
.LBB68_44:
	end_block
	i32.const	$push68=, 0
	i32.store	76($9), $pop68
	i32.const	$push69=, _ZN13horuspaytoken12horustokenio11refundhorusEy@FUNCTION
	i32.store	72($9), $pop69
	i64.load	$push70=, 72($9)
	i64.store	48($9):p2align=2, $pop70
	i32.const	$push93=, 120
	i32.add 	$push94=, $9, $pop93
	i32.const	$push95=, 48
	i32.add 	$push96=, $9, $pop95
	i32.call	$drop=, _ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop94, $pop96
	br      	2
.LBB68_45:
	end_block
	i32.const	$push74=, 0
	i32.store	92($9), $pop74
	i32.const	$push75=, _ZN13horuspaytoken12horustokenio10stakehorusEyyN5eosio5assetE@FUNCTION
	i32.store	88($9), $pop75
	i64.load	$push76=, 88($9)
	i64.store	32($9):p2align=2, $pop76
	i32.const	$push97=, 120
	i32.add 	$push98=, $9, $pop97
	i32.const	$push99=, 32
	i32.add 	$push100=, $9, $pop99
	i32.call	$drop=, _ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetEEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop98, $pop100
	br      	1
.LBB68_46:
	end_block
	i32.const	$push80=, 0
	i32.store	108($9), $pop80
	i32.const	$push81=, _ZN5eosio5token5issueEyNS_5assetENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE@FUNCTION
	i32.store	104($9), $pop81
	i64.load	$push82=, 104($9)
	i64.store	16($9):p2align=2, $pop82
	i32.const	$push113=, 120
	i32.add 	$push114=, $9, $pop113
	i32.const	$push115=, 16
	i32.add 	$push116=, $9, $pop115
	i32.call	$drop=, _ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E@FUNCTION, $pop114, $pop116
.LBB68_47:
	end_block
	i32.const	$push92=, 0
	i32.const	$push90=, 128
	i32.add 	$push91=, $9, $pop90
	i32.store	__stack_pointer($pop92), $pop91
	.endfunc
.Lfunc_end68:
	.size	apply, .Lfunc_end68-apply

	.section	.text._ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetEEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetEEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetEEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetEEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetEEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetEEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i64, i32, i64, i32, i32, i32
	i32.const	$push50=, 0
	i32.load	$push51=, __stack_pointer($pop50)
	i32.const	$push52=, 96
	i32.sub 	$push79=, $pop51, $pop52
	tee_local	$push78=, $7=, $pop79
	copy_local	$9=, $pop78
	i32.const	$push53=, 0
	i32.store	__stack_pointer($pop53), $7
	i32.load	$2=, 4($1)
	i32.load	$8=, 0($1)
	i32.const	$1=, 0
	i32.const	$5=, 0
	block   	
	i32.call	$push77=, action_data_size@FUNCTION
	tee_local	$push76=, $3=, $pop77
	i32.eqz 	$push132=, $pop76
	br_if   	0, $pop132
	block   	
	block   	
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $3, $pop0
	br_if   	0, $pop1
	i32.call	$5=, malloc@FUNCTION, $3
	br      	1
.LBB69_3:
	end_block
	i32.const	$push49=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $3, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push81=, $7, $pop5
	tee_local	$push80=, $5=, $pop81
	copy_local	$push75=, $pop80
	i32.store	__stack_pointer($pop49), $pop75
.LBB69_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $5, $3
.LBB69_5:
	end_block
	i32.const	$push6=, 40
	i32.add 	$push7=, $9, $pop6
	i64.const	$push8=, 1398362884
	i64.store	0($pop7), $pop8
	i64.const	$push84=, 0
	i64.store	32($9), $pop84
	i64.const	$push83=, 0
	i64.store	24($9), $pop83
	i32.const	$push82=, 1
	i32.const	$push9=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop82, $pop9
	i64.const	$6=, 5462355
.LBB69_6:
	block   	
	loop    	
	i32.const	$7=, 0
	i32.wrap/i64	$push10=, $6
	i32.const	$push87=, 24
	i32.shl 	$push11=, $pop10, $pop87
	i32.const	$push86=, -1073741825
	i32.add 	$push12=, $pop11, $pop86
	i32.const	$push85=, 452984830
	i32.gt_u	$push13=, $pop12, $pop85
	br_if   	1, $pop13
	block   	
	i64.const	$push92=, 8
	i64.shr_u	$push91=, $6, $pop92
	tee_local	$push90=, $6=, $pop91
	i64.const	$push89=, 255
	i64.and 	$push14=, $pop90, $pop89
	i64.const	$push88=, 0
	i64.ne  	$push15=, $pop14, $pop88
	br_if   	0, $pop15
.LBB69_8:
	loop    	
	i64.const	$push97=, 8
	i64.shr_u	$push96=, $6, $pop97
	tee_local	$push95=, $6=, $pop96
	i64.const	$push94=, 255
	i64.and 	$push16=, $pop95, $pop94
	i64.const	$push93=, 0
	i64.ne  	$push17=, $pop16, $pop93
	br_if   	3, $pop17
	i32.const	$push101=, 1
	i32.add 	$push100=, $1, $pop101
	tee_local	$push99=, $1=, $pop100
	i32.const	$push98=, 7
	i32.lt_s	$push18=, $pop99, $pop98
	br_if   	0, $pop18
.LBB69_10:
	end_loop
	end_block
	i32.const	$7=, 1
	i32.const	$push105=, 1
	i32.add 	$push104=, $1, $pop105
	tee_local	$push103=, $1=, $pop104
	i32.const	$push102=, 7
	i32.lt_s	$push19=, $pop103, $pop102
	br_if   	0, $pop19
.LBB69_11:
	end_loop
	end_block
	i32.const	$push20=, .L.str
	call    	eosio_assert@FUNCTION, $7, $pop20
	i32.const	$push21=, 7
	i32.gt_u	$push22=, $3, $pop21
	i32.const	$push23=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop22, $pop23
	i32.const	$push57=, 24
	i32.add 	$push58=, $9, $pop57
	i32.const	$push119=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop58, $5, $pop119
	i32.const	$push24=, -8
	i32.and 	$push118=, $3, $pop24
	tee_local	$push117=, $7=, $pop118
	i32.const	$push116=, 8
	i32.ne  	$push25=, $pop117, $pop116
	i32.const	$push115=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop25, $pop115
	i32.const	$push59=, 24
	i32.add 	$push60=, $9, $pop59
	i32.const	$push114=, 8
	i32.add 	$push113=, $pop60, $pop114
	tee_local	$push112=, $1=, $pop113
	i32.const	$push111=, 8
	i32.add 	$push26=, $5, $pop111
	i32.const	$push110=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop112, $pop26, $pop110
	i32.const	$push27=, 16
	i32.ne  	$push28=, $7, $pop27
	i32.const	$push109=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop28, $pop109
	i32.const	$push61=, 24
	i32.add 	$push62=, $9, $pop61
	i32.const	$push108=, 16
	i32.add 	$push30=, $pop62, $pop108
	i32.const	$push107=, 16
	i32.add 	$push29=, $5, $pop107
	i32.const	$push106=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop30, $pop29, $pop106
	block   	
	i32.const	$push31=, 513
	i32.lt_u	$push32=, $3, $pop31
	br_if   	0, $pop32
	call    	free@FUNCTION, $5
.LBB69_13:
	end_block
	i32.const	$push63=, 48
	i32.add 	$push64=, $9, $pop63
	i32.const	$push125=, 8
	i32.add 	$push124=, $pop64, $pop125
	tee_local	$push123=, $7=, $pop124
	i32.const	$push122=, 8
	i32.add 	$push33=, $1, $pop122
	i64.load	$push34=, 0($pop33)
	i64.store	0($pop123), $pop34
	i64.load	$6=, 24($9)
	i64.load	$push35=, 0($1)
	i64.store	48($9), $pop35
	i32.const	$push65=, 64
	i32.add 	$push66=, $9, $pop65
	i32.const	$push121=, 8
	i32.add 	$push36=, $pop66, $pop121
	i64.load	$push37=, 0($7)
	i64.store	0($pop36), $pop37
	i64.load	$push38=, 48($9)
	i64.store	64($9), $pop38
	i32.const	$push39=, 1
	i32.shr_s	$push40=, $2, $pop39
	i32.add 	$1=, $0, $pop40
	block   	
	i32.const	$push120=, 1
	i32.and 	$push41=, $2, $pop120
	i32.eqz 	$push133=, $pop41
	br_if   	0, $pop133
	i32.load	$push42=, 0($1)
	i32.add 	$push43=, $pop42, $8
	i32.load	$8=, 0($pop43)
.LBB69_15:
	end_block
	i32.const	$push67=, 80
	i32.add 	$push68=, $9, $pop67
	i32.const	$push44=, 8
	i32.add 	$push45=, $pop68, $pop44
	i32.const	$push69=, 64
	i32.add 	$push70=, $9, $pop69
	i32.const	$push131=, 8
	i32.add 	$push46=, $pop70, $pop131
	i64.load	$push130=, 0($pop46)
	tee_local	$push129=, $4=, $pop130
	i64.store	0($pop45), $pop129
	i32.const	$push71=, 8
	i32.add 	$push72=, $9, $pop71
	i32.const	$push128=, 8
	i32.add 	$push47=, $pop72, $pop128
	i64.store	0($pop47), $4
	i64.load	$push127=, 64($9)
	tee_local	$push126=, $4=, $pop127
	i64.store	80($9), $pop126
	i64.store	8($9), $4
	i32.const	$push73=, 8
	i32.add 	$push74=, $9, $pop73
	call_indirect	$1, $6, $pop74, $8
	i32.const	$push56=, 0
	i32.const	$push54=, 96
	i32.add 	$push55=, $9, $pop54
	i32.store	__stack_pointer($pop56), $pop55
	i32.const	$push48=, 1
	.endfunc
.Lfunc_end69:
	.size	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetEEEEbPT_MT0_FvDpT1_E, .Lfunc_end69-_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetEEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i32, i32
	i32.const	$push51=, 0
	i32.const	$push48=, 0
	i32.load	$push49=, __stack_pointer($pop48)
	i32.const	$push50=, 80
	i32.sub 	$push79=, $pop49, $pop50
	tee_local	$push78=, $4=, $pop79
	i32.store	__stack_pointer($pop51), $pop78
	copy_local	$push77=, $4
	tee_local	$push76=, $5=, $pop77
	i32.store	60($pop76), $0
	i32.load	$push0=, 0($1)
	i32.store	48($5), $pop0
	i32.load	$push1=, 4($1)
	i32.store	52($5), $pop1
	i32.const	$1=, 0
	i32.const	$0=, 0
	block   	
	i32.call	$push75=, action_data_size@FUNCTION
	tee_local	$push74=, $2=, $pop75
	i32.eqz 	$push125=, $pop74
	br_if   	0, $pop125
	block   	
	block   	
	i32.const	$push2=, 513
	i32.lt_u	$push3=, $2, $pop2
	br_if   	0, $pop3
	i32.call	$0=, malloc@FUNCTION, $2
	br      	1
.LBB70_3:
	end_block
	i32.const	$push47=, 0
	i32.const	$push4=, 15
	i32.add 	$push5=, $2, $pop4
	i32.const	$push6=, -16
	i32.and 	$push7=, $pop5, $pop6
	i32.sub 	$push81=, $4, $pop7
	tee_local	$push80=, $0=, $pop81
	copy_local	$push73=, $pop80
	i32.store	__stack_pointer($pop47), $pop73
.LBB70_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $0, $2
.LBB70_5:
	end_block
	i32.const	$push8=, 24
	i32.add 	$push9=, $5, $pop8
	i64.const	$push10=, 1398362884
	i64.store	0($pop9), $pop10
	i64.const	$push84=, 0
	i64.store	16($5), $pop84
	i64.const	$push83=, 0
	i64.store	8($5), $pop83
	i32.const	$push82=, 1
	i32.const	$push11=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop82, $pop11
	i64.const	$3=, 5462355
.LBB70_6:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push12=, $3
	i32.const	$push87=, 24
	i32.shl 	$push13=, $pop12, $pop87
	i32.const	$push86=, -1073741825
	i32.add 	$push14=, $pop13, $pop86
	i32.const	$push85=, 452984830
	i32.gt_u	$push15=, $pop14, $pop85
	br_if   	1, $pop15
	block   	
	i64.const	$push92=, 8
	i64.shr_u	$push91=, $3, $pop92
	tee_local	$push90=, $3=, $pop91
	i64.const	$push89=, 255
	i64.and 	$push16=, $pop90, $pop89
	i64.const	$push88=, 0
	i64.ne  	$push17=, $pop16, $pop88
	br_if   	0, $pop17
.LBB70_8:
	loop    	
	i64.const	$push97=, 8
	i64.shr_u	$push96=, $3, $pop97
	tee_local	$push95=, $3=, $pop96
	i64.const	$push94=, 255
	i64.and 	$push18=, $pop95, $pop94
	i64.const	$push93=, 0
	i64.ne  	$push19=, $pop18, $pop93
	br_if   	3, $pop19
	i32.const	$push101=, 1
	i32.add 	$push100=, $1, $pop101
	tee_local	$push99=, $1=, $pop100
	i32.const	$push98=, 7
	i32.lt_s	$push20=, $pop99, $pop98
	br_if   	0, $pop20
.LBB70_10:
	end_loop
	end_block
	i32.const	$4=, 1
	i32.const	$push105=, 1
	i32.add 	$push104=, $1, $pop105
	tee_local	$push103=, $1=, $pop104
	i32.const	$push102=, 7
	i32.lt_s	$push21=, $pop103, $pop102
	br_if   	0, $pop21
	br      	2
.LBB70_11:
	end_loop
	end_block
	i32.const	$4=, 0
.LBB70_12:
	end_block
	i32.const	$push22=, .L.str
	call    	eosio_assert@FUNCTION, $4, $pop22
	i32.const	$push23=, 40
	i32.add 	$push24=, $5, $pop23
	i32.const	$push122=, 0
	i32.store	0($pop24), $pop122
	i64.const	$push25=, 0
	i64.store	32($5), $pop25
	i32.store	64($5), $0
	i32.add 	$push121=, $0, $2
	tee_local	$push120=, $1=, $pop121
	i32.store	72($5), $pop120
	i32.const	$push26=, 7
	i32.gt_u	$push27=, $2, $pop26
	i32.const	$push28=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop27, $pop28
	i32.const	$push55=, 8
	i32.add 	$push56=, $5, $pop55
	i32.const	$push29=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop56, $0, $pop29
	i32.const	$push119=, 8
	i32.add 	$push118=, $0, $pop119
	tee_local	$push117=, $4=, $pop118
	i32.sub 	$push30=, $1, $pop117
	i32.const	$push116=, 7
	i32.gt_u	$push31=, $pop30, $pop116
	i32.const	$push115=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop31, $pop115
	i32.const	$push57=, 8
	i32.add 	$push58=, $5, $pop57
	i32.const	$push114=, 8
	i32.add 	$push32=, $pop58, $pop114
	i32.const	$push113=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop32, $4, $pop113
	i32.const	$push33=, 16
	i32.add 	$push112=, $0, $pop33
	tee_local	$push111=, $4=, $pop112
	i32.sub 	$push34=, $1, $pop111
	i32.const	$push110=, 7
	i32.gt_u	$push35=, $pop34, $pop110
	i32.const	$push109=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop35, $pop109
	i32.const	$push59=, 8
	i32.add 	$push60=, $5, $pop59
	i32.const	$push108=, 16
	i32.add 	$push36=, $pop60, $pop108
	i32.const	$push107=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop36, $4, $pop107
	i32.const	$push37=, 24
	i32.add 	$push38=, $0, $pop37
	i32.store	68($5), $pop38
	i32.const	$push63=, 64
	i32.add 	$push64=, $5, $pop63
	i32.const	$push61=, 8
	i32.add 	$push62=, $5, $pop61
	i32.const	$push106=, 24
	i32.add 	$push39=, $pop62, $pop106
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop64, $pop39
	block   	
	i32.const	$push40=, 513
	i32.lt_u	$push41=, $2, $pop40
	br_if   	0, $pop41
	call    	free@FUNCTION, $0
.LBB70_14:
	end_block
	i32.const	$push65=, 48
	i32.add 	$push66=, $5, $pop65
	i32.store	68($5), $pop66
	i32.const	$push67=, 60
	i32.add 	$push68=, $5, $pop67
	i32.store	64($5), $pop68
	i32.const	$push69=, 64
	i32.add 	$push70=, $5, $pop69
	i32.const	$push71=, 8
	i32.add 	$push72=, $5, $pop71
	call    	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS3_5tokenEJyNS3_5assetENSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS9_5tupleIJyS8_SF_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISG_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISI_Efp0_EEEEOSG_OSI_NS0_16integer_sequenceIjJXspT1_EEEE@FUNCTION, $pop70, $pop72
	block   	
	i32.load8_u	$push42=, 32($5)
	i32.const	$push123=, 1
	i32.and 	$push43=, $pop42, $pop123
	i32.eqz 	$push126=, $pop43
	br_if   	0, $pop126
	i32.const	$push44=, 40
	i32.add 	$push45=, $5, $pop44
	i32.load	$push46=, 0($pop45)
	call    	_ZdlPv@FUNCTION, $pop46
.LBB70_16:
	end_block
	i32.const	$push54=, 0
	i32.const	$push52=, 80
	i32.add 	$push53=, $5, $pop52
	i32.store	__stack_pointer($pop54), $pop53
	i32.const	$push124=, 1
	.endfunc
.Lfunc_end70:
	.size	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E, .Lfunc_end70-_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS_5tokenEJyNS_5assetENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i32, i32
	i32.const	$push37=, 0
	i32.const	$push34=, 0
	i32.load	$push35=, __stack_pointer($pop34)
	i32.const	$push36=, 96
	i32.sub 	$push59=, $pop35, $pop36
	tee_local	$push58=, $4=, $pop59
	i32.store	__stack_pointer($pop37), $pop58
	copy_local	$push57=, $4
	tee_local	$push56=, $5=, $pop57
	i32.store	60($pop56), $0
	i32.load	$push0=, 0($1)
	i32.store	48($5), $pop0
	i32.load	$push1=, 4($1)
	i32.store	52($5), $pop1
	i32.const	$1=, 0
	i32.const	$0=, 0
	block   	
	i32.call	$push55=, action_data_size@FUNCTION
	tee_local	$push54=, $2=, $pop55
	i32.eqz 	$push91=, $pop54
	br_if   	0, $pop91
	block   	
	block   	
	i32.const	$push2=, 513
	i32.lt_u	$push3=, $2, $pop2
	br_if   	0, $pop3
	i32.call	$0=, malloc@FUNCTION, $2
	br      	1
.LBB71_3:
	end_block
	i32.const	$push33=, 0
	i32.const	$push4=, 15
	i32.add 	$push5=, $2, $pop4
	i32.const	$push6=, -16
	i32.and 	$push7=, $pop5, $pop6
	i32.sub 	$push61=, $4, $pop7
	tee_local	$push60=, $0=, $pop61
	copy_local	$push53=, $pop60
	i32.store	__stack_pointer($pop33), $pop53
.LBB71_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $0, $2
.LBB71_5:
	end_block
	i32.const	$push66=, 24
	i32.add 	$push8=, $5, $pop66
	i64.const	$push9=, 1398362884
	i64.store	0($pop8), $pop9
	i64.const	$push65=, 0
	i64.store	8($5), $pop65
	i64.const	$push64=, 0
	i64.store	0($5), $pop64
	i64.const	$push63=, 0
	i64.store	16($5), $pop63
	i32.const	$push62=, 1
	i32.const	$push10=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop62, $pop10
	i64.const	$3=, 5462355
.LBB71_6:
	block   	
	block   	
	loop    	
	i32.wrap/i64	$push11=, $3
	i32.const	$push69=, 24
	i32.shl 	$push12=, $pop11, $pop69
	i32.const	$push68=, -1073741825
	i32.add 	$push13=, $pop12, $pop68
	i32.const	$push67=, 452984830
	i32.gt_u	$push14=, $pop13, $pop67
	br_if   	1, $pop14
	block   	
	i64.const	$push74=, 8
	i64.shr_u	$push73=, $3, $pop74
	tee_local	$push72=, $3=, $pop73
	i64.const	$push71=, 255
	i64.and 	$push15=, $pop72, $pop71
	i64.const	$push70=, 0
	i64.ne  	$push16=, $pop15, $pop70
	br_if   	0, $pop16
.LBB71_8:
	loop    	
	i64.const	$push79=, 8
	i64.shr_u	$push78=, $3, $pop79
	tee_local	$push77=, $3=, $pop78
	i64.const	$push76=, 255
	i64.and 	$push17=, $pop77, $pop76
	i64.const	$push75=, 0
	i64.ne  	$push18=, $pop17, $pop75
	br_if   	3, $pop18
	i32.const	$push83=, 1
	i32.add 	$push82=, $1, $pop83
	tee_local	$push81=, $1=, $pop82
	i32.const	$push80=, 7
	i32.lt_s	$push19=, $pop81, $pop80
	br_if   	0, $pop19
.LBB71_10:
	end_loop
	end_block
	i32.const	$4=, 1
	i32.const	$push87=, 1
	i32.add 	$push86=, $1, $pop87
	tee_local	$push85=, $1=, $pop86
	i32.const	$push84=, 7
	i32.lt_s	$push20=, $pop85, $pop84
	br_if   	0, $pop20
	br      	2
.LBB71_11:
	end_loop
	end_block
	i32.const	$4=, 0
.LBB71_12:
	end_block
	i32.const	$push21=, .L.str
	call    	eosio_assert@FUNCTION, $4, $pop21
	i32.const	$push22=, 40
	i32.add 	$push23=, $5, $pop22
	i32.const	$push88=, 0
	i32.store	0($pop23), $pop88
	i64.const	$push24=, 0
	i64.store	32($5), $pop24
	i32.store	68($5), $0
	i32.store	64($5), $0
	i32.add 	$push25=, $0, $2
	i32.store	72($5), $pop25
	i32.const	$push41=, 64
	i32.add 	$push42=, $5, $pop41
	i32.store	80($5), $pop42
	i32.store	88($5), $5
	i32.const	$push43=, 88
	i32.add 	$push44=, $5, $pop43
	i32.const	$push45=, 80
	i32.add 	$push46=, $5, $pop45
	call    	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_@FUNCTION, $pop44, $pop46
	block   	
	i32.const	$push26=, 513
	i32.lt_u	$push27=, $2, $pop26
	br_if   	0, $pop27
	call    	free@FUNCTION, $0
.LBB71_14:
	end_block
	i32.const	$push47=, 48
	i32.add 	$push48=, $5, $pop47
	i32.store	68($5), $pop48
	i32.const	$push49=, 60
	i32.add 	$push50=, $5, $pop49
	i32.store	64($5), $pop50
	i32.const	$push51=, 64
	i32.add 	$push52=, $5, $pop51
	call    	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioES6_JyyNS3_5assetENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS8_5tupleIJyyS7_SE_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISF_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISH_Efp0_EEEEOSF_OSH_NS0_16integer_sequenceIjJXspT1_EEEE@FUNCTION, $pop52, $5
	block   	
	i32.load8_u	$push28=, 32($5)
	i32.const	$push89=, 1
	i32.and 	$push29=, $pop28, $pop89
	i32.eqz 	$push92=, $pop29
	br_if   	0, $pop92
	i32.const	$push30=, 40
	i32.add 	$push31=, $5, $pop30
	i32.load	$push32=, 0($pop31)
	call    	_ZdlPv@FUNCTION, $pop32
.LBB71_16:
	end_block
	i32.const	$push40=, 0
	i32.const	$push38=, 96
	i32.add 	$push39=, $5, $pop38
	i32.store	__stack_pointer($pop40), $pop39
	i32.const	$push90=, 1
	.endfunc
.Lfunc_end71:
	.size	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E, .Lfunc_end71-_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetEEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetEEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetEEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetEEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetEEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetEEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i64, i64, i32, i64, i32, i32, i32
	i32.const	$push51=, 0
	i32.load	$push52=, __stack_pointer($pop51)
	i32.const	$push53=, 96
	i32.sub 	$push82=, $pop52, $pop53
	tee_local	$push81=, $8=, $pop82
	copy_local	$10=, $pop81
	i32.const	$push54=, 0
	i32.store	__stack_pointer($pop54), $8
	i32.load	$2=, 4($1)
	i32.load	$9=, 0($1)
	i32.const	$1=, 0
	i32.const	$6=, 0
	block   	
	i32.call	$push80=, action_data_size@FUNCTION
	tee_local	$push79=, $3=, $pop80
	i32.eqz 	$push122=, $pop79
	br_if   	0, $pop122
	block   	
	block   	
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $3, $pop0
	br_if   	0, $pop1
	i32.call	$6=, malloc@FUNCTION, $3
	br      	1
.LBB72_3:
	end_block
	i32.const	$push50=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $3, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push84=, $8, $pop5
	tee_local	$push83=, $6=, $pop84
	copy_local	$push78=, $pop83
	i32.store	__stack_pointer($pop50), $pop78
.LBB72_4:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $6, $3
.LBB72_5:
	end_block
	i32.const	$push58=, 16
	i32.add 	$push59=, $10, $pop58
	i32.const	$push89=, 24
	i32.add 	$push6=, $pop59, $pop89
	i64.const	$push7=, 1398362884
	i64.store	0($pop6), $pop7
	i64.const	$push88=, 0
	i64.store	24($10), $pop88
	i64.const	$push87=, 0
	i64.store	16($10), $pop87
	i64.const	$push86=, 0
	i64.store	32($10), $pop86
	i32.const	$push85=, 1
	i32.const	$push8=, .L.str.43
	call    	eosio_assert@FUNCTION, $pop85, $pop8
	i64.const	$7=, 5462355
.LBB72_6:
	block   	
	loop    	
	i32.const	$8=, 0
	i32.wrap/i64	$push9=, $7
	i32.const	$push92=, 24
	i32.shl 	$push10=, $pop9, $pop92
	i32.const	$push91=, -1073741825
	i32.add 	$push11=, $pop10, $pop91
	i32.const	$push90=, 452984830
	i32.gt_u	$push12=, $pop11, $pop90
	br_if   	1, $pop12
	block   	
	i64.const	$push97=, 8
	i64.shr_u	$push96=, $7, $pop97
	tee_local	$push95=, $7=, $pop96
	i64.const	$push94=, 255
	i64.and 	$push13=, $pop95, $pop94
	i64.const	$push93=, 0
	i64.ne  	$push14=, $pop13, $pop93
	br_if   	0, $pop14
.LBB72_8:
	loop    	
	i64.const	$push102=, 8
	i64.shr_u	$push101=, $7, $pop102
	tee_local	$push100=, $7=, $pop101
	i64.const	$push99=, 255
	i64.and 	$push15=, $pop100, $pop99
	i64.const	$push98=, 0
	i64.ne  	$push16=, $pop15, $pop98
	br_if   	3, $pop16
	i32.const	$push106=, 1
	i32.add 	$push105=, $1, $pop106
	tee_local	$push104=, $1=, $pop105
	i32.const	$push103=, 7
	i32.lt_s	$push17=, $pop104, $pop103
	br_if   	0, $pop17
.LBB72_10:
	end_loop
	end_block
	i32.const	$8=, 1
	i32.const	$push110=, 1
	i32.add 	$push109=, $1, $pop110
	tee_local	$push108=, $1=, $pop109
	i32.const	$push107=, 7
	i32.lt_s	$push18=, $pop108, $pop107
	br_if   	0, $pop18
.LBB72_11:
	end_loop
	end_block
	i32.const	$push19=, .L.str
	call    	eosio_assert@FUNCTION, $8, $pop19
	i32.store	84($10), $6
	i32.store	80($10), $6
	i32.add 	$push20=, $6, $3
	i32.store	88($10), $pop20
	i32.const	$push60=, 80
	i32.add 	$push61=, $10, $pop60
	i32.store	48($10), $pop61
	i32.const	$push62=, 16
	i32.add 	$push63=, $10, $pop62
	i32.store	64($10), $pop63
	i32.const	$push64=, 64
	i32.add 	$push65=, $10, $pop64
	i32.const	$push66=, 48
	i32.add 	$push67=, $10, $pop66
	call    	_ZN5boost6fusion6detail17for_each_unrolledILi3EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_EEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_@FUNCTION, $pop65, $pop67
	block   	
	i32.const	$push21=, 513
	i32.lt_u	$push22=, $3, $pop21
	br_if   	0, $pop22
	call    	free@FUNCTION, $6
.LBB72_13:
	end_block
	i32.const	$push68=, 16
	i32.add 	$push69=, $10, $pop68
	i32.const	$push23=, 8
	i32.add 	$push24=, $pop69, $pop23
	i64.load	$7=, 0($pop24)
	i32.const	$push25=, 60
	i32.add 	$push26=, $10, $pop25
	i32.const	$push27=, 44
	i32.add 	$push28=, $10, $pop27
	i32.load	$push29=, 0($pop28)
	i32.store	0($pop26), $pop29
	i32.const	$push70=, 48
	i32.add 	$push71=, $10, $pop70
	i32.const	$push115=, 8
	i32.add 	$push114=, $pop71, $pop115
	tee_local	$push113=, $1=, $pop114
	i32.const	$push30=, 40
	i32.add 	$push31=, $10, $pop30
	i32.load	$push32=, 0($pop31)
	i32.store	0($pop113), $pop32
	i64.load	$4=, 16($10)
	i32.load	$push33=, 32($10)
	i32.store	48($10), $pop33
	i32.const	$push34=, 36
	i32.add 	$push35=, $10, $pop34
	i32.load	$push36=, 0($pop35)
	i32.store	52($10), $pop36
	i32.const	$push72=, 64
	i32.add 	$push73=, $10, $pop72
	i32.const	$push112=, 8
	i32.add 	$push37=, $pop73, $pop112
	i64.load	$push38=, 0($1)
	i64.store	0($pop37), $pop38
	i64.load	$push39=, 48($10)
	i64.store	64($10), $pop39
	i32.const	$push40=, 1
	i32.shr_s	$push41=, $2, $pop40
	i32.add 	$1=, $0, $pop41
	block   	
	i32.const	$push111=, 1
	i32.and 	$push42=, $2, $pop111
	i32.eqz 	$push123=, $pop42
	br_if   	0, $pop123
	i32.load	$push43=, 0($1)
	i32.add 	$push44=, $pop43, $9
	i32.load	$9=, 0($pop44)
.LBB72_15:
	end_block
	i32.const	$push74=, 80
	i32.add 	$push75=, $10, $pop74
	i32.const	$push45=, 8
	i32.add 	$push46=, $pop75, $pop45
	i32.const	$push76=, 64
	i32.add 	$push77=, $10, $pop76
	i32.const	$push121=, 8
	i32.add 	$push47=, $pop77, $pop121
	i64.load	$push120=, 0($pop47)
	tee_local	$push119=, $5=, $pop120
	i64.store	0($pop46), $pop119
	i32.const	$push118=, 8
	i32.add 	$push48=, $10, $pop118
	i64.store	0($pop48), $5
	i64.load	$push117=, 64($10)
	tee_local	$push116=, $5=, $pop117
	i64.store	80($10), $pop116
	i64.store	0($10), $5
	call_indirect	$1, $4, $7, $10, $9
	i32.const	$push57=, 0
	i32.const	$push55=, 96
	i32.add 	$push56=, $10, $pop55
	i32.store	__stack_pointer($pop57), $pop56
	i32.const	$push49=, 1
	.endfunc
.Lfunc_end72:
	.size	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetEEEEbPT_MT0_FvDpT1_E, .Lfunc_end72-_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyNS_5assetEEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i64, i32, i32, i32, i32
	i32.const	$push24=, 0
	i32.load	$push25=, __stack_pointer($pop24)
	i32.const	$push26=, 16
	i32.sub 	$push35=, $pop25, $pop26
	tee_local	$push34=, $6=, $pop35
	copy_local	$8=, $pop34
	i32.const	$push27=, 0
	i32.store	__stack_pointer($pop27), $6
	i32.load	$2=, 4($1)
	i32.load	$7=, 0($1)
	block   	
	block   	
	block   	
	block   	
	i32.call	$push33=, action_data_size@FUNCTION
	tee_local	$push32=, $1=, $pop33
	i32.eqz 	$push47=, $pop32
	br_if   	0, $pop47
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $1, $pop0
	br_if   	1, $pop1
	i32.call	$6=, malloc@FUNCTION, $1
	br      	2
.LBB73_3:
	end_block
	i32.const	$6=, 0
	br      	2
.LBB73_4:
	end_block
	i32.const	$push23=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push37=, $6, $pop5
	tee_local	$push36=, $6=, $pop37
	copy_local	$push31=, $pop36
	i32.store	__stack_pointer($pop23), $pop31
.LBB73_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $6, $1
.LBB73_6:
	end_block
	i64.const	$push6=, 0
	i64.store	8($8), $pop6
	i64.const	$push45=, 0
	i64.store	0($8), $pop45
	i32.const	$push7=, 7
	i32.gt_u	$push8=, $1, $pop7
	i32.const	$push9=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop8, $pop9
	i32.const	$push10=, 8
	i32.call	$drop=, memcpy@FUNCTION, $8, $6, $pop10
	i32.const	$push11=, -8
	i32.and 	$push12=, $1, $pop11
	i32.const	$push44=, 8
	i32.ne  	$push13=, $pop12, $pop44
	i32.const	$push43=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop13, $pop43
	i32.const	$push42=, 8
	i32.add 	$push41=, $8, $pop42
	tee_local	$push40=, $5=, $pop41
	i32.const	$push39=, 8
	i32.add 	$push14=, $6, $pop39
	i32.const	$push38=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop40, $pop14, $pop38
	block   	
	i32.const	$push15=, 513
	i32.lt_u	$push16=, $1, $pop15
	br_if   	0, $pop16
	call    	free@FUNCTION, $6
.LBB73_8:
	end_block
	i32.const	$push17=, 1
	i32.shr_s	$push18=, $2, $pop17
	i32.add 	$1=, $0, $pop18
	i64.load	$4=, 0($5)
	i64.load	$3=, 0($8)
	block   	
	i32.const	$push46=, 1
	i32.and 	$push19=, $2, $pop46
	i32.eqz 	$push48=, $pop19
	br_if   	0, $pop48
	i32.load	$push20=, 0($1)
	i32.add 	$push21=, $pop20, $7
	i32.load	$7=, 0($pop21)
.LBB73_10:
	end_block
	call_indirect	$1, $3, $4, $7
	i32.const	$push30=, 0
	i32.const	$push28=, 16
	i32.add 	$push29=, $8, $pop28
	i32.store	__stack_pointer($pop30), $pop29
	i32.const	$push22=, 1
	.endfunc
.Lfunc_end73:
	.size	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyEEEbPT_MT0_FvDpT1_E, .Lfunc_end73-_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyyEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyEEEbPT_MT0_FvDpT1_E,"axG",@progbits,_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyEEEbPT_MT0_FvDpT1_E,comdat
	.hidden	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyEEEbPT_MT0_FvDpT1_E
	.weak	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyEEEbPT_MT0_FvDpT1_E
	.type	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyEEEbPT_MT0_FvDpT1_E,@function
_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyEEEbPT_MT0_FvDpT1_E:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i64, i32, i32, i32
	i32.const	$push20=, 0
	i32.load	$push21=, __stack_pointer($pop20)
	i32.const	$push22=, 16
	i32.sub 	$push33=, $pop21, $pop22
	tee_local	$push32=, $4=, $pop33
	copy_local	$6=, $pop32
	i32.const	$push23=, 0
	i32.store	__stack_pointer($pop23), $4
	i32.load	$2=, 4($1)
	i32.load	$5=, 0($1)
	block   	
	block   	
	block   	
	block   	
	i32.call	$push31=, action_data_size@FUNCTION
	tee_local	$push30=, $1=, $pop31
	i32.eqz 	$push37=, $pop30
	br_if   	0, $pop37
	i32.const	$push0=, 513
	i32.lt_u	$push1=, $1, $pop0
	br_if   	1, $pop1
	i32.call	$4=, malloc@FUNCTION, $1
	br      	2
.LBB74_3:
	end_block
	i32.const	$4=, 0
	br      	2
.LBB74_4:
	end_block
	i32.const	$push19=, 0
	i32.const	$push2=, 15
	i32.add 	$push3=, $1, $pop2
	i32.const	$push4=, -16
	i32.and 	$push5=, $pop3, $pop4
	i32.sub 	$push35=, $4, $pop5
	tee_local	$push34=, $4=, $pop35
	copy_local	$push29=, $pop34
	i32.store	__stack_pointer($pop19), $pop29
.LBB74_5:
	end_block
	i32.call	$drop=, read_action_data@FUNCTION, $4, $1
.LBB74_6:
	end_block
	i64.const	$push6=, 0
	i64.store	8($6), $pop6
	i32.const	$push7=, 7
	i32.gt_u	$push8=, $1, $pop7
	i32.const	$push9=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop8, $pop9
	i32.const	$push27=, 8
	i32.add 	$push28=, $6, $pop27
	i32.const	$push10=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop28, $4, $pop10
	i64.load	$3=, 8($6)
	block   	
	i32.const	$push11=, 513
	i32.lt_u	$push12=, $1, $pop11
	br_if   	0, $pop12
	call    	free@FUNCTION, $4
.LBB74_8:
	end_block
	i32.const	$push13=, 1
	i32.shr_s	$push14=, $2, $pop13
	i32.add 	$1=, $0, $pop14
	block   	
	i32.const	$push36=, 1
	i32.and 	$push15=, $2, $pop36
	i32.eqz 	$push38=, $pop15
	br_if   	0, $pop38
	i32.load	$push16=, 0($1)
	i32.add 	$push17=, $pop16, $5
	i32.load	$5=, 0($pop17)
.LBB74_10:
	end_block
	call_indirect	$1, $3, $5
	i32.const	$push26=, 0
	i32.const	$push24=, 16
	i32.add 	$push25=, $6, $pop24
	i32.store	__stack_pointer($pop26), $pop25
	i32.const	$push18=, 1
	.endfunc
.Lfunc_end74:
	.size	_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyEEEbPT_MT0_FvDpT1_E, .Lfunc_end74-_ZN5eosio14execute_actionIN13horuspaytoken12horustokenioES2_JyEEEbPT_MT0_FvDpT1_E

	.section	.text._ZN5boost6fusion6detail17for_each_unrolledILi3EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_EEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_,"axG",@progbits,_ZN5boost6fusion6detail17for_each_unrolledILi3EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_EEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_,comdat
	.hidden	_ZN5boost6fusion6detail17for_each_unrolledILi3EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_EEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_
	.weak	_ZN5boost6fusion6detail17for_each_unrolledILi3EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_EEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_
	.type	_ZN5boost6fusion6detail17for_each_unrolledILi3EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_EEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_,@function
_ZN5boost6fusion6detail17for_each_unrolledILi3EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_EEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_:
	.param  	i32, i32
	.local  	i32, i32
	i32.load	$2=, 0($0)
	i32.load	$push55=, 0($1)
	tee_local	$push54=, $3=, $pop55
	i32.load	$push1=, 8($pop54)
	i32.load	$push0=, 4($3)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($3)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $2, $pop6, $pop7
	i32.load	$push8=, 4($3)
	i32.const	$push53=, 8
	i32.add 	$push9=, $pop8, $pop53
	i32.store	4($3), $pop9
	i32.load	$0=, 0($0)
	i32.load	$push52=, 0($1)
	tee_local	$push51=, $3=, $pop52
	i32.load	$push11=, 8($pop51)
	i32.load	$push10=, 4($3)
	i32.sub 	$push12=, $pop11, $pop10
	i32.const	$push50=, 7
	i32.gt_u	$push13=, $pop12, $pop50
	i32.const	$push49=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop13, $pop49
	i32.const	$push48=, 8
	i32.add 	$push14=, $0, $pop48
	i32.load	$push15=, 4($3)
	i32.const	$push47=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop14, $pop15, $pop47
	i32.load	$push16=, 4($3)
	i32.const	$push46=, 8
	i32.add 	$push17=, $pop16, $pop46
	i32.store	4($3), $pop17
	i32.load	$push45=, 0($1)
	tee_local	$push44=, $3=, $pop45
	i32.load	$push19=, 8($pop44)
	i32.load	$push18=, 4($3)
	i32.sub 	$push20=, $pop19, $pop18
	i32.const	$push43=, 7
	i32.gt_u	$push21=, $pop20, $pop43
	i32.const	$push42=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop21, $pop42
	i32.const	$push22=, 16
	i32.add 	$push23=, $0, $pop22
	i32.load	$push24=, 4($3)
	i32.const	$push41=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop23, $pop24, $pop41
	i32.load	$push25=, 4($3)
	i32.const	$push40=, 8
	i32.add 	$push39=, $pop25, $pop40
	tee_local	$push38=, $1=, $pop39
	i32.store	4($3), $pop38
	i32.load	$push26=, 8($3)
	i32.sub 	$push27=, $pop26, $1
	i32.const	$push37=, 7
	i32.gt_u	$push28=, $pop27, $pop37
	i32.const	$push36=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop28, $pop36
	i32.const	$push29=, 24
	i32.add 	$push30=, $0, $pop29
	i32.load	$push31=, 4($3)
	i32.const	$push35=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop30, $pop31, $pop35
	i32.load	$push32=, 4($3)
	i32.const	$push34=, 8
	i32.add 	$push33=, $pop32, $pop34
	i32.store	4($3), $pop33
	.endfunc
.Lfunc_end75:
	.size	_ZN5boost6fusion6detail17for_each_unrolledILi3EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_EEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_, .Lfunc_end75-_ZN5boost6fusion6detail17for_each_unrolledILi3EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_EEERT_SI_RNS7_IJDpT0_EEEEUlSI_E_EEvRKSH_RKT0_

	.section	.text._ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_,"axG",@progbits,_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_,comdat
	.hidden	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_
	.weak	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_
	.type	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_,@function
_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_:
	.param  	i32, i32
	.local  	i32, i32
	i32.load	$2=, 0($0)
	i32.load	$push58=, 0($1)
	tee_local	$push57=, $3=, $pop58
	i32.load	$push1=, 8($pop57)
	i32.load	$push0=, 4($3)
	i32.sub 	$push2=, $pop1, $pop0
	i32.const	$push3=, 7
	i32.gt_u	$push4=, $pop2, $pop3
	i32.const	$push5=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop4, $pop5
	i32.load	$push6=, 4($3)
	i32.const	$push7=, 8
	i32.call	$drop=, memcpy@FUNCTION, $2, $pop6, $pop7
	i32.load	$push8=, 4($3)
	i32.const	$push56=, 8
	i32.add 	$push9=, $pop8, $pop56
	i32.store	4($3), $pop9
	i32.load	$0=, 0($0)
	i32.load	$push55=, 0($1)
	tee_local	$push54=, $3=, $pop55
	i32.load	$push11=, 8($pop54)
	i32.load	$push10=, 4($3)
	i32.sub 	$push12=, $pop11, $pop10
	i32.const	$push53=, 7
	i32.gt_u	$push13=, $pop12, $pop53
	i32.const	$push52=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop13, $pop52
	i32.const	$push51=, 8
	i32.add 	$push14=, $0, $pop51
	i32.load	$push15=, 4($3)
	i32.const	$push50=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop14, $pop15, $pop50
	i32.load	$push16=, 4($3)
	i32.const	$push49=, 8
	i32.add 	$push17=, $pop16, $pop49
	i32.store	4($3), $pop17
	i32.load	$push48=, 0($1)
	tee_local	$push47=, $3=, $pop48
	i32.load	$push19=, 8($pop47)
	i32.load	$push18=, 4($3)
	i32.sub 	$push20=, $pop19, $pop18
	i32.const	$push46=, 7
	i32.gt_u	$push21=, $pop20, $pop46
	i32.const	$push45=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop21, $pop45
	i32.const	$push22=, 16
	i32.add 	$push23=, $0, $pop22
	i32.load	$push24=, 4($3)
	i32.const	$push44=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop23, $pop24, $pop44
	i32.load	$push25=, 4($3)
	i32.const	$push43=, 8
	i32.add 	$push42=, $pop25, $pop43
	tee_local	$push41=, $2=, $pop42
	i32.store	4($3), $pop41
	i32.load	$push26=, 8($3)
	i32.sub 	$push27=, $pop26, $2
	i32.const	$push40=, 7
	i32.gt_u	$push28=, $pop27, $pop40
	i32.const	$push39=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop28, $pop39
	i32.const	$push29=, 24
	i32.add 	$push30=, $0, $pop29
	i32.load	$push31=, 4($3)
	i32.const	$push38=, 8
	i32.call	$drop=, memcpy@FUNCTION, $pop30, $pop31, $pop38
	i32.load	$push32=, 4($3)
	i32.const	$push37=, 8
	i32.add 	$push33=, $pop32, $pop37
	i32.store	4($3), $pop33
	i32.load	$push36=, 0($1)
	i32.const	$push34=, 32
	i32.add 	$push35=, $0, $pop34
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE@FUNCTION, $pop36, $pop35
	.endfunc
.Lfunc_end76:
	.size	_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_, .Lfunc_end76-_ZN5boost6fusion6detail17for_each_unrolledILi4EE4callINS0_18std_tuple_iteratorINSt3__15tupleIJyyN5eosio5assetENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEEELi0EEEZNS8_rsINS8_10datastreamIPKcEEJyyS9_SF_EEERT_SO_RNS7_IJDpT0_EEEEUlSO_E_EEvRKSN_RKT0_

	.section	.text._ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioES6_JyyNS3_5assetENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS8_5tupleIJyyS7_SE_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISF_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISH_Efp0_EEEEOSF_OSH_NS0_16integer_sequenceIjJXspT1_EEEE,"axG",@progbits,_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioES6_JyyNS3_5assetENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS8_5tupleIJyyS7_SE_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISF_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISH_Efp0_EEEEOSF_OSH_NS0_16integer_sequenceIjJXspT1_EEEE,comdat
	.hidden	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioES6_JyyNS3_5assetENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS8_5tupleIJyyS7_SE_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISF_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISH_Efp0_EEEEOSF_OSH_NS0_16integer_sequenceIjJXspT1_EEEE
	.weak	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioES6_JyyNS3_5assetENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS8_5tupleIJyyS7_SE_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISF_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISH_Efp0_EEEEOSF_OSH_NS0_16integer_sequenceIjJXspT1_EEEE
	.type	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioES6_JyyNS3_5assetENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS8_5tupleIJyyS7_SE_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISF_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISH_Efp0_EEEEOSF_OSH_NS0_16integer_sequenceIjJXspT1_EEEE,@function
_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioES6_JyyNS3_5assetENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS8_5tupleIJyyS7_SE_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISF_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISH_Efp0_EEEEOSF_OSH_NS0_16integer_sequenceIjJXspT1_EEEE:
	.param  	i32, i32
	.local  	i64, i64, i32, i32
	i32.const	$push41=, 0
	i32.const	$push38=, 0
	i32.load	$push39=, __stack_pointer($pop38)
	i32.const	$push40=, 96
	i32.sub 	$push70=, $pop39, $pop40
	tee_local	$push69=, $5=, $pop70
	i32.store	__stack_pointer($pop41), $pop69
	i32.const	$push3=, 44
	i32.add 	$push4=, $5, $pop3
	i32.const	$push0=, 28
	i32.add 	$push1=, $1, $pop0
	i32.load	$push2=, 0($pop1)
	i32.store	0($pop4), $pop2
	i32.const	$push45=, 32
	i32.add 	$push46=, $5, $pop45
	i32.const	$push8=, 8
	i32.add 	$push68=, $pop46, $pop8
	tee_local	$push67=, $4=, $pop68
	i32.const	$push5=, 24
	i32.add 	$push6=, $1, $pop5
	i32.load	$push7=, 0($pop6)
	i32.store	0($pop67), $pop7
	i32.load	$push9=, 16($1)
	i32.store	32($5), $pop9
	i32.const	$push10=, 20
	i32.add 	$push11=, $1, $pop10
	i32.load	$push12=, 0($pop11)
	i32.store	36($5), $pop12
	i64.load	$3=, 8($1)
	i64.load	$2=, 0($1)
	i32.const	$push47=, 16
	i32.add 	$push48=, $5, $pop47
	i32.const	$push13=, 32
	i32.add 	$push14=, $1, $pop13
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop48, $pop14
	i32.const	$push49=, 48
	i32.add 	$push50=, $5, $pop49
	i32.const	$push66=, 8
	i32.add 	$push15=, $pop50, $pop66
	i64.load	$push16=, 0($4)
	i64.store	0($pop15), $pop16
	i64.load	$push17=, 32($5)
	i64.store	48($5), $pop17
	i32.load	$push20=, 0($0)
	i32.load	$push21=, 0($pop20)
	i32.load	$push65=, 4($0)
	tee_local	$push64=, $1=, $pop65
	i32.load	$push63=, 4($pop64)
	tee_local	$push62=, $4=, $pop63
	i32.const	$push18=, 1
	i32.shr_s	$push19=, $pop62, $pop18
	i32.add 	$0=, $pop21, $pop19
	i32.load	$1=, 0($1)
	block   	
	i32.const	$push61=, 1
	i32.and 	$push22=, $4, $pop61
	i32.eqz 	$push77=, $pop22
	br_if   	0, $pop77
	i32.load	$push23=, 0($0)
	i32.add 	$push24=, $pop23, $1
	i32.load	$1=, 0($pop24)
.LBB77_2:
	end_block
	i32.const	$push51=, 80
	i32.add 	$push52=, $5, $pop51
	i32.const	$push25=, 8
	i32.add 	$push75=, $pop52, $pop25
	tee_local	$push74=, $4=, $pop75
	i32.const	$push53=, 48
	i32.add 	$push54=, $5, $pop53
	i32.const	$push73=, 8
	i32.add 	$push26=, $pop54, $pop73
	i64.load	$push27=, 0($pop26)
	i64.store	0($pop74), $pop27
	i64.load	$push28=, 48($5)
	i64.store	80($5), $pop28
	i32.const	$push55=, 64
	i32.add 	$push56=, $5, $pop55
	i32.const	$push57=, 16
	i32.add 	$push58=, $5, $pop57
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop56, $pop58
	i32.const	$push72=, 8
	i32.add 	$push29=, $5, $pop72
	i64.load	$push30=, 0($4)
	i64.store	0($pop29), $pop30
	i64.load	$push31=, 80($5)
	i64.store	0($5), $pop31
	i32.const	$push59=, 64
	i32.add 	$push60=, $5, $pop59
	call_indirect	$0, $2, $3, $5, $pop60, $1
	block   	
	i32.load8_u	$push32=, 64($5)
	i32.const	$push71=, 1
	i32.and 	$push33=, $pop32, $pop71
	i32.eqz 	$push78=, $pop33
	br_if   	0, $pop78
	i32.load	$push34=, 72($5)
	call    	_ZdlPv@FUNCTION, $pop34
.LBB77_4:
	end_block
	block   	
	i32.load8_u	$push35=, 16($5)
	i32.const	$push76=, 1
	i32.and 	$push36=, $pop35, $pop76
	i32.eqz 	$push79=, $pop36
	br_if   	0, $pop79
	i32.load	$push37=, 24($5)
	call    	_ZdlPv@FUNCTION, $pop37
.LBB77_6:
	end_block
	i32.const	$push44=, 0
	i32.const	$push42=, 96
	i32.add 	$push43=, $5, $pop42
	i32.store	__stack_pointer($pop44), $pop43
	.endfunc
.Lfunc_end77:
	.size	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioES6_JyyNS3_5assetENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS8_5tupleIJyyS7_SE_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISF_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISH_Efp0_EEEEOSF_OSH_NS0_16integer_sequenceIjJXspT1_EEEE, .Lfunc_end77-_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioES6_JyyNS3_5assetENSt3__112basic_stringIcNS8_11char_traitsIcEENS8_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS8_5tupleIJyyS7_SE_EEEJLj0ELj1ELj2ELj3EEEEDTclclsr3stdE7forwardISF_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISH_Efp0_EEEEOSF_OSH_NS0_16integer_sequenceIjJXspT1_EEEE

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32
	i32.const	$push38=, 0
	i32.const	$push35=, 0
	i32.load	$push36=, __stack_pointer($pop35)
	i32.const	$push37=, 32
	i32.sub 	$push51=, $pop36, $pop37
	tee_local	$push50=, $7=, $pop51
	i32.store	__stack_pointer($pop38), $pop50
	i32.const	$push49=, 0
	i32.store	24($7), $pop49
	i64.const	$push48=, 0
	i64.store	16($7), $pop48
	i32.const	$push42=, 16
	i32.add 	$push43=, $7, $pop42
	i32.call	$drop=, _ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE@FUNCTION, $0, $pop43
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load	$push47=, 20($7)
	tee_local	$push46=, $5=, $pop47
	i32.load	$push45=, 16($7)
	tee_local	$push44=, $4=, $pop45
	i32.ne  	$push0=, $pop46, $pop44
	br_if   	0, $pop0
	i32.load8_u	$push25=, 0($1)
	i32.const	$push26=, 1
	i32.and 	$push27=, $pop25, $pop26
	br_if   	1, $pop27
	i32.const	$push31=, 0
	i32.store16	0($1), $pop31
	i32.const	$push32=, 8
	i32.add 	$4=, $1, $pop32
	br      	2
.LBB78_3:
	end_block
	i32.const	$push1=, 8
	i32.add 	$push2=, $7, $pop1
	i32.const	$push55=, 0
	i32.store	0($pop2), $pop55
	i64.const	$push54=, 0
	i64.store	0($7), $pop54
	i32.sub 	$push53=, $5, $4
	tee_local	$push52=, $2=, $pop53
	i32.const	$push3=, -16
	i32.ge_u	$push4=, $pop52, $pop3
	br_if   	7, $pop4
	i32.const	$push5=, 11
	i32.ge_u	$push6=, $2, $pop5
	br_if   	2, $pop6
	i32.const	$push12=, 1
	i32.shl 	$push13=, $2, $pop12
	i32.store8	0($7), $pop13
	i32.const	$push56=, 1
	i32.or  	$6=, $7, $pop56
	br_if   	3, $2
	br      	4
.LBB78_6:
	end_block
	i32.load	$push28=, 8($1)
	i32.const	$push29=, 0
	i32.store8	0($pop28), $pop29
	i32.const	$push57=, 0
	i32.store	4($1), $pop57
	i32.const	$push30=, 8
	i32.add 	$4=, $1, $pop30
.LBB78_7:
	end_block
	i32.const	$push33=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj@FUNCTION, $1, $pop33
	i32.const	$push60=, 0
	i32.store	0($4), $pop60
	i64.const	$push34=, 0
	i64.store	0($1):p2align=2, $pop34
	i32.load	$push59=, 16($7)
	tee_local	$push58=, $4=, $pop59
	br_if   	3, $pop58
	br      	4
.LBB78_8:
	end_block
	i32.const	$push7=, 16
	i32.add 	$push8=, $2, $pop7
	i32.const	$push9=, -16
	i32.and 	$push62=, $pop8, $pop9
	tee_local	$push61=, $5=, $pop62
	i32.call	$6=, _Znwj@FUNCTION, $pop61
	i32.const	$push10=, 1
	i32.or  	$push11=, $5, $pop10
	i32.store	0($7), $pop11
	i32.store	8($7), $6
	i32.store	4($7), $2
.LBB78_9:
	end_block
	copy_local	$3=, $2
	copy_local	$5=, $6
.LBB78_10:
	loop    	
	i32.load8_u	$push14=, 0($4)
	i32.store8	0($5), $pop14
	i32.const	$push67=, 1
	i32.add 	$5=, $5, $pop67
	i32.const	$push66=, 1
	i32.add 	$4=, $4, $pop66
	i32.const	$push65=, -1
	i32.add 	$push64=, $3, $pop65
	tee_local	$push63=, $3=, $pop64
	br_if   	0, $pop63
	end_loop
	i32.add 	$6=, $6, $2
.LBB78_12:
	end_block
	i32.const	$push68=, 0
	i32.store8	0($6), $pop68
	block   	
	block   	
	i32.load8_u	$push15=, 0($1)
	i32.const	$push16=, 1
	i32.and 	$push17=, $pop15, $pop16
	br_if   	0, $pop17
	i32.const	$push69=, 0
	i32.store16	0($1), $pop69
	br      	1
.LBB78_14:
	end_block
	i32.load	$push18=, 8($1)
	i32.const	$push71=, 0
	i32.store8	0($pop18), $pop71
	i32.const	$push70=, 0
	i32.store	4($1), $pop70
.LBB78_15:
	end_block
	i32.const	$push19=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj@FUNCTION, $1, $pop19
	i32.const	$push20=, 8
	i32.add 	$push21=, $1, $pop20
	i32.const	$push74=, 8
	i32.add 	$push22=, $7, $pop74
	i32.load	$push23=, 0($pop22)
	i32.store	0($pop21), $pop23
	i64.load	$push24=, 0($7)
	i64.store	0($1):p2align=2, $pop24
	i32.load	$push73=, 16($7)
	tee_local	$push72=, $4=, $pop73
	i32.eqz 	$push75=, $pop72
	br_if   	1, $pop75
.LBB78_16:
	end_block
	i32.store	20($7), $4
	call    	_ZdlPv@FUNCTION, $4
.LBB78_17:
	end_block
	i32.const	$push41=, 0
	i32.const	$push39=, 32
	i32.add 	$push40=, $7, $pop39
	i32.store	__stack_pointer($pop41), $pop40
	return  	$0
.LBB78_18:
	end_block
	call    	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv@FUNCTION, $7
	unreachable
	.endfunc
.Lfunc_end78:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE, .Lfunc_end78-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEE

	.section	.text._ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,"axG",@progbits,_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,comdat
	.hidden	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
	.weak	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE
	.type	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE,@function
_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i64, i32
	i32.load	$5=, 4($0)
	i32.const	$7=, 0
	i64.const	$6=, 0
	i32.const	$push0=, 8
	i32.add 	$2=, $0, $pop0
	i32.const	$push3=, 4
	i32.add 	$3=, $0, $pop3
.LBB79_1:
	loop    	
	i32.load	$push1=, 0($2)
	i32.lt_u	$push2=, $5, $pop1
	i32.const	$push37=, .L.str.76
	call    	eosio_assert@FUNCTION, $pop2, $pop37
	i32.load	$push36=, 0($3)
	tee_local	$push35=, $5=, $pop36
	i32.load8_u	$4=, 0($pop35)
	i32.const	$push34=, 1
	i32.add 	$push33=, $5, $pop34
	tee_local	$push32=, $5=, $pop33
	i32.store	0($3), $pop32
	i32.const	$push31=, 127
	i32.and 	$push4=, $4, $pop31
	i32.const	$push30=, 255
	i32.and 	$push29=, $7, $pop30
	tee_local	$push28=, $7=, $pop29
	i32.shl 	$push5=, $pop4, $pop28
	i64.extend_u/i32	$push6=, $pop5
	i64.or  	$6=, $pop6, $6
	i32.const	$push27=, 7
	i32.add 	$7=, $7, $pop27
	i32.const	$push26=, 7
	i32.shr_u	$push7=, $4, $pop26
	br_if   	0, $pop7
	end_loop
	block   	
	block   	
	i32.wrap/i64	$push45=, $6
	tee_local	$push44=, $3=, $pop45
	i32.load	$push43=, 4($1)
	tee_local	$push42=, $7=, $pop43
	i32.load	$push41=, 0($1)
	tee_local	$push40=, $4=, $pop41
	i32.sub 	$push39=, $pop42, $pop40
	tee_local	$push38=, $2=, $pop39
	i32.le_u	$push8=, $pop44, $pop38
	br_if   	0, $pop8
	i32.sub 	$push12=, $3, $2
	call    	_ZNSt3__16vectorIcNS_9allocatorIcEEE8__appendEj@FUNCTION, $1, $pop12
	i32.const	$push13=, 4
	i32.add 	$push14=, $0, $pop13
	i32.load	$5=, 0($pop14)
	i32.const	$push46=, 4
	i32.add 	$push15=, $1, $pop46
	i32.load	$7=, 0($pop15)
	i32.load	$4=, 0($1)
	br      	1
.LBB79_4:
	end_block
	i32.ge_u	$push9=, $3, $2
	br_if   	0, $pop9
	i32.const	$push10=, 4
	i32.add 	$push11=, $1, $pop10
	i32.add 	$push48=, $4, $3
	tee_local	$push47=, $7=, $pop48
	i32.store	0($pop11), $pop47
.LBB79_6:
	end_block
	i32.const	$push16=, 8
	i32.add 	$push17=, $0, $pop16
	i32.load	$push18=, 0($pop17)
	i32.sub 	$push19=, $pop18, $5
	i32.sub 	$push52=, $7, $4
	tee_local	$push51=, $5=, $pop52
	i32.ge_u	$push20=, $pop19, $pop51
	i32.const	$push21=, .L.str.52
	call    	eosio_assert@FUNCTION, $pop20, $pop21
	i32.const	$push22=, 4
	i32.add 	$push50=, $0, $pop22
	tee_local	$push49=, $7=, $pop50
	i32.load	$push23=, 0($pop49)
	i32.call	$drop=, memcpy@FUNCTION, $4, $pop23, $5
	i32.load	$push24=, 0($7)
	i32.add 	$push25=, $pop24, $5
	i32.store	0($7), $pop25
	copy_local	$push53=, $0
	.endfunc
.Lfunc_end79:
	.size	_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE, .Lfunc_end79-_ZN5eosiorsINS_10datastreamIPKcEEEERT_S6_RNSt3__16vectorIcNS7_9allocatorIcEEEE

	.section	.text._ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS3_5tokenEJyNS3_5assetENSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS9_5tupleIJyS8_SF_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISG_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISI_Efp0_EEEEOSG_OSI_NS0_16integer_sequenceIjJXspT1_EEEE,"axG",@progbits,_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS3_5tokenEJyNS3_5assetENSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS9_5tupleIJyS8_SF_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISG_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISI_Efp0_EEEEOSG_OSI_NS0_16integer_sequenceIjJXspT1_EEEE,comdat
	.hidden	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS3_5tokenEJyNS3_5assetENSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS9_5tupleIJyS8_SF_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISG_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISI_Efp0_EEEEOSG_OSI_NS0_16integer_sequenceIjJXspT1_EEEE
	.weak	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS3_5tokenEJyNS3_5assetENSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS9_5tupleIJyS8_SF_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISG_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISI_Efp0_EEEEOSG_OSI_NS0_16integer_sequenceIjJXspT1_EEEE
	.type	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS3_5tokenEJyNS3_5assetENSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS9_5tupleIJyS8_SF_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISG_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISI_Efp0_EEEEOSG_OSI_NS0_16integer_sequenceIjJXspT1_EEEE,@function
_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS3_5tokenEJyNS3_5assetENSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS9_5tupleIJyS8_SF_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISG_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISI_Efp0_EEEEOSG_OSI_NS0_16integer_sequenceIjJXspT1_EEEE:
	.param  	i32, i32
	.local  	i64, i32, i32
	i32.const	$push40=, 0
	i32.const	$push37=, 0
	i32.load	$push38=, __stack_pointer($pop37)
	i32.const	$push39=, 96
	i32.sub 	$push72=, $pop38, $pop39
	tee_local	$push71=, $4=, $pop72
	i32.store	__stack_pointer($pop40), $pop71
	i32.const	$push44=, 32
	i32.add 	$push45=, $4, $pop44
	i32.const	$push3=, 12
	i32.add 	$push4=, $pop45, $pop3
	i32.const	$push0=, 20
	i32.add 	$push1=, $1, $pop0
	i32.load	$push2=, 0($pop1)
	i32.store	0($pop4), $pop2
	i32.const	$push46=, 32
	i32.add 	$push47=, $4, $pop46
	i32.const	$push8=, 8
	i32.add 	$push70=, $pop47, $pop8
	tee_local	$push69=, $3=, $pop70
	i32.const	$push5=, 16
	i32.add 	$push6=, $1, $pop5
	i32.load	$push7=, 0($pop6)
	i32.store	0($pop69), $pop7
	i32.load	$push9=, 8($1)
	i32.store	32($4), $pop9
	i32.const	$push68=, 12
	i32.add 	$push10=, $1, $pop68
	i32.load	$push11=, 0($pop10)
	i32.store	36($4), $pop11
	i64.load	$2=, 0($1)
	i32.const	$push48=, 16
	i32.add 	$push49=, $4, $pop48
	i32.const	$push12=, 24
	i32.add 	$push13=, $1, $pop12
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop49, $pop13
	i32.const	$push50=, 48
	i32.add 	$push51=, $4, $pop50
	i32.const	$push67=, 8
	i32.add 	$push14=, $pop51, $pop67
	i64.load	$push15=, 0($3)
	i64.store	0($pop14), $pop15
	i64.load	$push16=, 32($4)
	i64.store	48($4), $pop16
	i32.load	$push19=, 0($0)
	i32.load	$push20=, 0($pop19)
	i32.load	$push66=, 4($0)
	tee_local	$push65=, $1=, $pop66
	i32.load	$push64=, 4($pop65)
	tee_local	$push63=, $3=, $pop64
	i32.const	$push17=, 1
	i32.shr_s	$push18=, $pop63, $pop17
	i32.add 	$0=, $pop20, $pop18
	i32.load	$1=, 0($1)
	block   	
	i32.const	$push62=, 1
	i32.and 	$push21=, $3, $pop62
	i32.eqz 	$push79=, $pop21
	br_if   	0, $pop79
	i32.load	$push22=, 0($0)
	i32.add 	$push23=, $pop22, $1
	i32.load	$1=, 0($pop23)
.LBB80_2:
	end_block
	i32.const	$push52=, 80
	i32.add 	$push53=, $4, $pop52
	i32.const	$push24=, 8
	i32.add 	$push77=, $pop53, $pop24
	tee_local	$push76=, $3=, $pop77
	i32.const	$push54=, 48
	i32.add 	$push55=, $4, $pop54
	i32.const	$push75=, 8
	i32.add 	$push25=, $pop55, $pop75
	i64.load	$push26=, 0($pop25)
	i64.store	0($pop76), $pop26
	i64.load	$push27=, 48($4)
	i64.store	80($4), $pop27
	i32.const	$push56=, 64
	i32.add 	$push57=, $4, $pop56
	i32.const	$push58=, 16
	i32.add 	$push59=, $4, $pop58
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_@FUNCTION, $pop57, $pop59
	i32.const	$push74=, 8
	i32.add 	$push28=, $4, $pop74
	i64.load	$push29=, 0($3)
	i64.store	0($pop28), $pop29
	i64.load	$push30=, 80($4)
	i64.store	0($4), $pop30
	i32.const	$push60=, 64
	i32.add 	$push61=, $4, $pop60
	call_indirect	$0, $2, $4, $pop61, $1
	block   	
	i32.load8_u	$push31=, 64($4)
	i32.const	$push73=, 1
	i32.and 	$push32=, $pop31, $pop73
	i32.eqz 	$push80=, $pop32
	br_if   	0, $pop80
	i32.load	$push33=, 72($4)
	call    	_ZdlPv@FUNCTION, $pop33
.LBB80_4:
	end_block
	block   	
	i32.load8_u	$push34=, 16($4)
	i32.const	$push78=, 1
	i32.and 	$push35=, $pop34, $pop78
	i32.eqz 	$push81=, $pop35
	br_if   	0, $pop81
	i32.load	$push36=, 24($4)
	call    	_ZdlPv@FUNCTION, $pop36
.LBB80_6:
	end_block
	i32.const	$push43=, 0
	i32.const	$push41=, 96
	i32.add 	$push42=, $4, $pop41
	i32.store	__stack_pointer($pop43), $pop42
	.endfunc
.Lfunc_end80:
	.size	_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS3_5tokenEJyNS3_5assetENSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS9_5tupleIJyS8_SF_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISG_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISI_Efp0_EEEEOSG_OSI_NS0_16integer_sequenceIjJXspT1_EEEE, .Lfunc_end80-_ZN5boost4mp116detail16tuple_apply_implIRZN5eosio14execute_actionIN13horuspaytoken12horustokenioENS3_5tokenEJyNS3_5assetENSt3__112basic_stringIcNS9_11char_traitsIcEENS9_9allocatorIcEEEEEEEbPT_MT0_FvDpT1_EEUlDpT_E_RNS9_5tupleIJyS8_SF_EEEJLj0ELj1ELj2EEEEDTclclsr3stdE7forwardISG_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardISI_Efp0_EEEEOSG_OSI_NS0_16integer_sequenceIjJXspT1_EEEE

	.text
	.weak	_Znwj
	.type	_Znwj,@function
_Znwj:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	block   	
	i32.const	$push0=, 1
	i32.select	$push4=, $0, $pop0, $0
	tee_local	$push3=, $1=, $pop4
	i32.call	$push2=, malloc@FUNCTION, $pop3
	tee_local	$push1=, $0=, $pop2
	br_if   	0, $pop1
.LBB81_1:
	loop    	
	i32.const	$0=, 0
	i32.const	$push9=, 0
	i32.load	$push8=, _ZStL13__new_handler($pop9)
	tee_local	$push7=, $2=, $pop8
	i32.eqz 	$push10=, $pop7
	br_if   	1, $pop10
	call_indirect	$2
	i32.call	$push6=, malloc@FUNCTION, $1
	tee_local	$push5=, $0=, $pop6
	i32.eqz 	$push11=, $pop5
	br_if   	0, $pop11
.LBB81_3:
	end_loop
	end_block
	copy_local	$push12=, $0
	.endfunc
.Lfunc_end81:
	.size	_Znwj, .Lfunc_end81-_Znwj

	.weak	_ZdlPv
	.type	_ZdlPv,@function
_ZdlPv:
	.param  	i32
	block   	
	i32.eqz 	$push0=, $0
	br_if   	0, $pop0
	call    	free@FUNCTION, $0
.LBB82_2:
	end_block
	.endfunc
.Lfunc_end82:
	.size	_ZdlPv, .Lfunc_end82-_ZdlPv

	.section	.text._ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end83:
	.size	_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv, .Lfunc_end83-_ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32
	block   	
	i32.const	$push0=, -16
	i32.ge_u	$push1=, $1, $pop0
	br_if   	0, $pop1
	i32.const	$2=, 10
	block   	
	i32.load8_u	$push35=, 0($0)
	tee_local	$push34=, $5=, $pop35
	i32.const	$push33=, 1
	i32.and 	$push2=, $pop34, $pop33
	i32.eqz 	$push52=, $pop2
	br_if   	0, $pop52
	i32.load	$push37=, 0($0)
	tee_local	$push36=, $5=, $pop37
	i32.const	$push3=, -2
	i32.and 	$push4=, $pop36, $pop3
	i32.const	$push5=, -1
	i32.add 	$2=, $pop4, $pop5
.LBB84_3:
	end_block
	block   	
	block   	
	i32.const	$push38=, 1
	i32.and 	$push6=, $5, $pop38
	br_if   	0, $pop6
	i32.const	$push7=, 254
	i32.and 	$push8=, $5, $pop7
	i32.const	$push9=, 1
	i32.shr_u	$3=, $pop8, $pop9
	br      	1
.LBB84_5:
	end_block
	i32.load	$3=, 4($0)
.LBB84_6:
	end_block
	i32.const	$4=, 10
	block   	
	i32.gt_u	$push10=, $3, $1
	i32.select	$push40=, $3, $1, $pop10
	tee_local	$push39=, $1=, $pop40
	i32.const	$push11=, 11
	i32.lt_u	$push12=, $pop39, $pop11
	br_if   	0, $pop12
	i32.const	$push13=, 16
	i32.add 	$push14=, $1, $pop13
	i32.const	$push15=, -16
	i32.and 	$push16=, $pop14, $pop15
	i32.const	$push17=, -1
	i32.add 	$4=, $pop16, $pop17
.LBB84_8:
	end_block
	block   	
	i32.eq  	$push18=, $4, $2
	br_if   	0, $pop18
	block   	
	block   	
	i32.const	$push19=, 10
	i32.ne  	$push20=, $4, $pop19
	br_if   	0, $pop20
	i32.const	$6=, 1
	i32.const	$push41=, 1
	i32.add 	$1=, $0, $pop41
	i32.load	$2=, 8($0)
	i32.const	$7=, 0
	br      	1
.LBB84_11:
	end_block
	i32.const	$push42=, 1
	i32.add 	$push22=, $4, $pop42
	i32.call	$1=, _Znwj@FUNCTION, $pop22
	block   	
	i32.gt_u	$push21=, $4, $2
	br_if   	0, $pop21
	i32.eqz 	$push53=, $1
	br_if   	2, $pop53
.LBB84_13:
	end_block
	block   	
	i32.load8_u	$push45=, 0($0)
	tee_local	$push44=, $5=, $pop45
	i32.const	$push43=, 1
	i32.and 	$push23=, $pop44, $pop43
	br_if   	0, $pop23
	i32.const	$7=, 1
	i32.const	$push46=, 1
	i32.add 	$2=, $0, $pop46
	i32.const	$6=, 0
	br      	1
.LBB84_15:
	end_block
	i32.load	$2=, 8($0)
	i32.const	$6=, 1
	i32.const	$7=, 1
.LBB84_16:
	end_block
	block   	
	block   	
	i32.const	$push47=, 1
	i32.and 	$push24=, $5, $pop47
	br_if   	0, $pop24
	i32.const	$push25=, 254
	i32.and 	$push26=, $5, $pop25
	i32.const	$push48=, 1
	i32.shr_u	$5=, $pop26, $pop48
	br      	1
.LBB84_18:
	end_block
	i32.load	$5=, 4($0)
.LBB84_19:
	end_block
	block   	
	i32.const	$push27=, 1
	i32.add 	$push50=, $5, $pop27
	tee_local	$push49=, $5=, $pop50
	i32.eqz 	$push54=, $pop49
	br_if   	0, $pop54
	i32.call	$drop=, memcpy@FUNCTION, $1, $2, $5
.LBB84_21:
	end_block
	block   	
	i32.eqz 	$push55=, $6
	br_if   	0, $pop55
	call    	_ZdlPv@FUNCTION, $2
.LBB84_23:
	end_block
	block   	
	i32.eqz 	$push56=, $7
	br_if   	0, $pop56
	i32.store	4($0), $3
	i32.store	8($0), $1
	i32.const	$push30=, 1
	i32.add 	$push31=, $4, $pop30
	i32.const	$push51=, 1
	i32.or  	$push32=, $pop31, $pop51
	i32.store	0($0), $pop32
	return
.LBB84_25:
	end_block
	i32.const	$push28=, 1
	i32.shl 	$push29=, $3, $pop28
	i32.store8	0($0), $pop29
.LBB84_26:
	end_block
	return
.LBB84_27:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end84:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj, .Lfunc_end84-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEj

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc:
	.param  	i32, i32
	.result 	i32
	i32.call	$push0=, strlen@FUNCTION, $1
	i32.call	$push1=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj@FUNCTION, $0, $1, $pop0
	.endfunc
.Lfunc_end85:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc, .Lfunc_end85-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i32.const	$4=, 10
	block   	
	i32.load8_u	$push22=, 0($0)
	tee_local	$push21=, $3=, $pop22
	i32.const	$push20=, 1
	i32.and 	$push0=, $pop21, $pop20
	i32.eqz 	$push30=, $pop0
	br_if   	0, $pop30
	i32.load	$push24=, 0($0)
	tee_local	$push23=, $3=, $pop24
	i32.const	$push1=, -2
	i32.and 	$push2=, $pop23, $pop1
	i32.const	$push3=, -1
	i32.add 	$4=, $pop2, $pop3
.LBB86_2:
	end_block
	block   	
	block   	
	i32.const	$push25=, 1
	i32.and 	$push4=, $3, $pop25
	br_if   	0, $pop4
	i32.const	$push5=, 254
	i32.and 	$push6=, $3, $pop5
	i32.const	$push7=, 1
	i32.shr_u	$5=, $pop6, $pop7
	br      	1
.LBB86_4:
	end_block
	i32.load	$5=, 4($0)
.LBB86_5:
	end_block
	block   	
	i32.sub 	$push8=, $4, $5
	i32.ge_u	$push9=, $pop8, $2
	br_if   	0, $pop9
	i32.sub 	$push17=, $2, $4
	i32.add 	$push18=, $pop17, $5
	i32.const	$push19=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc@FUNCTION, $0, $4, $pop18, $5, $5, $pop19, $2, $1
	return  	$0
.LBB86_7:
	end_block
	block   	
	block   	
	block   	
	i32.eqz 	$push31=, $2
	br_if   	0, $pop31
	i32.const	$push26=, 1
	i32.and 	$push10=, $3, $pop26
	br_if   	1, $pop10
	i32.const	$push27=, 1
	i32.add 	$4=, $0, $pop27
	br      	2
.LBB86_10:
	end_block
	return  	$0
.LBB86_11:
	end_block
	i32.load	$4=, 8($0)
.LBB86_12:
	end_block
	i32.add 	$push11=, $4, $5
	i32.call	$drop=, memcpy@FUNCTION, $pop11, $1, $2
	i32.add 	$2=, $5, $2
	block   	
	block   	
	i32.load8_u	$push12=, 0($0)
	i32.const	$push28=, 1
	i32.and 	$push13=, $pop12, $pop28
	br_if   	0, $pop13
	i32.const	$push29=, 1
	i32.shl 	$push14=, $2, $pop29
	i32.store8	0($0), $pop14
	br      	1
.LBB86_14:
	end_block
	i32.store	4($0), $2
.LBB86_15:
	end_block
	i32.add 	$push15=, $4, $2
	i32.const	$push16=, 0
	i32.store8	0($pop15), $pop16
	copy_local	$push32=, $0
	.endfunc
.Lfunc_end86:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj, .Lfunc_end86-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc:
	.param  	i32, i32, i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32
	block   	
	i32.const	$push0=, -18
	i32.sub 	$push1=, $pop0, $1
	i32.lt_u	$push2=, $pop1, $2
	br_if   	0, $pop2
	block   	
	block   	
	i32.load8_u	$push3=, 0($0)
	i32.const	$push24=, 1
	i32.and 	$push4=, $pop3, $pop24
	br_if   	0, $pop4
	i32.const	$push25=, 1
	i32.add 	$9=, $0, $pop25
	br      	1
.LBB87_3:
	end_block
	i32.load	$9=, 8($0)
.LBB87_4:
	end_block
	i32.const	$10=, -17
	block   	
	i32.const	$push5=, 2147483622
	i32.gt_u	$push6=, $1, $pop5
	br_if   	0, $pop6
	i32.const	$10=, 11
	i32.const	$push7=, 1
	i32.shl 	$push32=, $1, $pop7
	tee_local	$push31=, $8=, $pop32
	i32.add 	$push30=, $2, $1
	tee_local	$push29=, $2=, $pop30
	i32.lt_u	$push8=, $2, $8
	i32.select	$push28=, $pop31, $pop29, $pop8
	tee_local	$push27=, $2=, $pop28
	i32.const	$push26=, 11
	i32.lt_u	$push9=, $pop27, $pop26
	br_if   	0, $pop9
	i32.const	$push10=, 16
	i32.add 	$push11=, $2, $pop10
	i32.const	$push12=, -16
	i32.and 	$10=, $pop11, $pop12
.LBB87_7:
	end_block
	i32.call	$2=, _Znwj@FUNCTION, $10
	block   	
	i32.eqz 	$push39=, $4
	br_if   	0, $pop39
	i32.call	$drop=, memcpy@FUNCTION, $2, $9, $4
.LBB87_9:
	end_block
	block   	
	i32.eqz 	$push40=, $6
	br_if   	0, $pop40
	i32.add 	$push13=, $2, $4
	i32.call	$drop=, memcpy@FUNCTION, $pop13, $7, $6
.LBB87_11:
	end_block
	block   	
	i32.sub 	$push36=, $3, $5
	tee_local	$push35=, $3=, $pop36
	i32.sub 	$push34=, $pop35, $4
	tee_local	$push33=, $7=, $pop34
	i32.eqz 	$push41=, $pop33
	br_if   	0, $pop41
	i32.add 	$push16=, $2, $4
	i32.add 	$push17=, $pop16, $6
	i32.add 	$push14=, $9, $4
	i32.add 	$push15=, $pop14, $5
	i32.call	$drop=, memcpy@FUNCTION, $pop17, $pop15, $7
.LBB87_13:
	end_block
	block   	
	i32.const	$push18=, 10
	i32.eq  	$push19=, $1, $pop18
	br_if   	0, $pop19
	call    	_ZdlPv@FUNCTION, $9
.LBB87_15:
	end_block
	i32.store	8($0), $2
	i32.const	$push20=, 1
	i32.or  	$push21=, $10, $pop20
	i32.store	0($0), $pop21
	i32.add 	$push38=, $3, $6
	tee_local	$push37=, $4=, $pop38
	i32.store	4($0), $pop37
	i32.add 	$push22=, $2, $4
	i32.const	$push23=, 0
	i32.store8	0($pop22), $pop23
	return
.LBB87_16:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end87:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc, .Lfunc_end87-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc:
	.param  	i32, i32, i32
	.result 	i32
	i32.call	$push0=, strlen@FUNCTION, $2
	i32.call	$push1=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKcj@FUNCTION, $0, $1, $2, $pop0
	.endfunc
.Lfunc_end88:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc, .Lfunc_end88-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKcj,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKcj,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKcj
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKcj
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKcj,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKcj:
	.param  	i32, i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32
	block   	
	block   	
	block   	
	i32.load8_u	$push26=, 0($0)
	tee_local	$push25=, $5=, $pop26
	i32.const	$push24=, 1
	i32.and 	$push23=, $pop25, $pop24
	tee_local	$push22=, $6=, $pop23
	br_if   	0, $pop22
	i32.const	$push29=, 1
	i32.shr_u	$push28=, $5, $pop29
	tee_local	$push27=, $4=, $pop28
	i32.ge_u	$push0=, $pop27, $1
	br_if   	1, $pop0
	br      	2
.LBB89_2:
	end_block
	i32.load	$push31=, 4($0)
	tee_local	$push30=, $4=, $pop31
	i32.lt_u	$push1=, $pop30, $1
	br_if   	1, $pop1
.LBB89_3:
	end_block
	block   	
	block   	
	br_if   	0, $6
	i32.const	$6=, 10
	br      	1
.LBB89_5:
	end_block
	i32.load	$push33=, 0($0)
	tee_local	$push32=, $5=, $pop33
	i32.const	$push2=, -2
	i32.and 	$push3=, $pop32, $pop2
	i32.const	$push4=, -1
	i32.add 	$6=, $pop3, $pop4
.LBB89_6:
	end_block
	block   	
	i32.sub 	$push5=, $6, $4
	i32.ge_u	$push6=, $pop5, $3
	br_if   	0, $pop6
	i32.add 	$push19=, $4, $3
	i32.sub 	$push20=, $pop19, $6
	i32.const	$push21=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEjjjjjjPKc@FUNCTION, $0, $6, $pop20, $4, $1, $pop21, $3, $2
	return  	$0
.LBB89_8:
	end_block
	block   	
	block   	
	block   	
	i32.eqz 	$push40=, $3
	br_if   	0, $pop40
	i32.const	$push34=, 1
	i32.and 	$push7=, $5, $pop34
	br_if   	1, $pop7
	i32.const	$push35=, 1
	i32.add 	$5=, $0, $pop35
	br      	2
.LBB89_11:
	end_block
	return  	$0
.LBB89_12:
	end_block
	i32.load	$5=, 8($0)
.LBB89_13:
	end_block
	i32.add 	$6=, $5, $1
	block   	
	i32.sub 	$push37=, $4, $1
	tee_local	$push36=, $1=, $pop37
	i32.eqz 	$push41=, $pop36
	br_if   	0, $pop41
	i32.add 	$push8=, $6, $3
	i32.call	$drop=, memmove@FUNCTION, $pop8, $6, $1
	i32.add 	$push9=, $2, $3
	i32.add 	$push10=, $5, $4
	i32.gt_u	$push11=, $pop10, $2
	i32.select	$push12=, $pop9, $2, $pop11
	i32.le_u	$push13=, $6, $2
	i32.select	$2=, $pop12, $2, $pop13
.LBB89_15:
	end_block
	i32.call	$drop=, memmove@FUNCTION, $6, $2, $3
	i32.add 	$3=, $4, $3
	block   	
	block   	
	i32.load8_u	$push14=, 0($0)
	i32.const	$push38=, 1
	i32.and 	$push15=, $pop14, $pop38
	br_if   	0, $pop15
	i32.const	$push39=, 1
	i32.shl 	$push16=, $3, $pop39
	i32.store8	0($0), $pop16
	br      	1
.LBB89_17:
	end_block
	i32.store	4($0), $3
.LBB89_18:
	end_block
	i32.add 	$push17=, $5, $3
	i32.const	$push18=, 0
	i32.store8	0($pop17), $pop18
	return  	$0
.LBB89_19:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end89:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKcj, .Lfunc_end89-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKcj

	.text
	.hidden	_ZNSt3__19to_stringEm
	.globl	_ZNSt3__19to_stringEm
	.type	_ZNSt3__19to_stringEm,@function
_ZNSt3__19to_stringEm:
	.param  	i32, i32
	.local  	i32, i32, i32, i32, i32, i32
	i32.const	$push49=, 0
	i32.const	$push46=, 0
	i32.load	$push47=, __stack_pointer($pop46)
	i32.const	$push48=, 32
	i32.sub 	$push73=, $pop47, $pop48
	tee_local	$push72=, $7=, $pop73
	i32.store	__stack_pointer($pop49), $pop72
	i32.const	$push0=, 0
	i32.store	24($7), $pop0
	i64.const	$push1=, 0
	i64.store	16($7), $pop1
	i32.const	$6=, 10
	i32.const	$push53=, 16
	i32.add 	$push54=, $7, $pop53
	i32.const	$push2=, 1
	i32.or  	$push71=, $pop54, $pop2
	tee_local	$push70=, $2=, $pop71
	i32.const	$push69=, 0
	i32.const	$push68=, 10
	i32.call	$drop=, memset@FUNCTION, $pop70, $pop69, $pop68
	block   	
	block   	
	i32.load8_u	$push67=, 16($7)
	tee_local	$push66=, $3=, $pop67
	i32.const	$push65=, 1
	i32.and 	$push3=, $pop66, $pop65
	br_if   	0, $pop3
	i32.const	$3=, 20
	i32.const	$push74=, 20
	i32.store8	16($7), $pop74
	i32.load	$6=, 20($7)
	br      	1
.LBB90_2:
	end_block
	i32.const	$push75=, 10
	i32.store	20($7), $pop75
.LBB90_3:
	end_block
	i32.const	$push4=, 27
	i32.add 	$push5=, $7, $pop4
	i32.const	$push78=, 0
	i32.store8	0($pop5), $pop78
	i32.const	$push77=, 1
	i32.shr_u	$push7=, $3, $pop77
	i32.const	$push76=, 1
	i32.and 	$push6=, $3, $pop76
	i32.select	$6=, $6, $pop7, $pop6
	i32.const	$push9=, 24
	i32.add 	$5=, $7, $pop9
.LBB90_4:
	block   	
	loop    	
	i32.store	0($7), $1
	block   	
	block   	
	i32.load	$push10=, 0($5)
	i32.const	$push85=, 1
	i32.and 	$push8=, $3, $pop85
	i32.select	$push11=, $pop10, $2, $pop8
	i32.const	$push84=, 1
	i32.add 	$push12=, $6, $pop84
	i32.const	$push83=, .L.str.12.281
	i32.call	$push82=, snprintf@FUNCTION, $pop11, $pop12, $pop83, $7
	tee_local	$push81=, $3=, $pop82
	i32.const	$push80=, 0
	i32.lt_s	$push13=, $pop81, $pop80
	br_if   	0, $pop13
	i32.le_u	$push15=, $3, $6
	br_if   	3, $pop15
	copy_local	$6=, $3
	br      	1
.LBB90_7:
	end_block
	i32.const	$push87=, 1
	i32.shl 	$push14=, $6, $pop87
	i32.const	$push86=, 1
	i32.or  	$6=, $pop14, $pop86
.LBB90_8:
	end_block
	block   	
	i32.load	$push38=, 20($7)
	i32.load8_u	$push95=, 16($7)
	tee_local	$push94=, $3=, $pop95
	i32.const	$push93=, 1
	i32.shr_u	$push37=, $pop94, $pop93
	i32.const	$push92=, 1
	i32.and 	$push91=, $3, $pop92
	tee_local	$push90=, $4=, $pop91
	i32.select	$push89=, $pop38, $pop37, $pop90
	tee_local	$push88=, $3=, $pop89
	i32.le_u	$push39=, $6, $pop88
	br_if   	0, $pop39
	i32.const	$push55=, 16
	i32.add 	$push56=, $7, $pop55
	i32.sub 	$push45=, $6, $3
	i32.const	$push79=, 0
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEjc@FUNCTION, $pop56, $pop45, $pop79
	i32.load8_u	$3=, 16($7)
	br      	1
.LBB90_10:
	end_block
	block   	
	br_if   	0, $4
	i32.const	$push57=, 16
	i32.add 	$push58=, $7, $pop57
	i32.add 	$push42=, $pop58, $6
	i32.const	$push98=, 1
	i32.add 	$push43=, $pop42, $pop98
	i32.const	$push97=, 0
	i32.store8	0($pop43), $pop97
	i32.const	$push96=, 1
	i32.shl 	$push44=, $6, $pop96
	i32.store8	16($7), $pop44
	i32.load8_u	$3=, 16($7)
	br      	1
.LBB90_12:
	end_block
	i32.load	$push40=, 0($5)
	i32.add 	$push41=, $pop40, $6
	i32.const	$push99=, 0
	i32.store8	0($pop41), $pop99
	i32.store	20($7), $6
	i32.load8_u	$3=, 16($7)
	br      	0
.LBB90_13:
	end_loop
	end_block
	block   	
	block   	
	i32.load	$push18=, 20($7)
	i32.load8_u	$push106=, 16($7)
	tee_local	$push105=, $6=, $pop106
	i32.const	$push16=, 1
	i32.shr_u	$push17=, $pop105, $pop16
	i32.const	$push104=, 1
	i32.and 	$push103=, $6, $pop104
	tee_local	$push102=, $6=, $pop103
	i32.select	$push101=, $pop18, $pop17, $pop102
	tee_local	$push100=, $4=, $pop101
	i32.le_u	$push19=, $3, $pop100
	br_if   	0, $pop19
	i32.const	$push59=, 16
	i32.add 	$push60=, $7, $pop59
	i32.sub 	$push30=, $3, $4
	i32.const	$push31=, 0
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEjc@FUNCTION, $pop60, $pop30, $pop31
	br      	1
.LBB90_15:
	end_block
	block   	
	br_if   	0, $6
	i32.const	$push63=, 16
	i32.add 	$push64=, $7, $pop63
	i32.add 	$push25=, $pop64, $3
	i32.const	$push26=, 1
	i32.add 	$push27=, $pop25, $pop26
	i32.const	$push28=, 0
	i32.store8	0($pop27), $pop28
	i32.const	$push107=, 1
	i32.shl 	$push29=, $3, $pop107
	i32.store8	16($7), $pop29
	br      	1
.LBB90_17:
	end_block
	i32.const	$push20=, 24
	i32.add 	$push21=, $7, $pop20
	i32.load	$push22=, 0($pop21)
	i32.add 	$push23=, $pop22, $3
	i32.const	$push24=, 0
	i32.store8	0($pop23), $pop24
	i32.store	20($7), $3
.LBB90_18:
	end_block
	i64.load	$push32=, 16($7)
	i64.store	0($0):p2align=2, $pop32
	i32.const	$push33=, 8
	i32.add 	$push34=, $0, $pop33
	i32.const	$push61=, 16
	i32.add 	$push62=, $7, $pop61
	i32.const	$push108=, 8
	i32.add 	$push35=, $pop62, $pop108
	i32.load	$push36=, 0($pop35)
	i32.store	0($pop34), $pop36
	i32.const	$push52=, 0
	i32.const	$push50=, 32
	i32.add 	$push51=, $7, $pop50
	i32.store	__stack_pointer($pop52), $pop51
	.endfunc
.Lfunc_end90:
	.size	_ZNSt3__19to_stringEm, .Lfunc_end90-_ZNSt3__19to_stringEm

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEjc,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEjc,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEjc
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEjc
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEjc,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEjc:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32
	block   	
	i32.eqz 	$push33=, $1
	br_if   	0, $pop33
	i32.const	$3=, 10
	block   	
	i32.load8_u	$push24=, 0($0)
	tee_local	$push23=, $5=, $pop24
	i32.const	$push22=, 1
	i32.and 	$push0=, $pop23, $pop22
	i32.eqz 	$push34=, $pop0
	br_if   	0, $pop34
	i32.load	$push26=, 0($0)
	tee_local	$push25=, $5=, $pop26
	i32.const	$push1=, -2
	i32.and 	$push2=, $pop25, $pop1
	i32.const	$push3=, -1
	i32.add 	$3=, $pop2, $pop3
.LBB91_3:
	end_block
	block   	
	block   	
	i32.const	$push27=, 1
	i32.and 	$push4=, $5, $pop27
	br_if   	0, $pop4
	i32.const	$push5=, 254
	i32.and 	$push6=, $5, $pop5
	i32.const	$push7=, 1
	i32.shr_u	$4=, $pop6, $pop7
	br      	1
.LBB91_5:
	end_block
	i32.load	$4=, 4($0)
.LBB91_6:
	end_block
	block   	
	i32.sub 	$push8=, $3, $4
	i32.ge_u	$push9=, $pop8, $1
	br_if   	0, $pop9
	i32.sub 	$push10=, $1, $3
	i32.add 	$push11=, $pop10, $4
	i32.const	$push12=, 0
	i32.const	$push28=, 0
	call    	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEjjjjjj@FUNCTION, $0, $3, $pop11, $4, $4, $pop12, $pop28
	i32.load8_u	$5=, 0($0)
.LBB91_8:
	end_block
	block   	
	block   	
	i32.const	$push29=, 1
	i32.and 	$push13=, $5, $pop29
	br_if   	0, $pop13
	i32.const	$push30=, 1
	i32.add 	$5=, $0, $pop30
	br      	1
.LBB91_10:
	end_block
	i32.load	$5=, 8($0)
.LBB91_11:
	end_block
	i32.add 	$push16=, $5, $4
	i32.const	$push14=, 255
	i32.and 	$push15=, $2, $pop14
	i32.call	$drop=, memset@FUNCTION, $pop16, $pop15, $1
	i32.add 	$1=, $4, $1
	block   	
	block   	
	i32.load8_u	$push17=, 0($0)
	i32.const	$push31=, 1
	i32.and 	$push18=, $pop17, $pop31
	br_if   	0, $pop18
	i32.const	$push32=, 1
	i32.shl 	$push19=, $1, $pop32
	i32.store8	0($0), $pop19
	br      	1
.LBB91_13:
	end_block
	i32.store	4($0), $1
.LBB91_14:
	end_block
	i32.add 	$push20=, $5, $1
	i32.const	$push21=, 0
	i32.store8	0($pop20), $pop21
.LBB91_15:
	end_block
	copy_local	$push35=, $0
	.endfunc
.Lfunc_end91:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEjc, .Lfunc_end91-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEjc

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEjjjjjj,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEjjjjjj,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEjjjjjj
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEjjjjjj
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEjjjjjj,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEjjjjjj:
	.param  	i32, i32, i32, i32, i32, i32, i32
	.local  	i32, i32, i32
	block   	
	i32.const	$push0=, -17
	i32.sub 	$push1=, $pop0, $1
	i32.lt_u	$push2=, $pop1, $2
	br_if   	0, $pop2
	block   	
	block   	
	i32.load8_u	$push3=, 0($0)
	i32.const	$push22=, 1
	i32.and 	$push4=, $pop3, $pop22
	br_if   	0, $pop4
	i32.const	$push23=, 1
	i32.add 	$8=, $0, $pop23
	br      	1
.LBB92_3:
	end_block
	i32.load	$8=, 8($0)
.LBB92_4:
	end_block
	i32.const	$9=, -17
	block   	
	i32.const	$push5=, 2147483622
	i32.gt_u	$push6=, $1, $pop5
	br_if   	0, $pop6
	i32.const	$9=, 11
	i32.const	$push7=, 1
	i32.shl 	$push30=, $1, $pop7
	tee_local	$push29=, $7=, $pop30
	i32.add 	$push28=, $2, $1
	tee_local	$push27=, $2=, $pop28
	i32.lt_u	$push8=, $2, $7
	i32.select	$push26=, $pop29, $pop27, $pop8
	tee_local	$push25=, $2=, $pop26
	i32.const	$push24=, 11
	i32.lt_u	$push9=, $pop25, $pop24
	br_if   	0, $pop9
	i32.const	$push10=, 16
	i32.add 	$push11=, $2, $pop10
	i32.const	$push12=, -16
	i32.and 	$9=, $pop11, $pop12
.LBB92_7:
	end_block
	i32.call	$2=, _Znwj@FUNCTION, $9
	block   	
	i32.eqz 	$push33=, $4
	br_if   	0, $pop33
	i32.call	$drop=, memcpy@FUNCTION, $2, $8, $4
.LBB92_9:
	end_block
	block   	
	i32.sub 	$push13=, $3, $5
	i32.sub 	$push32=, $pop13, $4
	tee_local	$push31=, $3=, $pop32
	i32.eqz 	$push34=, $pop31
	br_if   	0, $pop34
	i32.add 	$push16=, $2, $4
	i32.add 	$push17=, $pop16, $6
	i32.add 	$push14=, $8, $4
	i32.add 	$push15=, $pop14, $5
	i32.call	$drop=, memcpy@FUNCTION, $pop17, $pop15, $3
.LBB92_11:
	end_block
	block   	
	i32.const	$push18=, 10
	i32.eq  	$push19=, $1, $pop18
	br_if   	0, $pop19
	call    	_ZdlPv@FUNCTION, $8
.LBB92_13:
	end_block
	i32.store	8($0), $2
	i32.const	$push20=, 1
	i32.or  	$push21=, $9, $pop20
	i32.store	0($0), $pop21
	return
.LBB92_14:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end92:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEjjjjjj, .Lfunc_end92-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEjjjjjj

	.text
	.hidden	_ZNSt3__19to_stringEy
	.globl	_ZNSt3__19to_stringEy
	.type	_ZNSt3__19to_stringEy,@function
_ZNSt3__19to_stringEy:
	.param  	i32, i64
	.local  	i32, i32, i32, i32, i32, i32
	i32.const	$push49=, 0
	i32.const	$push46=, 0
	i32.load	$push47=, __stack_pointer($pop46)
	i32.const	$push48=, 32
	i32.sub 	$push73=, $pop47, $pop48
	tee_local	$push72=, $7=, $pop73
	i32.store	__stack_pointer($pop49), $pop72
	i32.const	$push0=, 0
	i32.store	24($7), $pop0
	i64.const	$push1=, 0
	i64.store	16($7), $pop1
	i32.const	$6=, 10
	i32.const	$push53=, 16
	i32.add 	$push54=, $7, $pop53
	i32.const	$push2=, 1
	i32.or  	$push71=, $pop54, $pop2
	tee_local	$push70=, $2=, $pop71
	i32.const	$push69=, 0
	i32.const	$push68=, 10
	i32.call	$drop=, memset@FUNCTION, $pop70, $pop69, $pop68
	block   	
	block   	
	i32.load8_u	$push67=, 16($7)
	tee_local	$push66=, $3=, $pop67
	i32.const	$push65=, 1
	i32.and 	$push3=, $pop66, $pop65
	br_if   	0, $pop3
	i32.const	$3=, 20
	i32.const	$push74=, 20
	i32.store8	16($7), $pop74
	i32.load	$6=, 20($7)
	br      	1
.LBB93_2:
	end_block
	i32.const	$push75=, 10
	i32.store	20($7), $pop75
.LBB93_3:
	end_block
	i32.const	$push4=, 27
	i32.add 	$push5=, $7, $pop4
	i32.const	$push78=, 0
	i32.store8	0($pop5), $pop78
	i32.const	$push77=, 1
	i32.shr_u	$push7=, $3, $pop77
	i32.const	$push76=, 1
	i32.and 	$push6=, $3, $pop76
	i32.select	$6=, $6, $pop7, $pop6
	i32.const	$push9=, 24
	i32.add 	$5=, $7, $pop9
.LBB93_4:
	block   	
	loop    	
	i64.store	0($7), $1
	block   	
	block   	
	i32.load	$push10=, 0($5)
	i32.const	$push85=, 1
	i32.and 	$push8=, $3, $pop85
	i32.select	$push11=, $pop10, $2, $pop8
	i32.const	$push84=, 1
	i32.add 	$push12=, $6, $pop84
	i32.const	$push83=, .L.str.14.283
	i32.call	$push82=, snprintf@FUNCTION, $pop11, $pop12, $pop83, $7
	tee_local	$push81=, $3=, $pop82
	i32.const	$push80=, 0
	i32.lt_s	$push13=, $pop81, $pop80
	br_if   	0, $pop13
	i32.le_u	$push15=, $3, $6
	br_if   	3, $pop15
	copy_local	$6=, $3
	br      	1
.LBB93_7:
	end_block
	i32.const	$push87=, 1
	i32.shl 	$push14=, $6, $pop87
	i32.const	$push86=, 1
	i32.or  	$6=, $pop14, $pop86
.LBB93_8:
	end_block
	block   	
	i32.load	$push38=, 20($7)
	i32.load8_u	$push95=, 16($7)
	tee_local	$push94=, $3=, $pop95
	i32.const	$push93=, 1
	i32.shr_u	$push37=, $pop94, $pop93
	i32.const	$push92=, 1
	i32.and 	$push91=, $3, $pop92
	tee_local	$push90=, $4=, $pop91
	i32.select	$push89=, $pop38, $pop37, $pop90
	tee_local	$push88=, $3=, $pop89
	i32.le_u	$push39=, $6, $pop88
	br_if   	0, $pop39
	i32.const	$push55=, 16
	i32.add 	$push56=, $7, $pop55
	i32.sub 	$push45=, $6, $3
	i32.const	$push79=, 0
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEjc@FUNCTION, $pop56, $pop45, $pop79
	i32.load8_u	$3=, 16($7)
	br      	1
.LBB93_10:
	end_block
	block   	
	br_if   	0, $4
	i32.const	$push57=, 16
	i32.add 	$push58=, $7, $pop57
	i32.add 	$push42=, $pop58, $6
	i32.const	$push98=, 1
	i32.add 	$push43=, $pop42, $pop98
	i32.const	$push97=, 0
	i32.store8	0($pop43), $pop97
	i32.const	$push96=, 1
	i32.shl 	$push44=, $6, $pop96
	i32.store8	16($7), $pop44
	i32.load8_u	$3=, 16($7)
	br      	1
.LBB93_12:
	end_block
	i32.load	$push40=, 0($5)
	i32.add 	$push41=, $pop40, $6
	i32.const	$push99=, 0
	i32.store8	0($pop41), $pop99
	i32.store	20($7), $6
	i32.load8_u	$3=, 16($7)
	br      	0
.LBB93_13:
	end_loop
	end_block
	block   	
	block   	
	i32.load	$push18=, 20($7)
	i32.load8_u	$push106=, 16($7)
	tee_local	$push105=, $6=, $pop106
	i32.const	$push16=, 1
	i32.shr_u	$push17=, $pop105, $pop16
	i32.const	$push104=, 1
	i32.and 	$push103=, $6, $pop104
	tee_local	$push102=, $6=, $pop103
	i32.select	$push101=, $pop18, $pop17, $pop102
	tee_local	$push100=, $4=, $pop101
	i32.le_u	$push19=, $3, $pop100
	br_if   	0, $pop19
	i32.const	$push59=, 16
	i32.add 	$push60=, $7, $pop59
	i32.sub 	$push30=, $3, $4
	i32.const	$push31=, 0
	i32.call	$drop=, _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEjc@FUNCTION, $pop60, $pop30, $pop31
	br      	1
.LBB93_15:
	end_block
	block   	
	br_if   	0, $6
	i32.const	$push63=, 16
	i32.add 	$push64=, $7, $pop63
	i32.add 	$push25=, $pop64, $3
	i32.const	$push26=, 1
	i32.add 	$push27=, $pop25, $pop26
	i32.const	$push28=, 0
	i32.store8	0($pop27), $pop28
	i32.const	$push107=, 1
	i32.shl 	$push29=, $3, $pop107
	i32.store8	16($7), $pop29
	br      	1
.LBB93_17:
	end_block
	i32.const	$push20=, 24
	i32.add 	$push21=, $7, $pop20
	i32.load	$push22=, 0($pop21)
	i32.add 	$push23=, $pop22, $3
	i32.const	$push24=, 0
	i32.store8	0($pop23), $pop24
	i32.store	20($7), $3
.LBB93_18:
	end_block
	i64.load	$push32=, 16($7)
	i64.store	0($0):p2align=2, $pop32
	i32.const	$push33=, 8
	i32.add 	$push34=, $0, $pop33
	i32.const	$push61=, 16
	i32.add 	$push62=, $7, $pop61
	i32.const	$push108=, 8
	i32.add 	$push35=, $pop62, $pop108
	i32.load	$push36=, 0($pop35)
	i32.store	0($pop34), $pop36
	i32.const	$push52=, 0
	i32.const	$push50=, 32
	i32.add 	$push51=, $7, $pop50
	i32.store	__stack_pointer($pop52), $pop51
	.endfunc
.Lfunc_end93:
	.size	_ZNSt3__19to_stringEy, .Lfunc_end93-_ZNSt3__19to_stringEy

	.section	.text._ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,"axG",@progbits,_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,comdat
	.hidden	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.weak	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.type	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv,@function
_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv:
	.param  	i32
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end94:
	.size	_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv, .Lfunc_end94-_ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv

	.section	.text._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_,"axG",@progbits,_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC5ERKS5_,comdat
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_,@function
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i64.const	$push0=, 0
	i64.store	0($0):p2align=2, $pop0
	i32.const	$push23=, 8
	i32.add 	$push22=, $0, $pop23
	tee_local	$push21=, $3=, $pop22
	i32.const	$push1=, 0
	i32.store	0($pop21), $pop1
	block   	
	i32.load8_u	$push2=, 0($1)
	i32.const	$push3=, 1
	i32.and 	$push4=, $pop2, $pop3
	br_if   	0, $pop4
	i64.load	$push18=, 0($1):p2align=2
	i64.store	0($0):p2align=2, $pop18
	i32.const	$push24=, 8
	i32.add 	$push19=, $1, $pop24
	i32.load	$push20=, 0($pop19)
	i32.store	0($3), $pop20
	return  	$0
.LBB95_2:
	end_block
	block   	
	i32.load	$push26=, 4($1)
	tee_local	$push25=, $3=, $pop26
	i32.const	$push5=, -16
	i32.ge_u	$push6=, $pop25, $pop5
	br_if   	0, $pop6
	i32.load	$2=, 8($1)
	block   	
	block   	
	block   	
	i32.const	$push7=, 11
	i32.ge_u	$push8=, $3, $pop7
	br_if   	0, $pop8
	i32.const	$push14=, 1
	i32.shl 	$push15=, $3, $pop14
	i32.store8	0($0), $pop15
	i32.const	$push27=, 1
	i32.add 	$1=, $0, $pop27
	br_if   	1, $3
	br      	2
.LBB95_5:
	end_block
	i32.const	$push9=, 16
	i32.add 	$push10=, $3, $pop9
	i32.const	$push11=, -16
	i32.and 	$push29=, $pop10, $pop11
	tee_local	$push28=, $4=, $pop29
	i32.call	$1=, _Znwj@FUNCTION, $pop28
	i32.const	$push12=, 1
	i32.or  	$push13=, $4, $pop12
	i32.store	0($0), $pop13
	i32.store	8($0), $1
	i32.store	4($0), $3
.LBB95_6:
	end_block
	i32.call	$drop=, memcpy@FUNCTION, $1, $2, $3
.LBB95_7:
	end_block
	i32.add 	$push16=, $1, $3
	i32.const	$push17=, 0
	i32.store8	0($pop16), $pop17
	return  	$0
.LBB95_8:
	end_block
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end95:
	.size	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_, .Lfunc_end95-_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_

	.text
	.hidden	snprintf
	.globl	snprintf
	.type	snprintf,@function
snprintf:
	.param  	i32, i32, i32, i32
	.result 	i32
	.local  	i32
	i32.const	$push3=, 0
	i32.const	$push0=, 0
	i32.load	$push1=, __stack_pointer($pop0)
	i32.const	$push2=, 16
	i32.sub 	$push8=, $pop1, $pop2
	tee_local	$push7=, $4=, $pop8
	i32.store	__stack_pointer($pop3), $pop7
	i32.store	12($4), $3
	i32.call	$3=, vsnprintf@FUNCTION, $0, $1, $2, $3
	i32.const	$push6=, 0
	i32.const	$push4=, 16
	i32.add 	$push5=, $4, $pop4
	i32.store	__stack_pointer($pop6), $pop5
	copy_local	$push9=, $3
	.endfunc
.Lfunc_end96:
	.size	snprintf, .Lfunc_end96-snprintf

	.hidden	vsnprintf
	.globl	vsnprintf
	.type	vsnprintf,@function
vsnprintf:
	.param  	i32, i32, i32, i32
	.result 	i32
	.local  	i32, i32
	i32.const	$push11=, 0
	i32.const	$push8=, 0
	i32.load	$push9=, __stack_pointer($pop8)
	i32.const	$push10=, 160
	i32.sub 	$push31=, $pop9, $pop10
	tee_local	$push30=, $4=, $pop31
	i32.store	__stack_pointer($pop11), $pop30
	i32.const	$5=, -1
	i32.const	$push29=, -1
	i32.add 	$push0=, $1, $pop29
	i32.const	$push28=, 0
	i32.select	$push1=, $pop0, $pop28, $1
	i32.store	148($4), $pop1
	i32.const	$push15=, 158
	i32.add 	$push16=, $4, $pop15
	i32.select	$push27=, $0, $pop16, $1
	tee_local	$push26=, $0=, $pop27
	i32.store	144($4), $pop26
	i32.const	$push25=, 0
	i32.const	$push2=, 144
	i32.call	$push24=, memset@FUNCTION, $4, $pop25, $pop2
	tee_local	$push23=, $4=, $pop24
	i32.const	$push3=, sn_write@FUNCTION
	i32.store	36($pop23), $pop3
	i32.const	$push4=, 255
	i32.store8	75($4), $pop4
	i32.const	$push22=, -1
	i32.store	76($4), $pop22
	i32.const	$push17=, 159
	i32.add 	$push18=, $4, $pop17
	i32.store	44($4), $pop18
	i32.const	$push19=, 144
	i32.add 	$push20=, $4, $pop19
	i32.store	84($4), $pop20
	block   	
	block   	
	i32.const	$push21=, -1
	i32.le_s	$push5=, $1, $pop21
	br_if   	0, $pop5
	i32.const	$push32=, 0
	i32.store8	0($0), $pop32
	i32.call	$5=, vfprintf@FUNCTION, $4, $2, $3
	br      	1
.LBB97_2:
	end_block
	i32.call	$push6=, __errno_location@FUNCTION
	i32.const	$push7=, 75
	i32.store	0($pop6), $pop7
.LBB97_3:
	end_block
	i32.const	$push14=, 0
	i32.const	$push12=, 160
	i32.add 	$push13=, $4, $pop12
	i32.store	__stack_pointer($pop14), $pop13
	copy_local	$push33=, $5
	.endfunc
.Lfunc_end97:
	.size	vsnprintf, .Lfunc_end97-vsnprintf

	.type	sn_write,@function
sn_write:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32
	block   	
	i32.load	$push26=, 84($0)
	tee_local	$push25=, $3=, $pop26
	i32.load	$push24=, 4($pop25)
	tee_local	$push23=, $5=, $pop24
	i32.load	$push0=, 20($0)
	i32.load	$push22=, 28($0)
	tee_local	$push21=, $4=, $pop22
	i32.sub 	$push20=, $pop0, $pop21
	tee_local	$push19=, $6=, $pop20
	i32.lt_u	$push1=, $5, $6
	i32.select	$push18=, $pop23, $pop19, $pop1
	tee_local	$push17=, $6=, $pop18
	i32.eqz 	$push39=, $pop17
	br_if   	0, $pop39
	i32.load	$push2=, 0($3)
	i32.call	$drop=, memcpy@FUNCTION, $pop2, $4, $6
	i32.load	$push3=, 0($3)
	i32.add 	$push4=, $pop3, $6
	i32.store	0($3), $pop4
	i32.const	$push5=, 4
	i32.add 	$push30=, $3, $pop5
	tee_local	$push29=, $5=, $pop30
	i32.load	$push6=, 0($5)
	i32.sub 	$push28=, $pop6, $6
	tee_local	$push27=, $5=, $pop28
	i32.store	0($pop29), $pop27
.LBB98_2:
	end_block
	i32.load	$6=, 0($3)
	block   	
	i32.lt_u	$push7=, $5, $2
	i32.select	$push32=, $5, $2, $pop7
	tee_local	$push31=, $5=, $pop32
	i32.eqz 	$push40=, $pop31
	br_if   	0, $pop40
	i32.call	$drop=, memcpy@FUNCTION, $6, $1, $5
	i32.load	$push8=, 0($3)
	i32.add 	$push36=, $pop8, $5
	tee_local	$push35=, $6=, $pop36
	i32.store	0($3), $pop35
	i32.const	$push9=, 4
	i32.add 	$push34=, $3, $pop9
	tee_local	$push33=, $3=, $pop34
	i32.load	$push10=, 0($3)
	i32.sub 	$push11=, $pop10, $5
	i32.store	0($pop33), $pop11
.LBB98_4:
	end_block
	i32.const	$push12=, 0
	i32.store8	0($6), $pop12
	i32.const	$push13=, 28
	i32.add 	$push14=, $0, $pop13
	i32.load	$push38=, 44($0)
	tee_local	$push37=, $3=, $pop38
	i32.store	0($pop14), $pop37
	i32.const	$push15=, 20
	i32.add 	$push16=, $0, $pop15
	i32.store	0($pop16), $3
	copy_local	$push41=, $2
	.endfunc
.Lfunc_end98:
	.size	sn_write, .Lfunc_end98-sn_write

	.hidden	__errno_location
	.globl	__errno_location
	.type	__errno_location,@function
__errno_location:
	.result 	i32
	i32.const	$push0=, __pthread_self.self
	.endfunc
.Lfunc_end99:
	.size	__errno_location, .Lfunc_end99-__errno_location

	.hidden	vfprintf
	.globl	vfprintf
	.type	vfprintf,@function
vfprintf:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32
	i32.const	$push30=, 0
	i32.const	$push27=, 0
	i32.load	$push28=, __stack_pointer($pop27)
	i32.const	$push29=, 288
	i32.sub 	$push58=, $pop28, $pop29
	tee_local	$push57=, $7=, $pop58
	i32.store	__stack_pointer($pop30), $pop57
	i32.store	284($7), $2
	i32.const	$6=, 0
	i32.const	$push34=, 240
	i32.add 	$push35=, $7, $pop34
	i32.const	$push56=, 0
	i32.const	$push0=, 40
	i32.call	$drop=, memset@FUNCTION, $pop35, $pop56, $pop0
	i32.load	$push1=, 284($7)
	i32.store	280($7), $pop1
	i32.const	$2=, -1
	block   	
	i32.const	$push55=, 0
	i32.const	$push36=, 280
	i32.add 	$push37=, $7, $pop36
	i32.const	$push38=, 80
	i32.add 	$push39=, $7, $pop38
	i32.const	$push40=, 240
	i32.add 	$push41=, $7, $pop40
	i32.call	$push2=, printf_core@FUNCTION, $pop55, $1, $pop37, $pop39, $pop41
	i32.const	$push54=, -1
	i32.le_s	$push3=, $pop2, $pop54
	br_if   	0, $pop3
	block   	
	i32.load	$push4=, 76($0)
	i32.const	$push59=, 0
	i32.lt_s	$push5=, $pop4, $pop59
	br_if   	0, $pop5
	i32.call	$6=, __lockfile@FUNCTION, $0
.LBB100_3:
	end_block
	i32.load	$2=, 0($0)
	block   	
	i32.load8_s	$push6=, 74($0)
	i32.const	$push7=, 0
	i32.gt_s	$push8=, $pop6, $pop7
	br_if   	0, $pop8
	i32.const	$push9=, -33
	i32.and 	$push10=, $2, $pop9
	i32.store	0($0), $pop10
.LBB100_5:
	end_block
	i32.const	$push60=, 32
	i32.and 	$3=, $2, $pop60
	block   	
	block   	
	i32.load	$push11=, 48($0)
	i32.eqz 	$push74=, $pop11
	br_if   	0, $pop74
	i32.const	$push48=, 280
	i32.add 	$push49=, $7, $pop48
	i32.const	$push50=, 80
	i32.add 	$push51=, $7, $pop50
	i32.const	$push52=, 240
	i32.add 	$push53=, $7, $pop52
	i32.call	$2=, printf_core@FUNCTION, $0, $1, $pop49, $pop51, $pop53
	br      	1
.LBB100_7:
	end_block
	i32.const	$push12=, 48
	i32.add 	$push63=, $0, $pop12
	tee_local	$push62=, $5=, $pop63
	i32.const	$push13=, 80
	i32.store	0($pop62), $pop13
	i32.const	$push61=, 80
	i32.add 	$push14=, $7, $pop61
	i32.store	16($0), $pop14
	i32.store	28($0), $7
	i32.store	20($0), $7
	i32.load	$4=, 44($0)
	i32.store	44($0), $7
	i32.const	$push42=, 280
	i32.add 	$push43=, $7, $pop42
	i32.const	$push44=, 80
	i32.add 	$push45=, $7, $pop44
	i32.const	$push46=, 240
	i32.add 	$push47=, $7, $pop46
	i32.call	$2=, printf_core@FUNCTION, $0, $1, $pop43, $pop45, $pop47
	i32.eqz 	$push75=, $4
	br_if   	0, $pop75
	i32.const	$push16=, 0
	i32.const	$push70=, 0
	i32.load	$push15=, 36($0)
	i32.call_indirect	$drop=, $0, $pop16, $pop70, $pop15
	i32.const	$push17=, 44
	i32.add 	$push18=, $0, $pop17
	i32.store	0($pop18), $4
	i32.const	$push69=, 0
	i32.store	0($5), $pop69
	i32.const	$push19=, 16
	i32.add 	$push20=, $0, $pop19
	i32.const	$push68=, 0
	i32.store	0($pop20), $pop68
	i32.const	$push21=, 28
	i32.add 	$push22=, $0, $pop21
	i32.const	$push67=, 0
	i32.store	0($pop22), $pop67
	i32.const	$push23=, 20
	i32.add 	$push66=, $0, $pop23
	tee_local	$push65=, $1=, $pop66
	i32.load	$4=, 0($pop65)
	i32.const	$push64=, 0
	i32.store	0($1), $pop64
	i32.const	$push24=, -1
	i32.select	$2=, $2, $pop24, $4
.LBB100_9:
	end_block
	i32.load	$push72=, 0($0)
	tee_local	$push71=, $1=, $pop72
	i32.or  	$push25=, $pop71, $3
	i32.store	0($0), $pop25
	i32.const	$push26=, 32
	i32.and 	$1=, $1, $pop26
	block   	
	i32.eqz 	$push76=, $6
	br_if   	0, $pop76
	call    	__unlockfile@FUNCTION, $0
.LBB100_11:
	end_block
	i32.const	$push73=, -1
	i32.select	$2=, $pop73, $2, $1
.LBB100_12:
	end_block
	i32.const	$push33=, 0
	i32.const	$push31=, 288
	i32.add 	$push32=, $7, $pop31
	i32.store	__stack_pointer($pop33), $pop32
	copy_local	$push77=, $2
	.endfunc
.Lfunc_end100:
	.size	vfprintf, .Lfunc_end100-vfprintf

	.type	printf_core,@function
printf_core:
	.param  	i32, i32, i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32
	i32.const	$push620=, 0
	i32.const	$push617=, 0
	i32.load	$push618=, __stack_pointer($pop617)
	i32.const	$push619=, 8128
	i32.sub 	$push890=, $pop618, $pop619
	tee_local	$push889=, $39=, $pop890
	i32.store	__stack_pointer($pop620), $pop889
	i32.const	$push624=, 692
	i32.add 	$push625=, $39, $pop624
	i32.const	$push888=, 11
	i32.add 	$12=, $pop625, $pop888
	i32.const	$push626=, 704
	i32.add 	$push627=, $39, $pop626
	i32.const	$push887=, 8
	i32.or  	$11=, $pop627, $pop887
	i32.const	$push628=, 704
	i32.add 	$push629=, $39, $pop628
	i32.const	$push886=, 9
	i32.or  	$10=, $pop629, $pop886
	i32.const	$push11=, 7664
	i32.add 	$9=, $39, $pop11
	i32.const	$push885=, -2
	i32.const	$push630=, 704
	i32.add 	$push631=, $39, $pop630
	i32.sub 	$8=, $pop885, $pop631
	i32.const	$push632=, 692
	i32.add 	$push633=, $39, $pop632
	i32.const	$push884=, 12
	i32.add 	$7=, $pop633, $pop884
	i32.const	$push634=, 352
	i32.add 	$push635=, $39, $pop634
	i32.const	$push883=, 54
	i32.add 	$6=, $pop635, $pop883
	i32.const	$push636=, 352
	i32.add 	$push637=, $39, $pop636
	i32.const	$push882=, 55
	i32.add 	$5=, $pop637, $pop882
	i32.const	$30=, 0
	i32.const	$38=, 0
	i32.const	$32=, 0
.LBB101_1:
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	loop    	
	i32.add 	$38=, $30, $38
	copy_local	$push2131=, $1
	tee_local	$push2130=, $37=, $pop2131
	i32.load8_u	$push2129=, 0($pop2130)
	tee_local	$push2128=, $30=, $pop2129
	i32.eqz 	$push2155=, $pop2128
	br_if   	1, $pop2155
	copy_local	$1=, $37
	block   	
	block   	
	block   	
	i32.const	$push893=, 255
	i32.and 	$push892=, $30, $pop893
	tee_local	$push891=, $30=, $pop892
	i32.eqz 	$push2156=, $pop891
	br_if   	0, $pop2156
.LBB101_3:
	loop    	
	i32.const	$push894=, 37
	i32.eq  	$push12=, $30, $pop894
	br_if   	2, $pop12
	i32.const	$push900=, 1
	i32.add 	$push899=, $1, $pop900
	tee_local	$push898=, $1=, $pop899
	i32.load8_u	$push614=, 0($pop898)
	i32.const	$push897=, 255
	i32.and 	$push896=, $pop614, $pop897
	tee_local	$push895=, $30=, $pop896
	br_if   	0, $pop895
.LBB101_5:
	end_loop
	end_block
	copy_local	$30=, $1
	br      	1
.LBB101_6:
	end_block
	copy_local	$30=, $1
.LBB101_7:
	loop    	
	i32.const	$push902=, 1
	i32.add 	$push13=, $1, $pop902
	i32.load8_u	$push14=, 0($pop13)
	i32.const	$push901=, 37
	i32.ne  	$push15=, $pop14, $pop901
	br_if   	1, $pop15
	i32.const	$push907=, 1
	i32.add 	$30=, $30, $pop907
	i32.const	$push906=, 2
	i32.add 	$push905=, $1, $pop906
	tee_local	$push904=, $1=, $pop905
	i32.load8_u	$push16=, 0($pop904)
	i32.const	$push903=, 37
	i32.eq  	$push17=, $pop16, $pop903
	br_if   	0, $pop17
.LBB101_9:
	end_loop
	end_block
	i32.sub 	$push912=, $30, $37
	tee_local	$push911=, $30=, $pop912
	i32.const	$push910=, 2147483647
	i32.sub 	$push909=, $pop910, $38
	tee_local	$push908=, $13=, $pop909
	i32.gt_s	$push18=, $pop911, $pop908
	br_if   	2, $pop18
	block   	
	i32.eqz 	$push2157=, $0
	br_if   	0, $pop2157
	i32.load8_u	$push19=, 0($0)
	i32.const	$push913=, 32
	i32.and 	$push20=, $pop19, $pop913
	br_if   	0, $pop20
	i32.call	$drop=, __fwritex@FUNCTION, $37, $30, $0
.LBB101_13:
	end_block
	block   	
	br_if   	0, $30
	i32.const	$push920=, 1
	i32.add 	$36=, $1, $pop920
	i32.const	$27=, -1
	block   	
	i32.load8_s	$push919=, 1($1)
	tee_local	$push918=, $30=, $pop919
	i32.const	$push917=, -48
	i32.add 	$push916=, $pop918, $pop917
	tee_local	$push915=, $17=, $pop916
	i32.const	$push914=, 9
	i32.gt_u	$push21=, $pop915, $pop914
	br_if   	0, $pop21
	i32.const	$push928=, 3
	i32.add 	$push22=, $1, $pop928
	i32.load8_u	$push23=, 2($1)
	i32.const	$push927=, 36
	i32.eq  	$push926=, $pop23, $pop927
	tee_local	$push925=, $1=, $pop926
	i32.select	$push924=, $pop22, $36, $pop925
	tee_local	$push923=, $36=, $pop924
	i32.load8_u	$30=, 0($pop923)
	i32.const	$push922=, -1
	i32.select	$27=, $17, $pop922, $1
	i32.const	$push921=, 1
	i32.select	$32=, $pop921, $32, $1
.LBB101_16:
	end_block
	i32.const	$14=, 0
	block   	
	i32.const	$push934=, 24
	i32.shl 	$push24=, $30, $pop934
	i32.const	$push933=, 24
	i32.shr_s	$push25=, $pop24, $pop933
	i32.const	$push932=, -32
	i32.add 	$push931=, $pop25, $pop932
	tee_local	$push930=, $1=, $pop931
	i32.const	$push929=, 31
	i32.gt_u	$push26=, $pop930, $pop929
	br_if   	0, $pop26
	i32.const	$14=, 0
.LBB101_18:
	loop    	
	i32.const	$push936=, 1
	i32.shl 	$push27=, $pop936, $1
	i32.const	$push935=, 75913
	i32.and 	$push28=, $pop27, $pop935
	i32.eqz 	$push2158=, $pop28
	br_if   	1, $pop2158
	i32.const	$push949=, 1
	i32.const	$push948=, 24
	i32.shl 	$push29=, $30, $pop948
	i32.const	$push947=, 24
	i32.shr_s	$push30=, $pop29, $pop947
	i32.const	$push946=, -32
	i32.add 	$push31=, $pop30, $pop946
	i32.shl 	$push32=, $pop949, $pop31
	i32.or  	$14=, $pop32, $14
	i32.const	$push945=, 1
	i32.add 	$push944=, $36, $pop945
	tee_local	$push943=, $36=, $pop944
	i32.load8_s	$push942=, 0($pop943)
	tee_local	$push941=, $30=, $pop942
	i32.const	$push940=, -32
	i32.add 	$push939=, $pop941, $pop940
	tee_local	$push938=, $1=, $pop939
	i32.const	$push937=, 32
	i32.lt_u	$push33=, $pop938, $pop937
	br_if   	0, $pop33
.LBB101_20:
	end_loop
	end_block
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push951=, 255
	i32.and 	$push34=, $30, $pop951
	i32.const	$push950=, 42
	i32.ne  	$push35=, $pop34, $pop950
	br_if   	0, $pop35
	i32.load8_s	$push46=, 1($36)
	i32.const	$push955=, -48
	i32.add 	$push954=, $pop46, $pop955
	tee_local	$push953=, $1=, $pop954
	i32.const	$push952=, 9
	i32.gt_u	$push47=, $pop953, $pop952
	br_if   	1, $pop47
	i32.load8_u	$push48=, 2($36)
	i32.const	$push956=, 36
	i32.ne  	$push49=, $pop48, $pop956
	br_if   	1, $pop49
	i32.const	$push965=, 2
	i32.shl 	$push51=, $1, $pop965
	i32.add 	$push52=, $4, $pop51
	i32.const	$push964=, 10
	i32.store	0($pop52), $pop964
	i32.const	$push963=, 3
	i32.add 	$17=, $36, $pop963
	i32.const	$32=, 1
	i32.const	$push962=, 1
	i32.add 	$push53=, $36, $pop962
	i32.load8_s	$push54=, 0($pop53)
	i32.const	$push961=, 4
	i32.shl 	$push55=, $pop54, $pop961
	i32.add 	$push56=, $3, $pop55
	i32.const	$push960=, -768
	i32.add 	$push57=, $pop56, $pop960
	i32.load	$push959=, 0($pop57)
	tee_local	$push958=, $15=, $pop959
	i32.const	$push957=, -1
	i32.gt_s	$push58=, $pop958, $pop957
	br_if   	5, $pop58
	br      	2
.LBB101_24:
	end_block
	i32.const	$15=, 0
	i32.const	$push971=, 24
	i32.shl 	$push36=, $30, $pop971
	i32.const	$push970=, 24
	i32.shr_s	$push37=, $pop36, $pop970
	i32.const	$push969=, -48
	i32.add 	$push968=, $pop37, $pop969
	tee_local	$push967=, $30=, $pop968
	i32.const	$push966=, 9
	i32.gt_u	$push38=, $pop967, $pop966
	br_if   	2, $pop38
	i32.const	$1=, 0
	copy_local	$17=, $36
.LBB101_26:
	loop    	
	i32.const	$15=, -1
	block   	
	i32.const	$push972=, 214748364
	i32.gt_u	$push39=, $1, $pop972
	br_if   	0, $pop39
	i32.const	$push977=, -1
	i32.const	$push976=, 10
	i32.mul 	$push975=, $1, $pop976
	tee_local	$push974=, $1=, $pop975
	i32.add 	$push40=, $pop974, $30
	i32.const	$push973=, 2147483647
	i32.sub 	$push41=, $pop973, $1
	i32.gt_s	$push42=, $30, $pop41
	i32.select	$15=, $pop977, $pop40, $pop42
.LBB101_28:
	end_block
	copy_local	$1=, $15
	i32.const	$push984=, 1
	i32.add 	$push983=, $17, $pop984
	tee_local	$push982=, $17=, $pop983
	i32.load8_s	$push43=, 0($pop982)
	i32.const	$push981=, -48
	i32.add 	$push980=, $pop43, $pop981
	tee_local	$push979=, $30=, $pop980
	i32.const	$push978=, 10
	i32.lt_u	$push44=, $pop979, $pop978
	br_if   	0, $pop44
	end_loop
	i32.const	$push985=, 0
	i32.ge_s	$push45=, $15, $pop985
	br_if   	4, $pop45
	br      	8
.LBB101_30:
	end_block
	br_if   	19, $32
	i32.const	$push986=, 1
	i32.add 	$17=, $36, $pop986
	i32.eqz 	$push2159=, $0
	br_if   	2, $pop2159
	i32.load	$push992=, 0($2)
	tee_local	$push991=, $1=, $pop992
	i32.const	$push990=, 4
	i32.add 	$push50=, $pop991, $pop990
	i32.store	0($2), $pop50
	i32.const	$32=, 0
	i32.load	$push989=, 0($1)
	tee_local	$push988=, $15=, $pop989
	i32.const	$push987=, -1
	i32.gt_s	$push59=, $pop988, $pop987
	br_if   	3, $pop59
.LBB101_33:
	end_block
	i32.const	$push994=, 0
	i32.sub 	$15=, $pop994, $15
	i32.const	$push993=, 8192
	i32.or  	$14=, $14, $pop993
	br      	2
.LBB101_34:
	end_block
	copy_local	$17=, $36
	br      	1
.LBB101_35:
	end_block
	i32.const	$32=, 0
	i32.const	$15=, 0
.LBB101_36:
	end_block
	i32.const	$30=, 0
	i32.const	$36=, -1
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.load8_u	$push60=, 0($17)
	i32.const	$push995=, 46
	i32.ne  	$push61=, $pop60, $pop995
	br_if   	0, $pop61
	i32.load8_s	$push998=, 1($17)
	tee_local	$push997=, $36=, $pop998
	i32.const	$push996=, 42
	i32.ne  	$push62=, $pop997, $pop996
	br_if   	1, $pop62
	i32.load8_s	$push70=, 2($17)
	i32.const	$push1002=, -48
	i32.add 	$push1001=, $pop70, $pop1002
	tee_local	$push1000=, $1=, $pop1001
	i32.const	$push999=, 9
	i32.gt_u	$push71=, $pop1000, $pop999
	br_if   	2, $pop71
	i32.load8_u	$push72=, 3($17)
	i32.const	$push1003=, 36
	i32.ne  	$push73=, $pop72, $pop1003
	br_if   	2, $pop73
	i32.const	$push1009=, 2
	i32.shl 	$push75=, $1, $pop1009
	i32.add 	$push76=, $4, $pop75
	i32.const	$push1008=, 10
	i32.store	0($pop76), $pop1008
	i32.const	$push1007=, 4
	i32.add 	$1=, $17, $pop1007
	i32.const	$push1006=, 2
	i32.add 	$push77=, $17, $pop1006
	i32.load8_s	$push78=, 0($pop77)
	i32.const	$push1005=, 4
	i32.shl 	$push79=, $pop78, $pop1005
	i32.add 	$push80=, $3, $pop79
	i32.const	$push1004=, -768
	i32.add 	$push81=, $pop80, $pop1004
	i32.load	$36=, 0($pop81)
	br      	5
.LBB101_41:
	end_block
	copy_local	$1=, $17
	i32.const	$16=, 0
	br      	5
.LBB101_42:
	end_block
	i32.const	$push1014=, 1
	i32.add 	$1=, $17, $pop1014
	i32.const	$push1013=, -48
	i32.add 	$push1012=, $36, $pop1013
	tee_local	$push1011=, $31=, $pop1012
	i32.const	$push1010=, 9
	i32.gt_u	$push63=, $pop1011, $pop1010
	br_if   	1, $pop63
	i32.const	$17=, 0
.LBB101_44:
	loop    	
	i32.const	$36=, -1
	block   	
	i32.const	$push1015=, 214748364
	i32.gt_u	$push64=, $17, $pop1015
	br_if   	0, $pop64
	i32.const	$push1020=, -1
	i32.const	$push1019=, 10
	i32.mul 	$push1018=, $17, $pop1019
	tee_local	$push1017=, $17=, $pop1018
	i32.add 	$push65=, $pop1017, $31
	i32.const	$push1016=, 2147483647
	i32.sub 	$push66=, $pop1016, $17
	i32.gt_s	$push67=, $31, $pop66
	i32.select	$36=, $pop1020, $pop65, $pop67
.LBB101_46:
	end_block
	i32.const	$16=, 1
	copy_local	$17=, $36
	i32.const	$push1027=, 1
	i32.add 	$push1026=, $1, $pop1027
	tee_local	$push1025=, $1=, $pop1026
	i32.load8_s	$push68=, 0($pop1025)
	i32.const	$push1024=, -48
	i32.add 	$push1023=, $pop68, $pop1024
	tee_local	$push1022=, $31=, $pop1023
	i32.const	$push1021=, 10
	i32.lt_u	$push69=, $pop1022, $pop1021
	br_if   	0, $pop69
	br      	5
.LBB101_47:
	end_loop
	end_block
	br_if   	19, $32
	i32.const	$push1028=, 2
	i32.add 	$1=, $17, $pop1028
	i32.eqz 	$push2160=, $0
	br_if   	1, $pop2160
	i32.load	$push1031=, 0($2)
	tee_local	$push1030=, $17=, $pop1031
	i32.const	$push1029=, 4
	i32.add 	$push74=, $pop1030, $pop1029
	i32.store	0($2), $pop74
	i32.load	$36=, 0($17)
	br      	2
.LBB101_50:
	end_block
	i32.const	$16=, 1
	i32.const	$36=, 0
	br      	2
.LBB101_51:
	end_block
	i32.const	$36=, 0
.LBB101_52:
	end_block
	i32.const	$push1033=, 31
	i32.shr_u	$push82=, $36, $pop1033
	i32.const	$push1032=, 1
	i32.xor 	$16=, $pop82, $pop1032
.LBB101_53:
	end_block
	loop    	
	copy_local	$17=, $30
	i32.load8_s	$push83=, 0($1)
	i32.const	$push1037=, -65
	i32.add 	$push1036=, $pop83, $pop1037
	tee_local	$push1035=, $30=, $pop1036
	i32.const	$push1034=, 57
	i32.gt_u	$push84=, $pop1035, $pop1034
	br_if   	16, $pop84
	i32.const	$push1044=, 1
	i32.add 	$1=, $1, $pop1044
	i32.const	$push1043=, 58
	i32.mul 	$push85=, $17, $pop1043
	i32.add 	$push86=, $pop85, $30
	i32.const	$push1042=, states
	i32.add 	$push87=, $pop86, $pop1042
	i32.load8_u	$push1041=, 0($pop87)
	tee_local	$push1040=, $30=, $pop1041
	i32.const	$push1039=, -1
	i32.add 	$push88=, $pop1040, $pop1039
	i32.const	$push1038=, 8
	i32.lt_u	$push89=, $pop88, $pop1038
	br_if   	0, $pop89
	end_loop
	i32.eqz 	$push2161=, $30
	br_if   	15, $pop2161
	block   	
	block   	
	block   	
	block   	
	i32.const	$push1045=, 27
	i32.ne  	$push90=, $30, $pop1045
	br_if   	0, $pop90
	i32.const	$push1046=, -1
	i32.le_s	$push102=, $27, $pop1046
	br_if   	1, $pop102
	br      	19
.LBB101_58:
	end_block
	i32.const	$push1047=, 0
	i32.lt_s	$push91=, $27, $pop1047
	br_if   	1, $pop91
	i32.const	$push1054=, 2
	i32.shl 	$push92=, $27, $pop1054
	i32.add 	$push93=, $4, $pop92
	i32.store	0($pop93), $30
	i32.const	$push1053=, 4
	i32.shl 	$push94=, $27, $pop1053
	i32.add 	$push1052=, $3, $pop94
	tee_local	$push1051=, $30=, $pop1052
	i32.const	$push1050=, 12
	i32.add 	$push95=, $pop1051, $pop1050
	i32.load	$push96=, 0($pop95)
	i32.store	428($39), $pop96
	i32.const	$push1049=, 8
	i32.add 	$push97=, $30, $pop1049
	i32.load	$push98=, 0($pop97)
	i32.store	424($39), $pop98
	i32.const	$push1048=, 4
	i32.add 	$push99=, $30, $pop1048
	i32.load	$push100=, 0($pop99)
	i32.store	420($39), $pop100
	i32.load	$push101=, 0($30)
	i32.store	416($39), $pop101
.LBB101_60:
	end_block
	br_if   	1, $0
	i32.const	$30=, 0
	br      	2
.LBB101_62:
	end_block
	i32.eqz 	$push2162=, $0
	br_if   	8, $pop2162
	i32.const	$push880=, 416
	i32.add 	$push881=, $39, $pop880
	call    	pop_arg@FUNCTION, $pop881, $30, $2
.LBB101_64:
	end_block
	i32.const	$push1070=, -65537
	i32.and 	$push1069=, $14, $pop1070
	tee_local	$push1068=, $31=, $pop1069
	i32.const	$push1067=, 8192
	i32.and 	$push108=, $14, $pop1067
	i32.select	$18=, $pop1068, $14, $pop108
	i32.const	$26=, 0
	i32.const	$24=, .L.str.323
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push1066=, -1
	i32.add 	$push0=, $1, $pop1066
	i32.load8_s	$push1065=, 0($pop0)
	tee_local	$push1064=, $30=, $pop1065
	i32.const	$push1063=, -33
	i32.and 	$push103=, $pop1064, $pop1063
	i32.const	$push1062=, 15
	i32.and 	$push104=, $30, $pop1062
	i32.const	$push1061=, 3
	i32.eq  	$push105=, $pop104, $pop1061
	i32.select	$push106=, $pop103, $30, $pop105
	i32.select	$push1060=, $pop106, $30, $17
	tee_local	$push1059=, $29=, $pop1060
	i32.const	$push1058=, -65
	i32.add 	$push1057=, $pop1059, $pop1058
	tee_local	$push1056=, $30=, $pop1057
	i32.const	$push1055=, 55
	i32.gt_u	$push107=, $pop1056, $pop1055
	br_if   	0, $pop107
	copy_local	$14=, $5
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	br_table 	$30, 0, 32, 4, 32, 0, 0, 0, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 5, 32, 32, 32, 32, 12, 32, 32, 32, 32, 32, 32, 32, 32, 0, 32, 7, 1, 0, 0, 0, 32, 1, 32, 32, 32, 8, 9, 10, 11, 32, 32, 13, 32, 15, 32, 32, 12, 0
.LBB101_66:
	end_block
	block   	
	i32.const	$push1071=, -1
	i32.gt_s	$push109=, $36, $pop1071
	br_if   	0, $pop109
	br_if   	65, $16
.LBB101_68:
	end_block
	i64.load	$35=, 424($39)
	i64.load	$23=, 416($39)
	i32.const	$push1072=, 0
	i32.store	748($39), $pop1072
	block   	
	i32.call	$push110=, __signbitl@FUNCTION, $23, $35
	i32.eqz 	$push2163=, $pop110
	br_if   	0, $pop2163
	i64.const	$push1073=, -9223372036854775808
	i64.xor 	$35=, $35, $pop1073
	i32.const	$20=, 1
	i32.const	$19=, .L.str.2.325
	br      	3
.LBB101_70:
	end_block
	i32.const	$push1074=, 2048
	i32.and 	$push111=, $18, $pop1074
	br_if   	1, $pop111
	i32.const	$push1079=, .L.str.2.325+6
	i32.const	$push1078=, .L.str.2.325+1
	i32.const	$push1077=, 1
	i32.and 	$push1076=, $18, $pop1077
	tee_local	$push1075=, $20=, $pop1076
	i32.select	$19=, $pop1079, $pop1078, $pop1075
	br      	2
.LBB101_72:
	end_block
	i64.load	$push1082=, 416($39)
	tee_local	$push1081=, $35=, $pop1082
	i64.const	$push1080=, -1
	i64.le_s	$push515=, $pop1081, $pop1080
	br_if   	17, $pop515
	i32.const	$push1083=, 2048
	i32.and 	$push516=, $18, $pop1083
	br_if   	21, $pop516
	i32.const	$push1089=, .L.str.323+2
	i32.const	$push1088=, .L.str.323
	i32.const	$push1087=, 1
	i32.and 	$push1086=, $18, $pop1087
	tee_local	$push1085=, $26=, $pop1086
	i32.select	$24=, $pop1089, $pop1088, $pop1085
	i64.const	$push1084=, 4294967296
	i64.ge_u	$push518=, $35, $pop1084
	br_if   	22, $pop518
	br      	23
.LBB101_75:
	end_block
	i32.const	$20=, 1
	i32.const	$19=, .L.str.2.325+3
.LBB101_76:
	end_block
	block   	
	block   	
	i32.call	$push112=, __fpclassifyl@FUNCTION, $23, $35
	i32.const	$push1090=, 1
	i32.le_s	$push113=, $pop112, $pop1090
	br_if   	0, $pop113
	i32.const	$push662=, 320
	i32.add 	$push663=, $39, $pop662
	i32.const	$push664=, 748
	i32.add 	$push665=, $39, $pop664
	call    	frexpl@FUNCTION, $pop663, $23, $35, $pop665
	i32.const	$push666=, 304
	i32.add 	$push667=, $39, $pop666
	i64.load	$push1101=, 320($39)
	tee_local	$push1100=, $35=, $pop1101
	i64.load	$push1099=, 328($39)
	tee_local	$push1098=, $23=, $pop1099
	call    	__addtf3@FUNCTION, $pop667, $pop1100, $pop1098, $35, $23
	block   	
	i64.load	$push1097=, 304($39)
	tee_local	$push1096=, $35=, $pop1097
	i32.const	$push668=, 304
	i32.add 	$push669=, $39, $pop668
	i32.const	$push1095=, 8
	i32.add 	$push131=, $pop669, $pop1095
	i64.load	$push1094=, 0($pop131)
	tee_local	$push1093=, $23=, $pop1094
	i64.const	$push1092=, 0
	i64.const	$push1091=, 0
	i32.call	$push132=, __eqtf2@FUNCTION, $pop1096, $pop1093, $pop1092, $pop1091
	i32.eqz 	$push2164=, $pop132
	br_if   	0, $pop2164
	i32.load	$push133=, 748($39)
	i32.const	$push1102=, -1
	i32.add 	$push134=, $pop133, $pop1102
	i32.store	748($39), $pop134
.LBB101_79:
	end_block
	i32.const	$push1106=, 32
	i32.or  	$push1105=, $29, $pop1106
	tee_local	$push1104=, $21=, $pop1105
	i32.const	$push1103=, 97
	i32.ne  	$push135=, $pop1104, $pop1103
	br_if   	1, $pop135
	i32.const	$push1111=, 9
	i32.add 	$push378=, $19, $pop1111
	i32.const	$push1110=, 32
	i32.and 	$push1109=, $29, $pop1110
	tee_local	$push1108=, $37=, $pop1109
	i32.select	$24=, $pop378, $19, $pop1108
	i32.const	$push1107=, 26
	i32.gt_u	$push379=, $36, $pop1107
	br_if   	32, $pop379
	i32.const	$push1112=, 27
	i32.sub 	$push377=, $pop1112, $36
	i32.eqz 	$push2165=, $pop377
	br_if   	32, $pop2165
	i32.const	$push1113=, -27
	i32.add 	$30=, $36, $pop1113
	i64.const	$34=, 4612248968380809216
	i64.const	$33=, 0
.LBB101_83:
	loop    	
	i32.const	$push744=, 208
	i32.add 	$push745=, $39, $pop744
	i64.const	$push1119=, 0
	i64.const	$push1118=, 4612530443357519872
	call    	__multf3@FUNCTION, $pop745, $33, $34, $pop1119, $pop1118
	i32.const	$push746=, 208
	i32.add 	$push747=, $39, $pop746
	i32.const	$push1117=, 8
	i32.add 	$push380=, $pop747, $pop1117
	i64.load	$34=, 0($pop380)
	i64.load	$33=, 208($39)
	i32.const	$push1116=, 1
	i32.add 	$push1115=, $30, $pop1116
	tee_local	$push1114=, $30=, $pop1115
	br_if   	0, $pop1114
	end_loop
	i32.load8_u	$push381=, 0($24)
	i32.const	$push1120=, 45
	i32.ne  	$push382=, $pop381, $pop1120
	br_if   	31, $pop382
	i32.const	$push748=, 160
	i32.add 	$push749=, $39, $pop748
	i64.const	$push1124=, -9223372036854775808
	i64.xor 	$push387=, $23, $pop1124
	call    	__subtf3@FUNCTION, $pop749, $35, $pop387, $33, $34
	i32.const	$push752=, 144
	i32.add 	$push753=, $39, $pop752
	i64.load	$push390=, 160($39)
	i32.const	$push750=, 160
	i32.add 	$push751=, $39, $pop750
	i32.const	$push1123=, 8
	i32.add 	$push388=, $pop751, $pop1123
	i64.load	$push389=, 0($pop388)
	call    	__addtf3@FUNCTION, $pop753, $33, $34, $pop390, $pop389
	i32.const	$push754=, 144
	i32.add 	$push755=, $39, $pop754
	i32.const	$push1122=, 8
	i32.add 	$push391=, $pop755, $pop1122
	i64.load	$push392=, 0($pop391)
	i64.const	$push1121=, -9223372036854775808
	i64.xor 	$23=, $pop392, $pop1121
	i64.load	$35=, 144($39)
	br      	32
.LBB101_86:
	end_block
	i32.call	$16=, __unordtf2@FUNCTION, $23, $35, $23, $35
	i32.const	$push1126=, 3
	i32.add 	$37=, $20, $pop1126
	i32.const	$push1125=, 8192
	i32.and 	$push117=, $18, $pop1125
	br_if   	15, $pop117
	i32.le_s	$push118=, $15, $37
	br_if   	15, $pop118
	i32.const	$push842=, 432
	i32.add 	$push843=, $39, $pop842
	i32.const	$push1136=, 32
	i32.sub 	$push1135=, $15, $37
	tee_local	$push1134=, $31=, $pop1135
	i32.const	$push1133=, 256
	i32.const	$push1132=, 256
	i32.lt_u	$push1131=, $31, $pop1132
	tee_local	$push1130=, $30=, $pop1131
	i32.select	$push119=, $pop1134, $pop1133, $pop1130
	i32.call	$drop=, memset@FUNCTION, $pop843, $pop1136, $pop119
	i32.load	$push1129=, 0($0)
	tee_local	$push1128=, $36=, $pop1129
	i32.const	$push1127=, 32
	i32.and 	$17=, $pop1128, $pop1127
	br_if   	13, $30
	i32.eqz 	$30=, $17
	copy_local	$17=, $31
.LBB101_90:
	loop    	
	block   	
	i32.const	$push1137=, 1
	i32.and 	$push120=, $30, $pop1137
	i32.eqz 	$push2166=, $pop120
	br_if   	0, $pop2166
	i32.const	$push844=, 432
	i32.add 	$push845=, $39, $pop844
	i32.const	$push1138=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop845, $pop1138, $0
	i32.load	$36=, 0($0)
.LBB101_92:
	end_block
	i32.const	$push1145=, 32
	i32.and 	$push1144=, $36, $pop1145
	tee_local	$push1143=, $14=, $pop1144
	i32.eqz 	$30=, $pop1143
	i32.const	$push1142=, -256
	i32.add 	$push1141=, $17, $pop1142
	tee_local	$push1140=, $17=, $pop1141
	i32.const	$push1139=, 255
	i32.gt_u	$push121=, $pop1140, $pop1139
	br_if   	0, $pop121
	end_loop
	br_if   	15, $14
	i32.const	$push1146=, 255
	i32.and 	$31=, $31, $pop1146
	br      	14
.LBB101_95:
	end_block
	i32.const	$push1149=, 0
	i32.lt_s	$30=, $36, $pop1149
	i64.const	$push1148=, 0
	i64.const	$push1147=, 0
	i32.call	$push136=, __netf2@FUNCTION, $35, $23, $pop1148, $pop1147
	i32.eqz 	$push2167=, $pop136
	br_if   	17, $pop2167
	i32.const	$push764=, 288
	i32.add 	$push765=, $39, $pop764
	i64.const	$push1155=, 0
	i64.const	$push1154=, 4619285842798575616
	call    	__multf3@FUNCTION, $pop765, $35, $23, $pop1155, $pop1154
	i32.load	$push137=, 748($39)
	i32.const	$push1153=, -28
	i32.add 	$push1152=, $pop137, $pop1153
	tee_local	$push1151=, $31=, $pop1152
	i32.store	748($39), $pop1151
	i32.const	$push766=, 288
	i32.add 	$push767=, $39, $pop766
	i32.const	$push1150=, 8
	i32.add 	$push138=, $pop767, $pop1150
	i64.load	$23=, 0($pop138)
	i64.load	$35=, 288($39)
	br      	18
.LBB101_97:
	end_block
	i64.load	$35=, 416($39)
	i32.const	$push854=, 344
	i32.add 	$push855=, $39, $pop854
	i32.const	$push1157=, 4
	i32.add 	$push486=, $pop855, $pop1157
	i32.const	$push1156=, 0
	i32.store	0($pop486), $pop1156
	i64.store32	344($39), $35
	i32.const	$push856=, 344
	i32.add 	$push857=, $39, $pop856
	i32.store	416($39), $pop857
	i32.const	$36=, -1
	i32.const	$push858=, 344
	i32.add 	$push859=, $39, $pop858
	copy_local	$37=, $pop859
	br      	1
.LBB101_98:
	end_block
	i32.load	$37=, 416($39)
	i32.eqz 	$push2168=, $36
	br_if   	31, $pop2168
.LBB101_99:
	end_block
	i32.const	$30=, 0
	copy_local	$14=, $37
	i32.const	$17=, 0
.LBB101_100:
	block   	
	loop    	
	i32.load	$push1159=, 0($14)
	tee_local	$push1158=, $31=, $pop1159
	i32.eqz 	$push2169=, $pop1158
	br_if   	1, $pop2169
	i32.const	$push876=, 340
	i32.add 	$push877=, $39, $pop876
	i32.call	$push1162=, wctomb@FUNCTION, $pop877, $31
	tee_local	$push1161=, $17=, $pop1162
	i32.const	$push1160=, 0
	i32.lt_s	$push488=, $pop1161, $pop1160
	br_if   	1, $pop488
	i32.sub 	$push487=, $36, $30
	i32.gt_u	$push489=, $17, $pop487
	br_if   	1, $pop489
	i32.const	$push1165=, 4
	i32.add 	$14=, $14, $pop1165
	i32.add 	$push1164=, $17, $30
	tee_local	$push1163=, $30=, $pop1164
	i32.gt_u	$push490=, $36, $pop1163
	br_if   	0, $pop490
.LBB101_104:
	end_loop
	end_block
	i32.const	$push1166=, 0
	i32.lt_s	$push491=, $17, $pop1166
	br_if   	71, $pop491
	i32.const	$push1167=, 0
	i32.lt_s	$push492=, $30, $pop1167
	br_if   	58, $pop492
	i32.const	$push1170=, 73728
	i32.and 	$push1169=, $18, $pop1170
	tee_local	$push1168=, $16=, $pop1169
	br_if   	32, $pop1168
	br      	31
.LBB101_107:
	end_block
	i32.const	$push878=, 352
	i32.add 	$push879=, $39, $pop878
	i32.const	$push1191=, 54
	i32.add 	$push513=, $pop879, $pop1191
	i64.load	$push514=, 416($39)
	i64.store8	0($pop513), $pop514
	i32.const	$36=, 1
	copy_local	$37=, $6
	copy_local	$14=, $5
	copy_local	$18=, $31
	br      	24
.LBB101_108:
	end_block
	i32.call	$push507=, __errno_location@FUNCTION
	i32.load	$push508=, 0($pop507)
	i32.call	$37=, strerror@FUNCTION, $pop508
	br      	5
.LBB101_109:
	end_block
	i32.const	$push1195=, 255
	i32.and 	$push1194=, $17, $pop1195
	tee_local	$push1193=, $30=, $pop1194
	i32.const	$push1192=, 7
	i32.gt_u	$push550=, $pop1193, $pop1192
	br_if   	45, $pop550
	block   	
	br_table 	$30, 0, 42, 43, 44, 45, 46, 47, 48, 0
.LBB101_111:
	end_block
	i32.load	$push559=, 416($39)
	i32.store	0($pop559), $38
	i32.const	$30=, 0
	br      	52
.LBB101_112:
	end_block
	copy_local	$37=, $5
	block   	
	i64.load	$push1197=, 416($39)
	tee_local	$push1196=, $35=, $pop1197
	i64.eqz 	$push525=, $pop1196
	br_if   	0, $pop525
	copy_local	$37=, $5
.LBB101_114:
	loop    	
	i32.const	$push1206=, -1
	i32.add 	$push1205=, $37, $pop1206
	tee_local	$push1204=, $37=, $pop1205
	i64.const	$push1203=, 7
	i64.and 	$push526=, $35, $pop1203
	i64.const	$push1202=, 48
	i64.or  	$push527=, $pop526, $pop1202
	i64.store8	0($pop1204), $pop527
	i64.const	$push1201=, 3
	i64.shr_u	$push1200=, $35, $pop1201
	tee_local	$push1199=, $35=, $pop1200
	i64.const	$push1198=, 0
	i64.ne  	$push528=, $pop1199, $pop1198
	br_if   	0, $pop528
.LBB101_115:
	end_loop
	end_block
	i32.const	$push1207=, 8
	i32.and 	$push529=, $18, $pop1207
	br_if   	16, $pop529
	i32.const	$26=, 0
	i32.const	$24=, .L.str.323
	br_if   	18, $16
	br      	19
.LBB101_117:
	end_block
	i32.const	$push1210=, 8
	i32.const	$push1209=, 8
	i32.gt_u	$push531=, $36, $pop1209
	i32.select	$36=, $36, $pop1210, $pop531
	i32.const	$push1208=, 8
	i32.or  	$18=, $18, $pop1208
	i32.const	$29=, 120
.LBB101_118:
	end_block
	i32.const	$26=, 0
	i32.const	$24=, .L.str.323
	block   	
	i64.load	$push1212=, 416($39)
	tee_local	$push1211=, $35=, $pop1212
	i64.eqz 	$push532=, $pop1211
	br_if   	0, $pop532
	i32.const	$push1213=, 32
	i32.and 	$30=, $29, $pop1213
	copy_local	$37=, $5
.LBB101_120:
	loop    	
	i32.const	$push1222=, -1
	i32.add 	$push1221=, $37, $pop1222
	tee_local	$push1220=, $37=, $pop1221
	i32.wrap/i64	$push533=, $35
	i32.const	$push1219=, 15
	i32.and 	$push534=, $pop533, $pop1219
	i32.const	$push1218=, xdigits
	i32.add 	$push535=, $pop534, $pop1218
	i32.load8_u	$push536=, 0($pop535)
	i32.or  	$push537=, $pop536, $30
	i32.store8	0($pop1220), $pop537
	i64.const	$push1217=, 4
	i64.shr_u	$push1216=, $35, $pop1217
	tee_local	$push1215=, $35=, $pop1216
	i64.const	$push1214=, 0
	i64.ne  	$push538=, $pop1215, $pop1214
	br_if   	0, $pop538
	end_loop
	i32.const	$push1223=, 8
	i32.and 	$push540=, $18, $pop1223
	i32.eqz 	$push2170=, $pop540
	br_if   	16, $pop2170
	i64.load	$push539=, 416($39)
	i64.eqz 	$push541=, $pop539
	br_if   	16, $pop541
	i32.const	$push1225=, 4
	i32.shr_s	$push542=, $29, $pop1225
	i32.const	$push1224=, .L.str.323
	i32.add 	$24=, $pop542, $pop1224
	i32.const	$26=, 2
	br_if   	17, $16
	br      	18
.LBB101_124:
	end_block
	copy_local	$37=, $5
	br_if   	16, $16
	br      	17
.LBB101_125:
	end_block
	i32.load	$push1228=, 416($39)
	tee_local	$push1227=, $30=, $pop1228
	i32.const	$push1226=, .L.str.1.324
	i32.select	$37=, $pop1227, $pop1226, $30
.LBB101_126:
	end_block
	i32.const	$26=, 0
	i32.const	$push1233=, 2147483647
	i32.const	$push1232=, 0
	i32.lt_s	$push509=, $36, $pop1232
	i32.select	$push510=, $pop1233, $36, $pop509
	i32.call	$push1231=, strnlen@FUNCTION, $37, $pop510
	tee_local	$push1230=, $30=, $pop1231
	i32.add 	$14=, $37, $pop1230
	i32.const	$push1229=, -1
	i32.le_s	$push511=, $36, $pop1229
	br_if   	5, $pop511
	copy_local	$18=, $31
	copy_local	$36=, $30
	br      	17
.LBB101_128:
	end_block
	i32.const	$26=, 0
	i32.const	$24=, .L.str.323
	i64.load	$push1236=, 416($39)
	tee_local	$push1235=, $35=, $pop1236
	i64.const	$push1234=, 4294967296
	i64.ge_u	$push519=, $pop1235, $pop1234
	br_if   	8, $pop519
	br      	9
.LBB101_129:
	end_block
	br_if   	1, $17
.LBB101_130:
	end_block
	i32.const	$push846=, 432
	i32.add 	$push847=, $39, $pop846
	i32.call	$drop=, __fwritex@FUNCTION, $pop847, $31, $0
.LBB101_131:
	end_block
	block   	
	i32.load	$push1239=, 0($0)
	tee_local	$push1238=, $30=, $pop1239
	i32.const	$push1237=, 32
	i32.and 	$push122=, $pop1238, $pop1237
	br_if   	0, $pop122
	i32.call	$drop=, __fwritex@FUNCTION, $19, $20, $0
	i32.load	$30=, 0($0)
.LBB101_133:
	end_block
	block   	
	i32.const	$push1240=, 32
	i32.and 	$push123=, $30, $pop1240
	br_if   	0, $pop123
	i32.const	$push1249=, .L.str.5.328
	i32.const	$push1248=, .L.str.6.329
	i32.const	$push1247=, 32
	i32.and 	$push114=, $29, $pop1247
	i32.const	$push1246=, 5
	i32.shr_u	$push1245=, $pop114, $pop1246
	tee_local	$push1244=, $30=, $pop1245
	i32.select	$push116=, $pop1249, $pop1248, $pop1244
	i32.const	$push1243=, .L.str.3.326
	i32.const	$push1242=, .L.str.4.327
	i32.select	$push115=, $pop1243, $pop1242, $30
	i32.select	$push2=, $pop116, $pop115, $16
	i32.const	$push1241=, 3
	i32.call	$drop=, __fwritex@FUNCTION, $pop2, $pop1241, $0
.LBB101_135:
	end_block
	block   	
	i32.const	$push1251=, 73728
	i32.and 	$push124=, $18, $pop1251
	i32.const	$push1250=, 8192
	i32.ne  	$push125=, $pop124, $pop1250
	br_if   	0, $pop125
	i32.le_s	$push126=, $15, $37
	br_if   	0, $pop126
	i32.const	$push848=, 432
	i32.add 	$push849=, $39, $pop848
	i32.const	$push1261=, 32
	i32.sub 	$push1260=, $15, $37
	tee_local	$push1259=, $31=, $pop1260
	i32.const	$push1258=, 256
	i32.const	$push1257=, 256
	i32.lt_u	$push1256=, $31, $pop1257
	tee_local	$push1255=, $30=, $pop1256
	i32.select	$push127=, $pop1259, $pop1258, $pop1255
	i32.call	$drop=, memset@FUNCTION, $pop849, $pop1261, $pop127
	i32.load	$push1254=, 0($0)
	tee_local	$push1253=, $36=, $pop1254
	i32.const	$push1252=, 32
	i32.and 	$17=, $pop1253, $pop1252
	block   	
	block   	
	br_if   	0, $30
	i32.eqz 	$30=, $17
	copy_local	$17=, $31
.LBB101_139:
	loop    	
	block   	
	i32.const	$push1262=, 1
	i32.and 	$push128=, $30, $pop1262
	i32.eqz 	$push2171=, $pop128
	br_if   	0, $pop2171
	i32.const	$push850=, 432
	i32.add 	$push851=, $39, $pop850
	i32.const	$push1263=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop851, $pop1263, $0
	i32.load	$36=, 0($0)
.LBB101_141:
	end_block
	i32.const	$push1270=, 32
	i32.and 	$push1269=, $36, $pop1270
	tee_local	$push1268=, $14=, $pop1269
	i32.eqz 	$30=, $pop1268
	i32.const	$push1267=, -256
	i32.add 	$push1266=, $17, $pop1267
	tee_local	$push1265=, $17=, $pop1266
	i32.const	$push1264=, 255
	i32.gt_u	$push129=, $pop1265, $pop1264
	br_if   	0, $pop129
	end_loop
	br_if   	2, $14
	i32.const	$push1271=, 255
	i32.and 	$31=, $31, $pop1271
	br      	1
.LBB101_144:
	end_block
	br_if   	1, $17
.LBB101_145:
	end_block
	i32.const	$push852=, 432
	i32.add 	$push853=, $39, $pop852
	i32.call	$drop=, __fwritex@FUNCTION, $pop853, $31, $0
.LBB101_146:
	end_block
	i32.gt_s	$push130=, $15, $37
	i32.select	$30=, $15, $37, $pop130
	br      	42
.LBB101_147:
	end_block
	i64.const	$push1276=, 0
	i64.sub 	$push1275=, $pop1276, $35
	tee_local	$push1274=, $35=, $pop1275
	i64.store	416($39), $pop1274
	i32.const	$26=, 1
	i32.const	$24=, .L.str.323
	i64.const	$push1273=, 4294967296
	i64.ge_u	$push517=, $35, $pop1273
	br_if   	4, $pop517
	br      	5
.LBB101_148:
	end_block
	copy_local	$18=, $31
	copy_local	$36=, $30
	i32.load8_u	$push512=, 0($14)
	i32.eqz 	$push2172=, $pop512
	br_if   	11, $pop2172
	br      	44
.LBB101_149:
	end_block
	i32.load	$31=, 748($39)
.LBB101_150:
	end_block
	i32.const	$push1280=, 6
	i32.select	$28=, $pop1280, $36, $30
	i32.const	$push768=, 752
	i32.add 	$push769=, $39, $pop768
	i32.const	$push1279=, 0
	i32.lt_s	$push139=, $31, $pop1279
	i32.select	$push1278=, $pop769, $9, $pop139
	tee_local	$push1277=, $22=, $pop1278
	copy_local	$36=, $pop1277
.LBB101_151:
	loop    	
	i32.const	$push770=, 272
	i32.add 	$push771=, $39, $pop770
	i32.call	$push1294=, __fixunstfsi@FUNCTION, $35, $23
	tee_local	$push1293=, $30=, $pop1294
	call    	__floatunsitf@FUNCTION, $pop771, $pop1293
	i32.const	$push774=, 256
	i32.add 	$push775=, $39, $pop774
	i64.load	$push142=, 272($39)
	i32.const	$push772=, 272
	i32.add 	$push773=, $39, $pop772
	i32.const	$push1292=, 8
	i32.add 	$push140=, $pop773, $pop1292
	i64.load	$push141=, 0($pop140)
	call    	__subtf3@FUNCTION, $pop775, $35, $23, $pop142, $pop141
	i32.const	$push778=, 240
	i32.add 	$push779=, $39, $pop778
	i64.load	$push145=, 256($39)
	i32.const	$push776=, 256
	i32.add 	$push777=, $39, $pop776
	i32.const	$push1291=, 8
	i32.add 	$push143=, $pop777, $pop1291
	i64.load	$push144=, 0($pop143)
	i64.const	$push1290=, 0
	i64.const	$push1289=, 4619810130798575616
	call    	__multf3@FUNCTION, $pop779, $pop145, $pop144, $pop1290, $pop1289
	i32.store	0($36), $30
	i32.const	$push1288=, 4
	i32.add 	$36=, $36, $pop1288
	i64.load	$push1287=, 240($39)
	tee_local	$push1286=, $35=, $pop1287
	i32.const	$push780=, 240
	i32.add 	$push781=, $39, $pop780
	i32.const	$push1285=, 8
	i32.add 	$push146=, $pop781, $pop1285
	i64.load	$push1284=, 0($pop146)
	tee_local	$push1283=, $23=, $pop1284
	i64.const	$push1282=, 0
	i64.const	$push1281=, 0
	i32.call	$push147=, __netf2@FUNCTION, $pop1286, $pop1283, $pop1282, $pop1281
	br_if   	0, $pop147
	end_loop
	block   	
	block   	
	block   	
	i32.const	$push1295=, 1
	i32.lt_s	$push148=, $31, $pop1295
	br_if   	0, $pop148
	copy_local	$17=, $22
.LBB101_154:
	loop    	
	i32.const	$push1300=, 29
	i32.const	$push1299=, 29
	i32.lt_s	$push149=, $31, $pop1299
	i32.select	$14=, $31, $pop1300, $pop149
	block   	
	i32.const	$push1298=, -4
	i32.add 	$push1297=, $36, $pop1298
	tee_local	$push1296=, $30=, $pop1297
	i32.lt_u	$push150=, $pop1296, $17
	br_if   	0, $pop150
	i64.extend_u/i32	$23=, $14
	i64.const	$35=, 0
.LBB101_156:
	loop    	
	i64.load32_u	$push152=, 0($30)
	i64.shl 	$push153=, $pop152, $23
	i64.const	$push1308=, 4294967295
	i64.and 	$push151=, $35, $pop1308
	i64.add 	$push1307=, $pop153, $pop151
	tee_local	$push1306=, $35=, $pop1307
	i64.const	$push1305=, 1000000000
	i64.rem_u	$push154=, $pop1306, $pop1305
	i64.store32	0($30), $pop154
	i64.const	$push1304=, 1000000000
	i64.div_u	$35=, $35, $pop1304
	i32.const	$push1303=, -4
	i32.add 	$push1302=, $30, $pop1303
	tee_local	$push1301=, $30=, $pop1302
	i32.ge_u	$push155=, $pop1301, $17
	br_if   	0, $pop155
	end_loop
	i32.wrap/i64	$push1310=, $35
	tee_local	$push1309=, $30=, $pop1310
	i32.eqz 	$push2173=, $pop1309
	br_if   	0, $pop2173
	i32.const	$push1313=, -4
	i32.add 	$push1312=, $17, $pop1313
	tee_local	$push1311=, $17=, $pop1312
	i32.store	0($pop1311), $30
.LBB101_159:
	end_block
	block   	
	loop    	
	copy_local	$push1315=, $36
	tee_local	$push1314=, $30=, $pop1315
	i32.le_u	$push156=, $pop1314, $17
	br_if   	1, $pop156
	i32.const	$push1318=, -4
	i32.add 	$push1317=, $30, $pop1318
	tee_local	$push1316=, $36=, $pop1317
	i32.load	$push157=, 0($pop1316)
	i32.eqz 	$push2174=, $pop157
	br_if   	0, $pop2174
.LBB101_161:
	end_loop
	end_block
	copy_local	$36=, $30
	i32.sub 	$push1321=, $31, $14
	tee_local	$push1320=, $31=, $pop1321
	i32.const	$push1319=, 0
	i32.gt_s	$push158=, $pop1320, $pop1319
	br_if   	0, $pop158
	end_loop
	i32.store	748($39), $31
	i32.const	$push1322=, -1
	i32.gt_s	$push159=, $31, $pop1322
	br_if   	2, $pop159
	br      	1
.LBB101_163:
	end_block
	copy_local	$30=, $36
	copy_local	$17=, $22
	i32.const	$push1323=, -1
	i32.gt_s	$push160=, $31, $pop1323
	br_if   	1, $pop160
.LBB101_164:
	end_block
	i32.const	$push1327=, 45
	i32.add 	$push161=, $28, $pop1327
	i32.const	$push1326=, 9
	i32.div_u	$push162=, $pop161, $pop1326
	i32.const	$push1325=, 1
	i32.add 	$24=, $pop162, $pop1325
	block   	
	block   	
	i32.const	$push1324=, 102
	i32.ne  	$push163=, $21, $pop1324
	br_if   	0, $pop163
	i32.const	$push1328=, 2
	i32.shl 	$push181=, $24, $pop1328
	i32.add 	$25=, $22, $pop181
.LBB101_166:
	loop    	
	i32.const	$push1333=, 0
	i32.sub 	$push1332=, $pop1333, $31
	tee_local	$push1331=, $36=, $pop1332
	i32.const	$push1330=, 9
	i32.const	$push1329=, 9
	i32.lt_s	$push182=, $36, $pop1329
	i32.select	$16=, $pop1331, $pop1330, $pop182
	block   	
	block   	
	i32.ge_u	$push183=, $17, $30
	br_if   	0, $pop183
	i32.const	$push1336=, 1000000000
	i32.shr_u	$27=, $pop1336, $16
	i32.const	$push1335=, 1
	i32.shl 	$push186=, $pop1335, $16
	i32.const	$push1334=, -1
	i32.add 	$26=, $pop186, $pop1334
	i32.const	$14=, 0
	copy_local	$36=, $17
.LBB101_168:
	loop    	
	i32.load	$push1341=, 0($36)
	tee_local	$push1340=, $37=, $pop1341
	i32.shr_u	$push187=, $pop1340, $16
	i32.add 	$push188=, $pop187, $14
	i32.store	0($36), $pop188
	i32.and 	$push189=, $37, $26
	i32.mul 	$14=, $pop189, $27
	i32.const	$push1339=, 4
	i32.add 	$push1338=, $36, $pop1339
	tee_local	$push1337=, $36=, $pop1338
	i32.lt_u	$push190=, $pop1337, $30
	br_if   	0, $pop190
	end_loop
	i32.const	$push1342=, 4
	i32.add 	$push191=, $17, $pop1342
	i32.load	$push192=, 0($17)
	i32.select	$17=, $17, $pop191, $pop192
	i32.eqz 	$push2175=, $14
	br_if   	1, $pop2175
	i32.store	0($30), $14
	i32.const	$push1343=, 4
	i32.add 	$30=, $30, $pop1343
	br      	1
.LBB101_171:
	end_block
	i32.const	$push1344=, 4
	i32.add 	$push184=, $17, $pop1344
	i32.load	$push185=, 0($17)
	i32.select	$17=, $17, $pop184, $pop185
.LBB101_172:
	end_block
	i32.sub 	$push193=, $30, $22
	i32.const	$push1348=, 2
	i32.shr_s	$push194=, $pop193, $pop1348
	i32.gt_s	$push195=, $pop194, $24
	i32.select	$30=, $25, $30, $pop195
	i32.add 	$push1347=, $16, $31
	tee_local	$push1346=, $31=, $pop1347
	i32.const	$push1345=, 0
	i32.lt_s	$push196=, $pop1346, $pop1345
	br_if   	0, $pop196
	br      	2
.LBB101_173:
	end_loop
	end_block
	loop    	
	i32.const	$push1353=, 0
	i32.sub 	$push1352=, $pop1353, $31
	tee_local	$push1351=, $36=, $pop1352
	i32.const	$push1350=, 9
	i32.const	$push1349=, 9
	i32.lt_s	$push164=, $36, $pop1349
	i32.select	$16=, $pop1351, $pop1350, $pop164
	block   	
	block   	
	i32.ge_u	$push165=, $17, $30
	br_if   	0, $pop165
	i32.const	$push1356=, 1000000000
	i32.shr_u	$27=, $pop1356, $16
	i32.const	$push1355=, 1
	i32.shl 	$push168=, $pop1355, $16
	i32.const	$push1354=, -1
	i32.add 	$26=, $pop168, $pop1354
	i32.const	$14=, 0
	copy_local	$36=, $17
.LBB101_175:
	loop    	
	i32.load	$push1361=, 0($36)
	tee_local	$push1360=, $37=, $pop1361
	i32.shr_u	$push169=, $pop1360, $16
	i32.add 	$push170=, $pop169, $14
	i32.store	0($36), $pop170
	i32.and 	$push171=, $37, $26
	i32.mul 	$14=, $pop171, $27
	i32.const	$push1359=, 4
	i32.add 	$push1358=, $36, $pop1359
	tee_local	$push1357=, $36=, $pop1358
	i32.lt_u	$push172=, $pop1357, $30
	br_if   	0, $pop172
	end_loop
	i32.const	$push1362=, 4
	i32.add 	$push173=, $17, $pop1362
	i32.load	$push174=, 0($17)
	i32.select	$17=, $17, $pop173, $pop174
	i32.eqz 	$push2176=, $14
	br_if   	1, $pop2176
	i32.store	0($30), $14
	i32.const	$push1363=, 4
	i32.add 	$30=, $30, $pop1363
	br      	1
.LBB101_178:
	end_block
	i32.const	$push1364=, 4
	i32.add 	$push166=, $17, $pop1364
	i32.load	$push167=, 0($17)
	i32.select	$17=, $17, $pop166, $pop167
.LBB101_179:
	end_block
	i32.const	$push1369=, 2
	i32.shl 	$push175=, $24, $pop1369
	i32.add 	$push176=, $17, $pop175
	i32.sub 	$push177=, $30, $17
	i32.const	$push1368=, 2
	i32.shr_s	$push178=, $pop177, $pop1368
	i32.gt_s	$push179=, $pop178, $24
	i32.select	$30=, $pop176, $30, $pop179
	i32.add 	$push1367=, $16, $31
	tee_local	$push1366=, $31=, $pop1367
	i32.const	$push1365=, 0
	i32.lt_s	$push180=, $pop1366, $pop1365
	br_if   	0, $pop180
.LBB101_180:
	end_loop
	end_block
	i32.store	748($39), $31
.LBB101_181:
	end_block
	i32.const	$36=, 0
	block   	
	i32.ge_u	$push197=, $17, $30
	br_if   	0, $pop197
	i32.sub 	$push198=, $22, $17
	i32.const	$push1374=, 2
	i32.shr_s	$push199=, $pop198, $pop1374
	i32.const	$push1373=, 9
	i32.mul 	$36=, $pop199, $pop1373
	i32.load	$push1372=, 0($17)
	tee_local	$push1371=, $37=, $pop1372
	i32.const	$push1370=, 10
	i32.lt_u	$push200=, $pop1371, $pop1370
	br_if   	0, $pop200
	i32.const	$14=, 10
.LBB101_184:
	loop    	
	i32.const	$push1378=, 1
	i32.add 	$36=, $36, $pop1378
	i32.const	$push1377=, 10
	i32.mul 	$push1376=, $14, $pop1377
	tee_local	$push1375=, $14=, $pop1376
	i32.ge_u	$push201=, $37, $pop1375
	br_if   	0, $pop201
.LBB101_185:
	end_loop
	end_block
	block   	
	i32.const	$push1389=, 0
	i32.const	$push1388=, 102
	i32.ne  	$push204=, $21, $pop1388
	i32.select	$push205=, $36, $pop1389, $pop204
	i32.sub 	$push206=, $28, $pop205
	i32.const	$push1387=, 0
	i32.ne  	$push202=, $28, $pop1387
	i32.const	$push1386=, 103
	i32.eq  	$push1385=, $21, $pop1386
	tee_local	$push1384=, $16=, $pop1385
	i32.and 	$push203=, $pop202, $pop1384
	i32.sub 	$push1383=, $pop206, $pop203
	tee_local	$push1382=, $14=, $pop1383
	i32.sub 	$push207=, $30, $22
	i32.const	$push1381=, 2
	i32.shr_s	$push208=, $pop207, $pop1381
	i32.const	$push1380=, 9
	i32.mul 	$push209=, $pop208, $pop1380
	i32.const	$push1379=, -9
	i32.add 	$push210=, $pop209, $pop1379
	i32.ge_s	$push211=, $pop1382, $pop210
	br_if   	0, $pop211
	i32.const	$push1402=, 147456
	i32.add 	$push1401=, $14, $pop1402
	tee_local	$push1400=, $37=, $pop1401
	i32.const	$push1399=, 9
	i32.div_s	$push4=, $pop1400, $pop1399
	i32.const	$push1398=, 2
	i32.shl 	$push212=, $pop4, $pop1398
	i32.add 	$push1397=, $22, $pop212
	tee_local	$push1396=, $24=, $pop1397
	i32.const	$push1395=, -65532
	i32.add 	$31=, $pop1396, $pop1395
	i32.const	$14=, 10
	block   	
	i32.const	$push1394=, 9
	i32.rem_s	$push1393=, $37, $pop1394
	tee_local	$push1392=, $37=, $pop1393
	i32.const	$push1391=, 1
	i32.add 	$push213=, $pop1392, $pop1391
	i32.const	$push1390=, 8
	i32.gt_s	$push214=, $pop213, $pop1390
	br_if   	0, $pop214
	i32.const	$push1403=, 8
	i32.sub 	$37=, $pop1403, $37
	i32.const	$14=, 10
.LBB101_188:
	loop    	
	i32.const	$push1407=, 10
	i32.mul 	$14=, $14, $pop1407
	i32.const	$push1406=, -1
	i32.add 	$push1405=, $37, $pop1406
	tee_local	$push1404=, $37=, $pop1405
	br_if   	0, $pop1404
.LBB101_189:
	end_loop
	end_block
	i32.load	$push1412=, 0($31)
	tee_local	$push1411=, $27=, $pop1412
	i32.rem_u	$37=, $pop1411, $14
	block   	
	block   	
	i32.const	$push1410=, 4
	i32.add 	$push1409=, $31, $pop1410
	tee_local	$push1408=, $26=, $pop1409
	i32.ne  	$push215=, $pop1408, $30
	br_if   	0, $pop215
	i32.eqz 	$push2177=, $37
	br_if   	1, $pop2177
.LBB101_191:
	end_block
	block   	
	block   	
	i32.div_u	$push216=, $27, $14
	i32.const	$push1413=, 1
	i32.and 	$push217=, $pop216, $pop1413
	br_if   	0, $pop217
	i64.const	$35=, 4643211215818981376
	i64.const	$23=, 0
	i32.le_u	$push218=, $31, $17
	br_if   	1, $pop218
	i32.const	$push1414=, 1000000000
	i32.ne  	$push219=, $14, $pop1414
	br_if   	1, $pop219
	i32.const	$push1416=, -4
	i32.add 	$push220=, $31, $pop1416
	i32.load8_u	$push221=, 0($pop220)
	i32.const	$push1415=, 1
	i32.and 	$push222=, $pop221, $pop1415
	i32.eqz 	$push2178=, $pop222
	br_if   	1, $pop2178
.LBB101_195:
	end_block
	i64.const	$35=, 4643211215818981376
	i64.const	$23=, 1
.LBB101_196:
	end_block
	i64.const	$34=, 4611123068473966592
	block   	
	i32.const	$push1419=, 2
	i32.div_s	$push1418=, $14, $pop1419
	tee_local	$push1417=, $25=, $pop1418
	i32.lt_u	$push223=, $37, $pop1417
	br_if   	0, $pop223
	i64.const	$push1422=, 4611404543450677248
	i64.const	$push1421=, 4611545280939032576
	i32.eq  	$push224=, $37, $25
	i64.select	$push225=, $pop1422, $pop1421, $pop224
	i64.const	$push1420=, 4611545280939032576
	i32.eq  	$push226=, $26, $30
	i64.select	$34=, $pop225, $pop1420, $pop226
.LBB101_198:
	end_block
	block   	
	i32.eqz 	$push2179=, $20
	br_if   	0, $pop2179
	i32.load8_u	$push227=, 0($19)
	i32.const	$push1423=, 45
	i32.ne  	$push228=, $pop227, $pop1423
	br_if   	0, $pop228
	i64.const	$push1425=, -9223372036854775808
	i64.xor 	$34=, $34, $pop1425
	i64.const	$push1424=, -9223372036854775808
	i64.xor 	$35=, $35, $pop1424
.LBB101_201:
	end_block
	i32.const	$push838=, 224
	i32.add 	$push839=, $39, $pop838
	i64.const	$push1429=, 0
	call    	__addtf3@FUNCTION, $pop839, $23, $35, $pop1429, $34
	i32.sub 	$push1428=, $27, $37
	tee_local	$push1427=, $37=, $pop1428
	i32.store	0($31), $pop1427
	i64.load	$push231=, 224($39)
	i32.const	$push840=, 224
	i32.add 	$push841=, $39, $pop840
	i32.const	$push1426=, 8
	i32.add 	$push229=, $pop841, $pop1426
	i64.load	$push230=, 0($pop229)
	i32.call	$push232=, __eqtf2@FUNCTION, $pop231, $pop230, $23, $35
	i32.eqz 	$push2180=, $pop232
	br_if   	0, $pop2180
	i32.add 	$push1432=, $37, $14
	tee_local	$push1431=, $36=, $pop1432
	i32.store	0($31), $pop1431
	block   	
	i32.const	$push1430=, 1000000000
	i32.lt_u	$push233=, $36, $pop1430
	br_if   	0, $pop233
	i32.const	$push1433=, -65536
	i32.add 	$36=, $24, $pop1433
.LBB101_204:
	loop    	
	i32.const	$push1435=, 4
	i32.add 	$push234=, $36, $pop1435
	i32.const	$push1434=, 0
	i32.store	0($pop234), $pop1434
	block   	
	i32.ge_u	$push235=, $36, $17
	br_if   	0, $pop235
	i32.const	$push1439=, -4
	i32.add 	$push1438=, $17, $pop1439
	tee_local	$push1437=, $17=, $pop1438
	i32.const	$push1436=, 0
	i32.store	0($pop1437), $pop1436
.LBB101_206:
	end_block
	i32.load	$push236=, 0($36)
	i32.const	$push1444=, 1
	i32.add 	$push1443=, $pop236, $pop1444
	tee_local	$push1442=, $14=, $pop1443
	i32.store	0($36), $pop1442
	i32.const	$push1441=, -4
	i32.add 	$36=, $36, $pop1441
	i32.const	$push1440=, 999999999
	i32.gt_u	$push237=, $14, $pop1440
	br_if   	0, $pop237
	end_loop
	i32.const	$push1445=, 4
	i32.add 	$31=, $36, $pop1445
.LBB101_208:
	end_block
	i32.sub 	$push238=, $22, $17
	i32.const	$push1450=, 2
	i32.shr_s	$push239=, $pop238, $pop1450
	i32.const	$push1449=, 9
	i32.mul 	$36=, $pop239, $pop1449
	i32.load	$push1448=, 0($17)
	tee_local	$push1447=, $37=, $pop1448
	i32.const	$push1446=, 10
	i32.lt_u	$push240=, $pop1447, $pop1446
	br_if   	0, $pop240
	i32.const	$14=, 10
.LBB101_210:
	loop    	
	i32.const	$push1454=, 1
	i32.add 	$36=, $36, $pop1454
	i32.const	$push1453=, 10
	i32.mul 	$push1452=, $14, $pop1453
	tee_local	$push1451=, $14=, $pop1452
	i32.ge_u	$push241=, $37, $pop1451
	br_if   	0, $pop241
.LBB101_211:
	end_loop
	end_block
	i32.const	$push1457=, 4
	i32.add 	$push1456=, $31, $pop1457
	tee_local	$push1455=, $14=, $pop1456
	i32.gt_u	$push242=, $30, $14
	i32.select	$30=, $pop1455, $30, $pop242
.LBB101_212:
	end_block
	i32.const	$push1458=, 0
	i32.sub 	$31=, $pop1458, $36
.LBB101_213:
	block   	
	block   	
	block   	
	loop    	
	copy_local	$push1460=, $30
	tee_local	$push1459=, $14=, $pop1460
	i32.le_u	$push243=, $pop1459, $17
	br_if   	1, $pop243
	i32.const	$push1463=, -4
	i32.add 	$push1462=, $14, $pop1463
	tee_local	$push1461=, $30=, $pop1462
	i32.load	$push244=, 0($pop1461)
	i32.eqz 	$push2181=, $pop244
	br_if   	0, $pop2181
	end_loop
	i32.const	$27=, 1
	br_if   	1, $16
	br      	2
.LBB101_216:
	end_block
	i32.const	$27=, 0
	i32.eqz 	$push2182=, $16
	br_if   	1, $pop2182
.LBB101_217:
	end_block
	i32.eqz 	$push245=, $28
	i32.add 	$push1465=, $pop245, $28
	tee_local	$push1464=, $30=, $pop1465
	i32.le_s	$push246=, $pop1464, $36
	br_if   	13, $pop246
	i32.const	$push1466=, -4
	i32.lt_s	$push247=, $36, $pop1466
	br_if   	13, $pop247
	i32.const	$push1471=, -1
	i32.add 	$29=, $29, $pop1471
	i32.const	$push1470=, -1
	i32.add 	$push248=, $30, $pop1470
	i32.sub 	$28=, $pop248, $36
	i32.const	$push1469=, 8
	i32.and 	$push1468=, $18, $pop1469
	tee_local	$push1467=, $16=, $pop1468
	i32.eqz 	$push2183=, $pop1467
	br_if   	14, $pop2183
	br      	21
.LBB101_220:
	end_block
	i32.const	$push1472=, 8
	i32.and 	$16=, $18, $pop1472
	br      	20
.LBB101_221:
	end_block
	i32.const	$26=, 1
	i32.const	$24=, .L.str.323+1
	i64.const	$push1487=, 4294967296
	i64.lt_u	$push520=, $35, $pop1487
	br_if   	1, $pop520
.LBB101_222:
	end_block
	copy_local	$37=, $5
.LBB101_223:
	loop    	
	i32.const	$push1496=, -1
	i32.add 	$push1495=, $37, $pop1496
	tee_local	$push1494=, $37=, $pop1495
	i64.const	$push1493=, 10
	i64.rem_u	$push521=, $35, $pop1493
	i64.const	$push1492=, 48
	i64.or  	$push522=, $pop521, $pop1492
	i64.store8	0($pop1494), $pop522
	i64.const	$push1491=, 42949672959
	i64.gt_u	$30=, $35, $pop1491
	i64.const	$push1490=, 10
	i64.div_u	$push1489=, $35, $pop1490
	tee_local	$push1488=, $23=, $pop1489
	copy_local	$35=, $pop1488
	br_if   	0, $30
	br      	2
.LBB101_224:
	end_loop
	end_block
	copy_local	$23=, $35
	copy_local	$37=, $5
.LBB101_225:
	end_block
	i32.wrap/i64	$push1498=, $23
	tee_local	$push1497=, $30=, $pop1498
	i32.eqz 	$push2184=, $pop1497
	br_if   	1, $pop2184
.LBB101_226:
	loop    	
	i32.const	$push1505=, -1
	i32.add 	$push1504=, $37, $pop1505
	tee_local	$push1503=, $37=, $pop1504
	i32.const	$push1502=, 10
	i32.rem_u	$push523=, $30, $pop1502
	i32.const	$push1501=, 48
	i32.or  	$push524=, $pop523, $pop1501
	i32.store8	0($pop1503), $pop524
	i32.const	$push1500=, 9
	i32.gt_u	$17=, $30, $pop1500
	i32.const	$push1499=, 10
	i32.div_u	$push1=, $30, $pop1499
	copy_local	$30=, $pop1
	br_if   	0, $17
	br      	2
.LBB101_227:
	end_loop
	end_block
	i32.const	$push1509=, .L.str.323
	i32.const	$push1508=, .L.str.323+5
	i32.sub 	$push1507=, $5, $37
	tee_local	$push1506=, $30=, $pop1507
	i32.gt_s	$push530=, $36, $pop1506
	i32.select	$24=, $pop1509, $pop1508, $pop530
	i32.le_s	$26=, $36, $30
.LBB101_228:
	end_block
	i32.eqz 	$push2185=, $16
	br_if   	1, $pop2185
.LBB101_229:
	end_block
	i32.const	$push1510=, 0
	i32.lt_s	$push543=, $36, $pop1510
	br_if   	35, $pop543
.LBB101_230:
	end_block
	i32.const	$push1512=, -65537
	i32.and 	$push545=, $18, $pop1512
	i32.const	$push1511=, -1
	i32.gt_s	$push544=, $36, $pop1511
	i32.select	$18=, $pop545, $18, $pop544
	i64.load	$35=, 416($39)
	block   	
	br_if   	0, $36
	i64.eqz 	$push546=, $35
	i32.eqz 	$push2186=, $pop546
	br_if   	0, $pop2186
	copy_local	$37=, $5
	copy_local	$14=, $5
	i32.const	$36=, 0
	br      	2
.LBB101_233:
	end_block
	i64.eqz 	$push548=, $35
	i32.sub 	$push547=, $5, $37
	i32.add 	$push1514=, $pop548, $pop547
	tee_local	$push1513=, $30=, $pop1514
	i32.gt_s	$push549=, $36, $30
	i32.select	$36=, $36, $pop1513, $pop549
.LBB101_234:
	end_block
	copy_local	$14=, $5
.LBB101_235:
	end_block
	i32.sub 	$push1519=, $14, $37
	tee_local	$push1518=, $29=, $pop1519
	i32.lt_s	$push560=, $36, $29
	i32.select	$push1517=, $pop1518, $36, $pop560
	tee_local	$push1516=, $28=, $pop1517
	i32.const	$push1515=, 2147483647
	i32.sub 	$push561=, $pop1515, $26
	i32.gt_s	$push562=, $pop1516, $pop561
	br_if   	32, $pop562
	i32.add 	$push1523=, $26, $28
	tee_local	$push1522=, $27=, $pop1523
	i32.lt_s	$push563=, $15, $27
	i32.select	$push1521=, $pop1522, $15, $pop563
	tee_local	$push1520=, $30=, $pop1521
	i32.gt_s	$push564=, $pop1520, $13
	br_if   	32, $pop564
	block   	
	i32.const	$push1526=, 73728
	i32.and 	$push1525=, $18, $pop1526
	tee_local	$push1524=, $18=, $pop1525
	br_if   	0, $pop1524
	i32.ge_s	$push565=, $27, $15
	br_if   	0, $pop565
	i32.const	$push638=, 432
	i32.add 	$push639=, $39, $pop638
	i32.const	$push1536=, 32
	i32.sub 	$push1535=, $30, $27
	tee_local	$push1534=, $22=, $pop1535
	i32.const	$push1533=, 256
	i32.const	$push1532=, 256
	i32.lt_u	$push1531=, $22, $pop1532
	tee_local	$push1530=, $17=, $pop1531
	i32.select	$push566=, $pop1534, $pop1533, $pop1530
	i32.call	$drop=, memset@FUNCTION, $pop639, $pop1536, $pop566
	i32.load	$push1529=, 0($0)
	tee_local	$push1528=, $31=, $pop1529
	i32.const	$push1527=, 32
	i32.and 	$14=, $pop1528, $pop1527
	block   	
	block   	
	br_if   	0, $17
	i32.eqz 	$17=, $14
	copy_local	$14=, $22
.LBB101_241:
	loop    	
	block   	
	i32.const	$push1537=, 1
	i32.and 	$push567=, $17, $pop1537
	i32.eqz 	$push2187=, $pop567
	br_if   	0, $pop2187
	i32.const	$push640=, 432
	i32.add 	$push641=, $39, $pop640
	i32.const	$push1538=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop641, $pop1538, $0
	i32.load	$31=, 0($0)
.LBB101_243:
	end_block
	i32.const	$push1545=, 32
	i32.and 	$push1544=, $31, $pop1545
	tee_local	$push1543=, $16=, $pop1544
	i32.eqz 	$17=, $pop1543
	i32.const	$push1542=, -256
	i32.add 	$push1541=, $14, $pop1542
	tee_local	$push1540=, $14=, $pop1541
	i32.const	$push1539=, 255
	i32.gt_u	$push568=, $pop1540, $pop1539
	br_if   	0, $pop568
	end_loop
	br_if   	2, $16
	i32.const	$push1546=, 255
	i32.and 	$22=, $22, $pop1546
	br      	1
.LBB101_246:
	end_block
	br_if   	1, $14
.LBB101_247:
	end_block
	i32.const	$push642=, 432
	i32.add 	$push643=, $39, $pop642
	i32.call	$drop=, __fwritex@FUNCTION, $pop643, $22, $0
.LBB101_248:
	end_block
	block   	
	i32.load8_u	$push569=, 0($0)
	i32.const	$push1547=, 32
	i32.and 	$push570=, $pop569, $pop1547
	br_if   	0, $pop570
	i32.call	$drop=, __fwritex@FUNCTION, $24, $26, $0
.LBB101_250:
	end_block
	block   	
	i32.const	$push1548=, 65536
	i32.ne  	$push571=, $18, $pop1548
	br_if   	0, $pop571
	i32.ge_s	$push572=, $27, $15
	br_if   	0, $pop572
	i32.const	$push644=, 432
	i32.add 	$push645=, $39, $pop644
	i32.const	$push1558=, 48
	i32.sub 	$push1557=, $30, $27
	tee_local	$push1556=, $26=, $pop1557
	i32.const	$push1555=, 256
	i32.const	$push1554=, 256
	i32.lt_u	$push1553=, $26, $pop1554
	tee_local	$push1552=, $17=, $pop1553
	i32.select	$push573=, $pop1556, $pop1555, $pop1552
	i32.call	$drop=, memset@FUNCTION, $pop645, $pop1558, $pop573
	i32.load	$push1551=, 0($0)
	tee_local	$push1550=, $31=, $pop1551
	i32.const	$push1549=, 32
	i32.and 	$14=, $pop1550, $pop1549
	block   	
	block   	
	br_if   	0, $17
	i32.eqz 	$17=, $14
	copy_local	$14=, $26
.LBB101_254:
	loop    	
	block   	
	i32.const	$push1559=, 1
	i32.and 	$push574=, $17, $pop1559
	i32.eqz 	$push2188=, $pop574
	br_if   	0, $pop2188
	i32.const	$push646=, 432
	i32.add 	$push647=, $39, $pop646
	i32.const	$push1560=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop647, $pop1560, $0
	i32.load	$31=, 0($0)
.LBB101_256:
	end_block
	i32.const	$push1567=, 32
	i32.and 	$push1566=, $31, $pop1567
	tee_local	$push1565=, $16=, $pop1566
	i32.eqz 	$17=, $pop1565
	i32.const	$push1564=, -256
	i32.add 	$push1563=, $14, $pop1564
	tee_local	$push1562=, $14=, $pop1563
	i32.const	$push1561=, 255
	i32.gt_u	$push575=, $pop1562, $pop1561
	br_if   	0, $pop575
	end_loop
	br_if   	2, $16
	i32.const	$push1568=, 255
	i32.and 	$26=, $26, $pop1568
	br      	1
.LBB101_259:
	end_block
	br_if   	1, $14
.LBB101_260:
	end_block
	i32.const	$push648=, 432
	i32.add 	$push649=, $39, $pop648
	i32.call	$drop=, __fwritex@FUNCTION, $pop649, $26, $0
.LBB101_261:
	end_block
	block   	
	i32.ge_s	$push576=, $29, $36
	br_if   	0, $pop576
	i32.const	$push650=, 432
	i32.add 	$push651=, $39, $pop650
	i32.const	$push1578=, 48
	i32.sub 	$push1577=, $28, $29
	tee_local	$push1576=, $16=, $pop1577
	i32.const	$push1575=, 256
	i32.const	$push1574=, 256
	i32.lt_u	$push1573=, $16, $pop1574
	tee_local	$push1572=, $17=, $pop1573
	i32.select	$push577=, $pop1576, $pop1575, $pop1572
	i32.call	$drop=, memset@FUNCTION, $pop651, $pop1578, $pop577
	i32.load	$push1571=, 0($0)
	tee_local	$push1570=, $14=, $pop1571
	i32.const	$push1569=, 32
	i32.and 	$36=, $pop1570, $pop1569
	block   	
	block   	
	br_if   	0, $17
	i32.eqz 	$17=, $36
	copy_local	$36=, $16
.LBB101_264:
	loop    	
	block   	
	i32.const	$push1579=, 1
	i32.and 	$push578=, $17, $pop1579
	i32.eqz 	$push2189=, $pop578
	br_if   	0, $pop2189
	i32.const	$push652=, 432
	i32.add 	$push653=, $39, $pop652
	i32.const	$push1580=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop653, $pop1580, $0
	i32.load	$14=, 0($0)
.LBB101_266:
	end_block
	i32.const	$push1587=, 32
	i32.and 	$push1586=, $14, $pop1587
	tee_local	$push1585=, $31=, $pop1586
	i32.eqz 	$17=, $pop1585
	i32.const	$push1584=, -256
	i32.add 	$push1583=, $36, $pop1584
	tee_local	$push1582=, $36=, $pop1583
	i32.const	$push1581=, 255
	i32.gt_u	$push579=, $pop1582, $pop1581
	br_if   	0, $pop579
	end_loop
	br_if   	2, $31
	i32.const	$push1588=, 255
	i32.and 	$16=, $16, $pop1588
	br      	1
.LBB101_269:
	end_block
	br_if   	1, $36
.LBB101_270:
	end_block
	i32.const	$push654=, 432
	i32.add 	$push655=, $39, $pop654
	i32.call	$drop=, __fwritex@FUNCTION, $pop655, $16, $0
.LBB101_271:
	end_block
	block   	
	i32.load8_u	$push580=, 0($0)
	i32.const	$push1589=, 32
	i32.and 	$push581=, $pop580, $pop1589
	br_if   	0, $pop581
	i32.call	$drop=, __fwritex@FUNCTION, $37, $29, $0
.LBB101_273:
	end_block
	i32.const	$push1590=, 8192
	i32.ne  	$push582=, $18, $pop1590
	br_if   	29, $pop582
	i32.ge_s	$push583=, $27, $15
	br_if   	29, $pop583
	i32.const	$push656=, 432
	i32.add 	$push657=, $39, $pop656
	i32.const	$push1600=, 32
	i32.sub 	$push1599=, $30, $27
	tee_local	$push1598=, $37=, $pop1599
	i32.const	$push1597=, 256
	i32.const	$push1596=, 256
	i32.lt_u	$push1595=, $37, $pop1596
	tee_local	$push1594=, $17=, $pop1595
	i32.select	$push584=, $pop1598, $pop1597, $pop1594
	i32.call	$drop=, memset@FUNCTION, $pop657, $pop1600, $pop584
	i32.load	$push1593=, 0($0)
	tee_local	$push1592=, $36=, $pop1593
	i32.const	$push1591=, 32
	i32.and 	$15=, $pop1592, $pop1591
	block   	
	block   	
	br_if   	0, $17
	i32.eqz 	$17=, $15
	copy_local	$15=, $37
.LBB101_277:
	loop    	
	block   	
	i32.const	$push1601=, 1
	i32.and 	$push585=, $17, $pop1601
	i32.eqz 	$push2190=, $pop585
	br_if   	0, $pop2190
	i32.const	$push658=, 432
	i32.add 	$push659=, $39, $pop658
	i32.const	$push1602=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop659, $pop1602, $0
	i32.load	$36=, 0($0)
.LBB101_279:
	end_block
	i32.const	$push1609=, 32
	i32.and 	$push1608=, $36, $pop1609
	tee_local	$push1607=, $14=, $pop1608
	i32.eqz 	$17=, $pop1607
	i32.const	$push1606=, -256
	i32.add 	$push1605=, $15, $pop1606
	tee_local	$push1604=, $15=, $pop1605
	i32.const	$push1603=, 255
	i32.gt_u	$push586=, $pop1604, $pop1603
	br_if   	0, $pop586
	end_loop
	br_if   	31, $14
	i32.const	$push1610=, 255
	i32.and 	$37=, $37, $pop1610
	br      	1
.LBB101_282:
	end_block
	br_if   	30, $15
.LBB101_283:
	end_block
	i32.const	$push660=, 432
	i32.add 	$push661=, $39, $pop660
	i32.call	$drop=, __fwritex@FUNCTION, $pop661, $37, $0
	br      	29
.LBB101_284:
	end_block
	i32.const	$push756=, 192
	i32.add 	$push757=, $39, $pop756
	call    	__addtf3@FUNCTION, $pop757, $35, $23, $33, $34
	i32.const	$push760=, 176
	i32.add 	$push761=, $39, $pop760
	i64.load	$push385=, 192($39)
	i32.const	$push758=, 192
	i32.add 	$push759=, $39, $pop758
	i32.const	$push1612=, 8
	i32.add 	$push383=, $pop759, $pop1612
	i64.load	$push384=, 0($pop383)
	call    	__subtf3@FUNCTION, $pop761, $pop385, $pop384, $33, $34
	i32.const	$push762=, 176
	i32.add 	$push763=, $39, $pop762
	i32.const	$push1611=, 8
	i32.add 	$push386=, $pop763, $pop1611
	i64.load	$23=, 0($pop386)
	i64.load	$35=, 176($39)
.LBB101_285:
	end_block
	i32.load	$push1620=, 748($39)
	tee_local	$push1619=, $31=, $pop1620
	i32.const	$push1618=, 31
	i32.shr_s	$push1617=, $31, $pop1618
	tee_local	$push1616=, $30=, $pop1617
	i32.add 	$push393=, $pop1619, $pop1616
	i32.xor 	$push1615=, $pop393, $30
	tee_local	$push1614=, $17=, $pop1615
	i64.extend_s/i32	$34=, $pop1614
	i32.const	$30=, 0
	block   	
	block   	
	block   	
	i32.const	$push1613=, -1
	i32.le_s	$push394=, $17, $pop1613
	br_if   	0, $pop394
	copy_local	$push615=, $34
	i32.wrap/i64	$push1622=, $pop615
	tee_local	$push1621=, $17=, $pop1622
	br_if   	1, $pop1621
	br      	2
.LBB101_287:
	end_block
	i32.const	$30=, 0
.LBB101_288:
	loop    	
	i32.add 	$push395=, $12, $30
	i64.const	$push1629=, 10
	i64.rem_u	$push396=, $34, $pop1629
	i64.const	$push1628=, 48
	i64.or  	$push397=, $pop396, $pop1628
	i64.store8	0($pop395), $pop397
	i32.const	$push1627=, -1
	i32.add 	$30=, $30, $pop1627
	i64.const	$push1626=, 42949672959
	i64.gt_u	$17=, $34, $pop1626
	i64.const	$push1625=, 10
	i64.div_u	$push1624=, $34, $pop1625
	tee_local	$push1623=, $33=, $pop1624
	copy_local	$34=, $pop1623
	br_if   	0, $17
	end_loop
	i32.wrap/i64	$push1631=, $33
	tee_local	$push1630=, $17=, $pop1631
	i32.eqz 	$push2191=, $pop1630
	br_if   	1, $pop2191
.LBB101_290:
	end_block
	loop    	
	i32.const	$push742=, 692
	i32.add 	$push743=, $39, $pop742
	i32.add 	$push400=, $pop743, $30
	i32.const	$push1637=, 11
	i32.add 	$push401=, $pop400, $pop1637
	i32.const	$push1636=, 10
	i32.rem_u	$push398=, $17, $pop1636
	i32.const	$push1635=, 48
	i32.or  	$push399=, $pop398, $pop1635
	i32.store8	0($pop401), $pop399
	i32.const	$push1634=, -1
	i32.add 	$30=, $30, $pop1634
	i32.const	$push1633=, 9
	i32.gt_u	$14=, $17, $pop1633
	i32.const	$push1632=, 10
	i32.div_u	$push3=, $17, $pop1632
	copy_local	$17=, $pop3
	br_if   	0, $14
.LBB101_291:
	end_loop
	end_block
	i32.add 	$17=, $7, $30
	block   	
	br_if   	0, $30
	i32.const	$push1641=, -1
	i32.add 	$push1640=, $17, $pop1641
	tee_local	$push1639=, $17=, $pop1640
	i32.const	$push1638=, 48
	i32.store8	0($pop1639), $pop1638
.LBB101_293:
	end_block
	i32.const	$push1651=, 2
	i32.or  	$16=, $20, $pop1651
	i32.const	$push1650=, -2
	i32.add 	$push1649=, $17, $pop1650
	tee_local	$push1648=, $27=, $pop1649
	i32.const	$push1647=, 15
	i32.add 	$push402=, $29, $pop1647
	i32.store8	0($pop1648), $pop402
	i32.const	$push1646=, -1
	i32.add 	$push403=, $17, $pop1646
	i32.const	$push1645=, 30
	i32.shr_u	$push404=, $31, $pop1645
	i32.const	$push1644=, 2
	i32.and 	$push405=, $pop404, $pop1644
	i32.const	$push1643=, 43
	i32.add 	$push406=, $pop405, $pop1643
	i32.store8	0($pop403), $pop406
	block   	
	i32.const	$push1642=, 8
	i32.and 	$push407=, $18, $pop1642
	br_if   	0, $pop407
	i32.const	$push1652=, 1
	i32.lt_s	$push422=, $36, $pop1652
	br_if   	6, $pop422
	i32.const	$push710=, 704
	i32.add 	$push711=, $39, $pop710
	copy_local	$30=, $pop711
.LBB101_296:
	loop    	
	i32.const	$push712=, 80
	i32.add 	$push713=, $39, $pop712
	i32.call	$push1664=, __fixtfsi@FUNCTION, $35, $23
	tee_local	$push1663=, $17=, $pop1664
	call    	__floatsitf@FUNCTION, $pop713, $pop1663
	i32.const	$push716=, 64
	i32.add 	$push717=, $39, $pop716
	i64.load	$push425=, 80($39)
	i32.const	$push714=, 80
	i32.add 	$push715=, $39, $pop714
	i32.const	$push1662=, 8
	i32.add 	$push423=, $pop715, $pop1662
	i64.load	$push424=, 0($pop423)
	call    	__subtf3@FUNCTION, $pop717, $35, $23, $pop425, $pop424
	i32.const	$push720=, 48
	i32.add 	$push721=, $39, $pop720
	i64.load	$push428=, 64($39)
	i32.const	$push718=, 64
	i32.add 	$push719=, $39, $pop718
	i32.const	$push1661=, 8
	i32.add 	$push426=, $pop719, $pop1661
	i64.load	$push427=, 0($pop426)
	i64.const	$push1660=, 0
	i64.const	$push1659=, 4612530443357519872
	call    	__multf3@FUNCTION, $pop721, $pop428, $pop427, $pop1660, $pop1659
	i32.const	$push1658=, xdigits
	i32.add 	$push429=, $17, $pop1658
	i32.load8_u	$push430=, 0($pop429)
	i32.or  	$push431=, $pop430, $37
	i32.store8	0($30), $pop431
	i32.const	$push724=, 48
	i32.add 	$push725=, $39, $pop724
	i32.const	$push1657=, 8
	i32.add 	$push434=, $pop725, $pop1657
	i64.load	$23=, 0($pop434)
	i64.load	$35=, 48($39)
	block   	
	i32.const	$push1656=, 1
	i32.add 	$push1655=, $30, $pop1656
	tee_local	$push1654=, $17=, $pop1655
	i32.const	$push722=, 704
	i32.add 	$push723=, $39, $pop722
	i32.sub 	$push432=, $pop1654, $pop723
	i32.const	$push1653=, 1
	i32.ne  	$push433=, $pop432, $pop1653
	br_if   	0, $pop433
	i32.const	$push1667=, 1
	i32.add 	$push435=, $30, $pop1667
	i32.const	$push1666=, 46
	i32.store8	0($pop435), $pop1666
	i32.const	$push1665=, 2
	i32.add 	$17=, $30, $pop1665
.LBB101_298:
	end_block
	copy_local	$30=, $17
	i64.const	$push1669=, 0
	i64.const	$push1668=, 0
	i32.call	$push436=, __netf2@FUNCTION, $35, $23, $pop1669, $pop1668
	br_if   	0, $pop436
	br      	8
.LBB101_299:
	end_loop
	end_block
	i32.const	$push726=, 704
	i32.add 	$push727=, $39, $pop726
	copy_local	$30=, $pop727
.LBB101_300:
	loop    	
	i32.const	$push728=, 128
	i32.add 	$push729=, $39, $pop728
	i32.call	$push1681=, __fixtfsi@FUNCTION, $35, $23
	tee_local	$push1680=, $17=, $pop1681
	call    	__floatsitf@FUNCTION, $pop729, $pop1680
	i32.const	$push732=, 112
	i32.add 	$push733=, $39, $pop732
	i64.load	$push410=, 128($39)
	i32.const	$push730=, 128
	i32.add 	$push731=, $39, $pop730
	i32.const	$push1679=, 8
	i32.add 	$push408=, $pop731, $pop1679
	i64.load	$push409=, 0($pop408)
	call    	__subtf3@FUNCTION, $pop733, $35, $23, $pop410, $pop409
	i32.const	$push736=, 96
	i32.add 	$push737=, $39, $pop736
	i64.load	$push413=, 112($39)
	i32.const	$push734=, 112
	i32.add 	$push735=, $39, $pop734
	i32.const	$push1678=, 8
	i32.add 	$push411=, $pop735, $pop1678
	i64.load	$push412=, 0($pop411)
	i64.const	$push1677=, 0
	i64.const	$push1676=, 4612530443357519872
	call    	__multf3@FUNCTION, $pop737, $pop413, $pop412, $pop1677, $pop1676
	i32.const	$push1675=, xdigits
	i32.add 	$push414=, $17, $pop1675
	i32.load8_u	$push415=, 0($pop414)
	i32.or  	$push416=, $pop415, $37
	i32.store8	0($30), $pop416
	i32.const	$push740=, 96
	i32.add 	$push741=, $39, $pop740
	i32.const	$push1674=, 8
	i32.add 	$push419=, $pop741, $pop1674
	i64.load	$23=, 0($pop419)
	i64.load	$35=, 96($39)
	block   	
	i32.const	$push1673=, 1
	i32.add 	$push1672=, $30, $pop1673
	tee_local	$push1671=, $17=, $pop1672
	i32.const	$push738=, 704
	i32.add 	$push739=, $39, $pop738
	i32.sub 	$push417=, $pop1671, $pop739
	i32.const	$push1670=, 1
	i32.ne  	$push418=, $pop417, $pop1670
	br_if   	0, $pop418
	i32.const	$push1684=, 1
	i32.add 	$push420=, $30, $pop1684
	i32.const	$push1683=, 46
	i32.store8	0($pop420), $pop1683
	i32.const	$push1682=, 2
	i32.add 	$17=, $30, $pop1682
.LBB101_302:
	end_block
	copy_local	$30=, $17
	i64.const	$push1686=, 0
	i64.const	$push1685=, 0
	i32.call	$push421=, __netf2@FUNCTION, $35, $23, $pop1686, $pop1685
	br_if   	0, $pop421
	br      	7
.LBB101_303:
	end_loop
	end_block
	i32.const	$push1691=, -1
	i32.add 	$28=, $30, $pop1691
	i32.const	$push1690=, -2
	i32.add 	$29=, $29, $pop1690
	i32.const	$push1689=, 8
	i32.and 	$push1688=, $18, $pop1689
	tee_local	$push1687=, $16=, $pop1688
	br_if   	7, $pop1687
.LBB101_304:
	end_block
	i32.const	$30=, 9
	block   	
	i32.eqz 	$push2192=, $27
	br_if   	0, $pop2192
	i32.const	$push1694=, -4
	i32.add 	$push249=, $14, $pop1694
	i32.load	$push1693=, 0($pop249)
	tee_local	$push1692=, $16=, $pop1693
	i32.eqz 	$push2193=, $pop1692
	br_if   	0, $pop2193
	i32.const	$30=, 0
	i32.const	$push1695=, 10
	i32.rem_u	$push250=, $16, $pop1695
	br_if   	0, $pop250
	i32.const	$37=, 10
	i32.const	$30=, 0
.LBB101_308:
	loop    	
	i32.const	$push1699=, 1
	i32.add 	$30=, $30, $pop1699
	i32.const	$push1698=, 10
	i32.mul 	$push1697=, $37, $pop1698
	tee_local	$push1696=, $37=, $pop1697
	i32.rem_u	$push251=, $16, $pop1696
	i32.eqz 	$push2194=, $pop251
	br_if   	0, $pop2194
.LBB101_309:
	end_loop
	end_block
	i32.sub 	$push252=, $14, $22
	i32.const	$push1704=, 2
	i32.shr_s	$push253=, $pop252, $pop1704
	i32.const	$push1703=, 9
	i32.mul 	$push254=, $pop253, $pop1703
	i32.const	$push1702=, -9
	i32.add 	$37=, $pop254, $pop1702
	i32.const	$push1701=, 32
	i32.or  	$push255=, $29, $pop1701
	i32.const	$push1700=, 102
	i32.ne  	$push256=, $pop255, $pop1700
	br_if   	5, $pop256
	i32.const	$16=, 0
	i32.sub 	$push1710=, $37, $30
	tee_local	$push1709=, $30=, $pop1710
	i32.const	$push1708=, 0
	i32.const	$push1707=, 0
	i32.gt_s	$push260=, $30, $pop1707
	i32.select	$push1706=, $pop1709, $pop1708, $pop260
	tee_local	$push1705=, $30=, $pop1706
	i32.lt_s	$push261=, $28, $30
	i32.select	$28=, $28, $pop1705, $pop261
	br      	6
.LBB101_311:
	end_block
	i32.const	$30=, 0
	i32.const	$push1748=, 73728
	i32.and 	$push1747=, $18, $pop1748
	tee_local	$push1746=, $16=, $pop1747
	br_if   	1, $pop1746
.LBB101_312:
	end_block
	i32.le_s	$push493=, $15, $30
	br_if   	0, $pop493
	i32.const	$push860=, 432
	i32.add 	$push861=, $39, $pop860
	i32.const	$push1180=, 32
	i32.sub 	$push1179=, $15, $30
	tee_local	$push1178=, $27=, $pop1179
	i32.const	$push1177=, 256
	i32.const	$push1176=, 256
	i32.lt_u	$push1175=, $27, $pop1176
	tee_local	$push1174=, $17=, $pop1175
	i32.select	$push494=, $pop1178, $pop1177, $pop1174
	i32.call	$drop=, memset@FUNCTION, $pop861, $pop1180, $pop494
	i32.load	$push1173=, 0($0)
	tee_local	$push1172=, $14=, $pop1173
	i32.const	$push1171=, 32
	i32.and 	$36=, $pop1172, $pop1171
	block   	
	block   	
	br_if   	0, $17
	i32.eqz 	$17=, $36
	copy_local	$36=, $27
.LBB101_315:
	loop    	
	block   	
	i32.const	$push1181=, 1
	i32.and 	$push495=, $17, $pop1181
	i32.eqz 	$push2195=, $pop495
	br_if   	0, $pop2195
	i32.const	$push862=, 432
	i32.add 	$push863=, $39, $pop862
	i32.const	$push1182=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop863, $pop1182, $0
	i32.load	$14=, 0($0)
.LBB101_317:
	end_block
	i32.const	$push1189=, 32
	i32.and 	$push1188=, $14, $pop1189
	tee_local	$push1187=, $31=, $pop1188
	i32.eqz 	$17=, $pop1187
	i32.const	$push1186=, -256
	i32.add 	$push1185=, $36, $pop1186
	tee_local	$push1184=, $36=, $pop1185
	i32.const	$push1183=, 255
	i32.gt_u	$push496=, $pop1184, $pop1183
	br_if   	0, $pop496
	end_loop
	br_if   	2, $31
	i32.const	$push1190=, 255
	i32.and 	$27=, $27, $pop1190
	br      	1
.LBB101_320:
	end_block
	br_if   	1, $36
.LBB101_321:
	end_block
	i32.const	$push864=, 432
	i32.add 	$push865=, $39, $pop864
	i32.call	$drop=, __fwritex@FUNCTION, $pop865, $27, $0
.LBB101_322:
	end_block
	block   	
	i32.eqz 	$push2196=, $30
	br_if   	0, $pop2196
	i32.const	$17=, 0
.LBB101_324:
	loop    	
	i32.load	$push1718=, 0($37)
	tee_local	$push1717=, $36=, $pop1718
	i32.eqz 	$push2197=, $pop1717
	br_if   	1, $pop2197
	i32.const	$push872=, 340
	i32.add 	$push873=, $39, $pop872
	i32.call	$push1722=, wctomb@FUNCTION, $pop873, $36
	tee_local	$push1721=, $36=, $pop1722
	i32.add 	$push1720=, $pop1721, $17
	tee_local	$push1719=, $17=, $pop1720
	i32.gt_u	$push497=, $pop1719, $30
	br_if   	1, $pop497
	block   	
	i32.load8_u	$push498=, 0($0)
	i32.const	$push1723=, 32
	i32.and 	$push499=, $pop498, $pop1723
	br_if   	0, $pop499
	i32.const	$push874=, 340
	i32.add 	$push875=, $39, $pop874
	i32.call	$drop=, __fwritex@FUNCTION, $pop875, $36, $0
.LBB101_328:
	end_block
	i32.const	$push1724=, 4
	i32.add 	$37=, $37, $pop1724
	i32.lt_u	$push500=, $17, $30
	br_if   	0, $pop500
.LBB101_329:
	end_loop
	end_block
	block   	
	i32.const	$push1725=, 8192
	i32.ne  	$push501=, $16, $pop1725
	br_if   	0, $pop501
	i32.le_s	$push502=, $15, $30
	br_if   	0, $pop502
	i32.const	$push866=, 432
	i32.add 	$push867=, $39, $pop866
	i32.const	$push1735=, 32
	i32.sub 	$push1734=, $15, $30
	tee_local	$push1733=, $31=, $pop1734
	i32.const	$push1732=, 256
	i32.const	$push1731=, 256
	i32.lt_u	$push1730=, $31, $pop1731
	tee_local	$push1729=, $17=, $pop1730
	i32.select	$push503=, $pop1733, $pop1732, $pop1729
	i32.call	$drop=, memset@FUNCTION, $pop867, $pop1735, $pop503
	i32.load	$push1728=, 0($0)
	tee_local	$push1727=, $14=, $pop1728
	i32.const	$push1726=, 32
	i32.and 	$36=, $pop1727, $pop1726
	block   	
	block   	
	br_if   	0, $17
	i32.eqz 	$17=, $36
	copy_local	$36=, $31
.LBB101_333:
	loop    	
	block   	
	i32.const	$push1736=, 1
	i32.and 	$push504=, $17, $pop1736
	i32.eqz 	$push2198=, $pop504
	br_if   	0, $pop2198
	i32.const	$push868=, 432
	i32.add 	$push869=, $39, $pop868
	i32.const	$push1737=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop869, $pop1737, $0
	i32.load	$14=, 0($0)
.LBB101_335:
	end_block
	i32.const	$push1744=, 32
	i32.and 	$push1743=, $14, $pop1744
	tee_local	$push1742=, $37=, $pop1743
	i32.eqz 	$17=, $pop1742
	i32.const	$push1741=, -256
	i32.add 	$push1740=, $36, $pop1741
	tee_local	$push1739=, $36=, $pop1740
	i32.const	$push1738=, 255
	i32.gt_u	$push505=, $pop1739, $pop1738
	br_if   	0, $pop505
	end_loop
	br_if   	2, $37
	i32.const	$push1745=, 255
	i32.and 	$31=, $31, $pop1745
	br      	1
.LBB101_338:
	end_block
	br_if   	1, $36
.LBB101_339:
	end_block
	i32.const	$push870=, 432
	i32.add 	$push871=, $39, $pop870
	i32.call	$drop=, __fwritex@FUNCTION, $pop871, $31, $0
.LBB101_340:
	end_block
	i32.gt_s	$push506=, $15, $30
	i32.select	$30=, $15, $30, $pop506
	br      	22
.LBB101_341:
	end_block
	i32.const	$push670=, 704
	i32.add 	$push671=, $39, $pop670
	copy_local	$17=, $pop671
.LBB101_342:
	loop    	
	i32.const	$push672=, 32
	i32.add 	$push673=, $39, $pop672
	i32.call	$push1762=, __fixtfsi@FUNCTION, $35, $23
	tee_local	$push1761=, $14=, $pop1762
	call    	__floatsitf@FUNCTION, $pop673, $pop1761
	i32.const	$push676=, 16
	i32.add 	$push677=, $39, $pop676
	i64.load	$push439=, 32($39)
	i32.const	$push674=, 32
	i32.add 	$push675=, $39, $pop674
	i32.const	$push1760=, 8
	i32.add 	$push437=, $pop675, $pop1760
	i64.load	$push438=, 0($pop437)
	call    	__subtf3@FUNCTION, $pop677, $35, $23, $pop439, $pop438
	i64.load	$push442=, 16($39)
	i32.const	$push678=, 16
	i32.add 	$push679=, $39, $pop678
	i32.const	$push1759=, 8
	i32.add 	$push440=, $pop679, $pop1759
	i64.load	$push441=, 0($pop440)
	i64.const	$push1758=, 0
	i64.const	$push1757=, 4612530443357519872
	call    	__multf3@FUNCTION, $39, $pop442, $pop441, $pop1758, $pop1757
	copy_local	$push1756=, $17
	tee_local	$push1755=, $30=, $pop1756
	i32.const	$push1754=, xdigits
	i32.add 	$push443=, $14, $pop1754
	i32.load8_u	$push444=, 0($pop443)
	i32.or  	$push445=, $pop444, $37
	i32.store8	0($pop1755), $pop445
	i32.const	$push1753=, 8
	i32.add 	$push448=, $39, $pop1753
	i64.load	$23=, 0($pop448)
	i64.load	$35=, 0($39)
	block   	
	i32.const	$push1752=, 1
	i32.add 	$push1751=, $30, $pop1752
	tee_local	$push1750=, $17=, $pop1751
	i32.const	$push680=, 704
	i32.add 	$push681=, $39, $pop680
	i32.sub 	$push446=, $pop1750, $pop681
	i32.const	$push1749=, 1
	i32.ne  	$push447=, $pop446, $pop1749
	br_if   	0, $pop447
	i64.const	$push1764=, 0
	i64.const	$push1763=, 0
	i32.call	$push449=, __eqtf2@FUNCTION, $35, $23, $pop1764, $pop1763
	i32.eqz 	$push2199=, $pop449
	br_if   	0, $pop2199
	i32.const	$push1767=, 1
	i32.add 	$push450=, $30, $pop1767
	i32.const	$push1766=, 46
	i32.store8	0($pop450), $pop1766
	i32.const	$push1765=, 2
	i32.add 	$17=, $30, $pop1765
.LBB101_345:
	end_block
	i64.const	$push1769=, 0
	i64.const	$push1768=, 0
	i32.call	$push451=, __netf2@FUNCTION, $35, $23, $pop1769, $pop1768
	br_if   	0, $pop451
.LBB101_346:
	end_loop
	end_block
	i32.const	$30=, -1
	i32.const	$push1772=, 2147483645
	i32.sub 	$push452=, $pop1772, $16
	i32.sub 	$push1771=, $7, $27
	tee_local	$push1770=, $31=, $pop1771
	i32.sub 	$push453=, $pop452, $pop1770
	i32.lt_s	$push454=, $pop453, $36
	br_if   	19, $pop454
	i32.add 	$push459=, $31, $16
	i32.const	$push1780=, 2
	i32.add 	$push455=, $36, $pop1780
	i32.const	$push682=, 704
	i32.add 	$push683=, $39, $pop682
	i32.sub 	$push1779=, $17, $pop683
	tee_local	$push1778=, $26=, $pop1779
	i32.add 	$push456=, $8, $17
	i32.lt_s	$push457=, $pop456, $36
	i32.select	$push458=, $pop455, $pop1778, $pop457
	i32.select	$push1777=, $pop458, $26, $36
	tee_local	$push1776=, $29=, $pop1777
	i32.add 	$37=, $pop459, $pop1776
	i32.const	$push1775=, 73728
	i32.and 	$push1774=, $18, $pop1775
	tee_local	$push1773=, $18=, $pop1774
	br_if   	4, $pop1773
	i32.le_s	$push460=, $15, $37
	br_if   	4, $pop460
	i32.const	$push684=, 432
	i32.add 	$push685=, $39, $pop684
	i32.const	$push1790=, 32
	i32.sub 	$push1789=, $15, $37
	tee_local	$push1788=, $28=, $pop1789
	i32.const	$push1787=, 256
	i32.const	$push1786=, 256
	i32.lt_u	$push1785=, $28, $pop1786
	tee_local	$push1784=, $30=, $pop1785
	i32.select	$push461=, $pop1788, $pop1787, $pop1784
	i32.call	$drop=, memset@FUNCTION, $pop685, $pop1790, $pop461
	i32.load	$push1783=, 0($0)
	tee_local	$push1782=, $36=, $pop1783
	i32.const	$push1781=, 32
	i32.and 	$17=, $pop1782, $pop1781
	br_if   	2, $30
	i32.eqz 	$30=, $17
	copy_local	$17=, $28
.LBB101_351:
	loop    	
	block   	
	i32.const	$push1791=, 1
	i32.and 	$push462=, $30, $pop1791
	i32.eqz 	$push2200=, $pop462
	br_if   	0, $pop2200
	i32.const	$push686=, 432
	i32.add 	$push687=, $39, $pop686
	i32.const	$push1792=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop687, $pop1792, $0
	i32.load	$36=, 0($0)
.LBB101_353:
	end_block
	i32.const	$push1799=, 32
	i32.and 	$push1798=, $36, $pop1799
	tee_local	$push1797=, $14=, $pop1798
	i32.eqz 	$30=, $pop1797
	i32.const	$push1796=, -256
	i32.add 	$push1795=, $17, $pop1796
	tee_local	$push1794=, $17=, $pop1795
	i32.const	$push1793=, 255
	i32.gt_u	$push463=, $pop1794, $pop1793
	br_if   	0, $pop463
	end_loop
	br_if   	4, $14
	i32.const	$push1800=, 255
	i32.and 	$28=, $28, $pop1800
	br      	3
.LBB101_356:
	end_block
	i32.const	$16=, 0
	i32.add 	$push257=, $37, $36
	i32.sub 	$push1806=, $pop257, $30
	tee_local	$push1805=, $30=, $pop1806
	i32.const	$push1804=, 0
	i32.const	$push1803=, 0
	i32.gt_s	$push258=, $30, $pop1803
	i32.select	$push1802=, $pop1805, $pop1804, $pop258
	tee_local	$push1801=, $30=, $pop1802
	i32.lt_s	$push259=, $28, $30
	i32.select	$28=, $28, $pop1801, $pop259
.LBB101_357:
	end_block
	i32.const	$30=, -1
	i32.const	$push1478=, 2147483646
	i32.or  	$push1477=, $28, $16
	tee_local	$push1476=, $24=, $pop1477
	i32.const	$push1475=, 0
	i32.ne  	$push1474=, $pop1476, $pop1475
	tee_local	$push1473=, $37=, $pop1474
	i32.sub 	$push262=, $pop1478, $pop1473
	i32.gt_s	$push263=, $28, $pop262
	br_if   	17, $pop263
	i32.add 	$push264=, $28, $37
	i32.const	$push1483=, 1
	i32.add 	$26=, $pop264, $pop1483
	block   	
	i32.const	$push1482=, 32
	i32.or  	$push5=, $29, $pop1482
	i32.const	$push1481=, 102
	i32.ne  	$push1480=, $pop5, $pop1481
	tee_local	$push1479=, $21=, $pop1480
	br_if   	0, $pop1479
	i32.const	$push1484=, 2147483647
	i32.sub 	$push280=, $pop1484, $26
	i32.gt_s	$push281=, $36, $pop280
	br_if   	18, $pop281
	i32.const	$push1486=, 0
	i32.const	$push1485=, 0
	i32.gt_s	$push282=, $36, $pop1485
	i32.select	$36=, $36, $pop1486, $pop282
	br      	7
.LBB101_361:
	end_block
	i32.const	$push1714=, 0
	i32.lt_s	$push265=, $36, $pop1714
	i32.select	$push1713=, $31, $36, $pop265
	tee_local	$push1712=, $30=, $pop1713
	i64.extend_s/i32	$35=, $pop1712
	i32.const	$push1711=, -1
	i32.le_s	$push266=, $30, $pop1711
	br_if   	3, $pop266
	copy_local	$37=, $7
	copy_local	$push616=, $35
	i32.wrap/i64	$push1716=, $pop616
	tee_local	$push1715=, $30=, $pop1716
	br_if   	4, $pop1715
	br      	5
.LBB101_363:
	end_block
	br_if   	1, $17
.LBB101_364:
	end_block
	i32.const	$push688=, 432
	i32.add 	$push689=, $39, $pop688
	i32.call	$drop=, __fwritex@FUNCTION, $pop689, $28, $0
.LBB101_365:
	end_block
	block   	
	i32.load8_u	$push464=, 0($0)
	i32.const	$push1807=, 32
	i32.and 	$push465=, $pop464, $pop1807
	br_if   	0, $pop465
	i32.call	$drop=, __fwritex@FUNCTION, $24, $16, $0
.LBB101_367:
	end_block
	block   	
	i32.const	$push1808=, 65536
	i32.ne  	$push466=, $18, $pop1808
	br_if   	0, $pop466
	i32.le_s	$push467=, $15, $37
	br_if   	0, $pop467
	i32.const	$push690=, 432
	i32.add 	$push691=, $39, $pop690
	i32.const	$push1818=, 48
	i32.sub 	$push1817=, $15, $37
	tee_local	$push1816=, $16=, $pop1817
	i32.const	$push1815=, 256
	i32.const	$push1814=, 256
	i32.lt_u	$push1813=, $16, $pop1814
	tee_local	$push1812=, $30=, $pop1813
	i32.select	$push468=, $pop1816, $pop1815, $pop1812
	i32.call	$drop=, memset@FUNCTION, $pop691, $pop1818, $pop468
	i32.load	$push1811=, 0($0)
	tee_local	$push1810=, $36=, $pop1811
	i32.const	$push1809=, 32
	i32.and 	$17=, $pop1810, $pop1809
	block   	
	block   	
	br_if   	0, $30
	i32.eqz 	$30=, $17
	copy_local	$17=, $16
.LBB101_371:
	loop    	
	block   	
	i32.const	$push1819=, 1
	i32.and 	$push469=, $30, $pop1819
	i32.eqz 	$push2201=, $pop469
	br_if   	0, $pop2201
	i32.const	$push692=, 432
	i32.add 	$push693=, $39, $pop692
	i32.const	$push1820=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop693, $pop1820, $0
	i32.load	$36=, 0($0)
.LBB101_373:
	end_block
	i32.const	$push1827=, 32
	i32.and 	$push1826=, $36, $pop1827
	tee_local	$push1825=, $14=, $pop1826
	i32.eqz 	$30=, $pop1825
	i32.const	$push1824=, -256
	i32.add 	$push1823=, $17, $pop1824
	tee_local	$push1822=, $17=, $pop1823
	i32.const	$push1821=, 255
	i32.gt_u	$push470=, $pop1822, $pop1821
	br_if   	0, $pop470
	end_loop
	br_if   	2, $14
	i32.const	$push1828=, 255
	i32.and 	$16=, $16, $pop1828
	br      	1
.LBB101_376:
	end_block
	br_if   	1, $17
.LBB101_377:
	end_block
	i32.const	$push694=, 432
	i32.add 	$push695=, $39, $pop694
	i32.call	$drop=, __fwritex@FUNCTION, $pop695, $16, $0
.LBB101_378:
	end_block
	block   	
	i32.load8_u	$push471=, 0($0)
	i32.const	$push1829=, 32
	i32.and 	$push472=, $pop471, $pop1829
	br_if   	0, $pop472
	i32.const	$push696=, 704
	i32.add 	$push697=, $39, $pop696
	i32.call	$drop=, __fwritex@FUNCTION, $pop697, $26, $0
.LBB101_380:
	end_block
	block   	
	i32.sub 	$push1832=, $29, $26
	tee_local	$push1831=, $16=, $pop1832
	i32.const	$push1830=, 1
	i32.lt_s	$push473=, $pop1831, $pop1830
	br_if   	0, $pop473
	i32.const	$push698=, 432
	i32.add 	$push699=, $39, $pop698
	i32.const	$push1840=, 48
	i32.const	$push1839=, 256
	i32.const	$push1838=, 256
	i32.lt_u	$push1837=, $16, $pop1838
	tee_local	$push1836=, $30=, $pop1837
	i32.select	$push474=, $16, $pop1839, $pop1836
	i32.call	$drop=, memset@FUNCTION, $pop699, $pop1840, $pop474
	i32.load	$push1835=, 0($0)
	tee_local	$push1834=, $36=, $pop1835
	i32.const	$push1833=, 32
	i32.and 	$17=, $pop1834, $pop1833
	block   	
	block   	
	br_if   	0, $30
	i32.eqz 	$30=, $17
	copy_local	$17=, $16
.LBB101_383:
	loop    	
	block   	
	i32.const	$push1841=, 1
	i32.and 	$push475=, $30, $pop1841
	i32.eqz 	$push2202=, $pop475
	br_if   	0, $pop2202
	i32.const	$push700=, 432
	i32.add 	$push701=, $39, $pop700
	i32.const	$push1842=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop701, $pop1842, $0
	i32.load	$36=, 0($0)
.LBB101_385:
	end_block
	i32.const	$push1849=, 32
	i32.and 	$push1848=, $36, $pop1849
	tee_local	$push1847=, $14=, $pop1848
	i32.eqz 	$30=, $pop1847
	i32.const	$push1846=, -256
	i32.add 	$push1845=, $17, $pop1846
	tee_local	$push1844=, $17=, $pop1845
	i32.const	$push1843=, 255
	i32.gt_u	$push476=, $pop1844, $pop1843
	br_if   	0, $pop476
	end_loop
	br_if   	2, $14
	i32.const	$push1850=, 255
	i32.and 	$16=, $16, $pop1850
	br      	1
.LBB101_388:
	end_block
	br_if   	1, $17
.LBB101_389:
	end_block
	i32.const	$push702=, 432
	i32.add 	$push703=, $39, $pop702
	i32.call	$drop=, __fwritex@FUNCTION, $pop703, $16, $0
.LBB101_390:
	end_block
	block   	
	i32.load8_u	$push477=, 0($0)
	i32.const	$push1851=, 32
	i32.and 	$push478=, $pop477, $pop1851
	br_if   	0, $pop478
	i32.call	$drop=, __fwritex@FUNCTION, $27, $31, $0
.LBB101_392:
	end_block
	block   	
	i32.const	$push1852=, 8192
	i32.ne  	$push479=, $18, $pop1852
	br_if   	0, $pop479
	i32.le_s	$push480=, $15, $37
	br_if   	0, $pop480
	i32.const	$push704=, 432
	i32.add 	$push705=, $39, $pop704
	i32.const	$push1862=, 32
	i32.sub 	$push1861=, $15, $37
	tee_local	$push1860=, $31=, $pop1861
	i32.const	$push1859=, 256
	i32.const	$push1858=, 256
	i32.lt_u	$push1857=, $31, $pop1858
	tee_local	$push1856=, $30=, $pop1857
	i32.select	$push481=, $pop1860, $pop1859, $pop1856
	i32.call	$drop=, memset@FUNCTION, $pop705, $pop1862, $pop481
	i32.load	$push1855=, 0($0)
	tee_local	$push1854=, $36=, $pop1855
	i32.const	$push1853=, 32
	i32.and 	$17=, $pop1854, $pop1853
	block   	
	block   	
	br_if   	0, $30
	i32.eqz 	$30=, $17
	copy_local	$17=, $31
.LBB101_396:
	loop    	
	block   	
	i32.const	$push1863=, 1
	i32.and 	$push482=, $30, $pop1863
	i32.eqz 	$push2203=, $pop482
	br_if   	0, $pop2203
	i32.const	$push706=, 432
	i32.add 	$push707=, $39, $pop706
	i32.const	$push1864=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop707, $pop1864, $0
	i32.load	$36=, 0($0)
.LBB101_398:
	end_block
	i32.const	$push1871=, 32
	i32.and 	$push1870=, $36, $pop1871
	tee_local	$push1869=, $14=, $pop1870
	i32.eqz 	$30=, $pop1869
	i32.const	$push1868=, -256
	i32.add 	$push1867=, $17, $pop1868
	tee_local	$push1866=, $17=, $pop1867
	i32.const	$push1865=, 255
	i32.gt_u	$push483=, $pop1866, $pop1865
	br_if   	0, $pop483
	end_loop
	br_if   	2, $14
	i32.const	$push1872=, 255
	i32.and 	$31=, $31, $pop1872
	br      	1
.LBB101_401:
	end_block
	br_if   	1, $17
.LBB101_402:
	end_block
	i32.const	$push708=, 432
	i32.add 	$push709=, $39, $pop708
	i32.call	$drop=, __fwritex@FUNCTION, $pop709, $31, $0
.LBB101_403:
	end_block
	i32.gt_s	$push484=, $15, $37
	i32.select	$30=, $15, $37, $pop484
	br      	14
.LBB101_404:
	end_block
	copy_local	$37=, $7
.LBB101_405:
	loop    	
	i32.const	$push1881=, -1
	i32.add 	$push1880=, $37, $pop1881
	tee_local	$push1879=, $37=, $pop1880
	i64.const	$push1878=, 10
	i64.rem_u	$push267=, $35, $pop1878
	i64.const	$push1877=, 48
	i64.or  	$push268=, $pop267, $pop1877
	i64.store8	0($pop1879), $pop268
	i64.const	$push1876=, 42949672959
	i64.gt_u	$30=, $35, $pop1876
	i64.const	$push1875=, 10
	i64.div_u	$push1874=, $35, $pop1875
	tee_local	$push1873=, $23=, $pop1874
	copy_local	$35=, $pop1873
	br_if   	0, $30
	end_loop
	i32.wrap/i64	$push1883=, $23
	tee_local	$push1882=, $30=, $pop1883
	i32.eqz 	$push2204=, $pop1882
	br_if   	1, $pop2204
.LBB101_407:
	end_block
	loop    	
	i32.const	$push1890=, -1
	i32.add 	$push1889=, $37, $pop1890
	tee_local	$push1888=, $37=, $pop1889
	i32.const	$push1887=, 10
	i32.rem_u	$push269=, $30, $pop1887
	i32.const	$push1886=, 48
	i32.or  	$push270=, $pop269, $pop1886
	i32.store8	0($pop1888), $pop270
	i32.const	$push1885=, 9
	i32.gt_u	$31=, $30, $pop1885
	i32.const	$push1884=, 10
	i32.div_u	$push6=, $30, $pop1884
	copy_local	$30=, $pop6
	br_if   	0, $31
.LBB101_408:
	end_loop
	end_block
	block   	
	i32.sub 	$push271=, $7, $37
	i32.const	$push1891=, 1
	i32.gt_s	$push272=, $pop271, $pop1891
	br_if   	0, $pop272
	i32.const	$push1892=, -1
	i32.add 	$30=, $37, $pop1892
.LBB101_410:
	loop    	
	i32.const	$push1897=, 48
	i32.store8	0($30), $pop1897
	i32.sub 	$37=, $7, $30
	i32.const	$push1896=, -1
	i32.add 	$push1895=, $30, $pop1896
	tee_local	$push1894=, $31=, $pop1895
	copy_local	$30=, $pop1894
	i32.const	$push1893=, 2
	i32.lt_s	$push273=, $37, $pop1893
	br_if   	0, $pop273
	end_loop
	i32.const	$push1898=, 1
	i32.add 	$37=, $31, $pop1898
.LBB101_412:
	end_block
	i32.const	$push1908=, -2
	i32.add 	$push1907=, $37, $pop1908
	tee_local	$push1906=, $25=, $pop1907
	i32.store8	0($pop1906), $29
	i32.const	$30=, -1
	i32.const	$push1905=, -1
	i32.add 	$push274=, $37, $pop1905
	i32.const	$push1904=, 30
	i32.shr_u	$push275=, $36, $pop1904
	i32.const	$push1903=, 2
	i32.and 	$push276=, $pop275, $pop1903
	i32.const	$push1902=, 43
	i32.add 	$push277=, $pop276, $pop1902
	i32.store8	0($pop274), $pop277
	i32.sub 	$push1901=, $7, $25
	tee_local	$push1900=, $36=, $pop1901
	i32.const	$push1899=, 2147483647
	i32.sub 	$push278=, $pop1899, $26
	i32.gt_s	$push279=, $pop1900, $pop278
	br_if   	11, $pop279
.LBB101_413:
	end_block
	i32.const	$30=, -1
	i32.add 	$push1911=, $36, $26
	tee_local	$push1910=, $36=, $pop1911
	i32.const	$push1909=, 2147483647
	i32.xor 	$push283=, $20, $pop1909
	i32.gt_s	$push284=, $pop1910, $pop283
	br_if   	10, $pop284
	i32.add 	$26=, $36, $20
	i32.const	$push1914=, 73728
	i32.and 	$push1913=, $18, $pop1914
	tee_local	$push1912=, $18=, $pop1913
	br_if   	9, $pop1912
	i32.le_s	$push285=, $15, $26
	br_if   	9, $pop285
	i32.const	$push782=, 432
	i32.add 	$push783=, $39, $pop782
	i32.const	$push1924=, 32
	i32.sub 	$push1923=, $15, $26
	tee_local	$push1922=, $29=, $pop1923
	i32.const	$push1921=, 256
	i32.const	$push1920=, 256
	i32.lt_u	$push1919=, $29, $pop1920
	tee_local	$push1918=, $30=, $pop1919
	i32.select	$push286=, $pop1922, $pop1921, $pop1918
	i32.call	$drop=, memset@FUNCTION, $pop783, $pop1924, $pop286
	i32.load	$push1917=, 0($0)
	tee_local	$push1916=, $37=, $pop1917
	i32.const	$push1915=, 32
	i32.and 	$36=, $pop1916, $pop1915
	br_if   	7, $30
	i32.eqz 	$30=, $36
	copy_local	$36=, $29
.LBB101_418:
	loop    	
	block   	
	i32.const	$push1925=, 1
	i32.and 	$push287=, $30, $pop1925
	i32.eqz 	$push2205=, $pop287
	br_if   	0, $pop2205
	i32.const	$push784=, 432
	i32.add 	$push785=, $39, $pop784
	i32.const	$push1926=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop785, $pop1926, $0
	i32.load	$37=, 0($0)
.LBB101_420:
	end_block
	i32.const	$push1933=, 32
	i32.and 	$push1932=, $37, $pop1933
	tee_local	$push1931=, $31=, $pop1932
	i32.eqz 	$30=, $pop1931
	i32.const	$push1930=, -256
	i32.add 	$push1929=, $36, $pop1930
	tee_local	$push1928=, $36=, $pop1929
	i32.const	$push1927=, 255
	i32.gt_u	$push288=, $pop1928, $pop1927
	br_if   	0, $pop288
	end_loop
	br_if   	9, $31
	i32.const	$push1934=, 255
	i32.and 	$29=, $29, $pop1934
	br      	8
.LBB101_423:
	end_block
	i32.load	$push558=, 416($39)
	i32.store	0($pop558), $38
	i32.const	$30=, 0
	br      	10
.LBB101_424:
	end_block
	i32.load	$push557=, 416($39)
	i64.extend_s/i32	$push556=, $38
	i64.store	0($pop557), $pop556
	i32.const	$30=, 0
	br      	9
.LBB101_425:
	end_block
	i32.load	$push555=, 416($39)
	i32.store16	0($pop555), $38
	i32.const	$30=, 0
	br      	8
.LBB101_426:
	end_block
	i32.load	$push554=, 416($39)
	i32.store8	0($pop554), $38
.LBB101_427:
	end_block
	i32.const	$30=, 0
	br      	6
.LBB101_428:
	end_block
	i32.load	$push553=, 416($39)
	i32.store	0($pop553), $38
	i32.const	$30=, 0
	br      	5
.LBB101_429:
	end_block
	i32.load	$push552=, 416($39)
	i64.extend_s/i32	$push551=, $38
	i64.store	0($pop552), $pop551
	i32.const	$30=, 0
	br      	4
.LBB101_430:
	end_block
	br_if   	1, $36
.LBB101_431:
	end_block
	i32.const	$push786=, 432
	i32.add 	$push787=, $39, $pop786
	i32.call	$drop=, __fwritex@FUNCTION, $pop787, $29, $0
.LBB101_432:
	end_block
	block   	
	i32.load8_u	$push289=, 0($0)
	i32.const	$push1935=, 32
	i32.and 	$push290=, $pop289, $pop1935
	br_if   	0, $pop290
	i32.call	$drop=, __fwritex@FUNCTION, $19, $20, $0
.LBB101_434:
	end_block
	block   	
	i32.const	$push1936=, 65536
	i32.ne  	$push291=, $18, $pop1936
	br_if   	0, $pop291
	i32.le_s	$push292=, $15, $26
	br_if   	0, $pop292
	i32.const	$push788=, 432
	i32.add 	$push789=, $39, $pop788
	i32.const	$push1946=, 48
	i32.sub 	$push1945=, $15, $26
	tee_local	$push1944=, $29=, $pop1945
	i32.const	$push1943=, 256
	i32.const	$push1942=, 256
	i32.lt_u	$push1941=, $29, $pop1942
	tee_local	$push1940=, $30=, $pop1941
	i32.select	$push293=, $pop1944, $pop1943, $pop1940
	i32.call	$drop=, memset@FUNCTION, $pop789, $pop1946, $pop293
	i32.load	$push1939=, 0($0)
	tee_local	$push1938=, $37=, $pop1939
	i32.const	$push1937=, 32
	i32.and 	$36=, $pop1938, $pop1937
	block   	
	block   	
	br_if   	0, $30
	i32.eqz 	$30=, $36
	copy_local	$36=, $29
.LBB101_438:
	loop    	
	block   	
	i32.const	$push1947=, 1
	i32.and 	$push294=, $30, $pop1947
	i32.eqz 	$push2206=, $pop294
	br_if   	0, $pop2206
	i32.const	$push790=, 432
	i32.add 	$push791=, $39, $pop790
	i32.const	$push1948=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop791, $pop1948, $0
	i32.load	$37=, 0($0)
.LBB101_440:
	end_block
	i32.const	$push1955=, 32
	i32.and 	$push1954=, $37, $pop1955
	tee_local	$push1953=, $31=, $pop1954
	i32.eqz 	$30=, $pop1953
	i32.const	$push1952=, -256
	i32.add 	$push1951=, $36, $pop1952
	tee_local	$push1950=, $36=, $pop1951
	i32.const	$push1949=, 255
	i32.gt_u	$push295=, $pop1950, $pop1949
	br_if   	0, $pop295
	end_loop
	br_if   	2, $31
	i32.const	$push1956=, 255
	i32.and 	$29=, $29, $pop1956
	br      	1
.LBB101_443:
	end_block
	br_if   	1, $36
.LBB101_444:
	end_block
	i32.const	$push792=, 432
	i32.add 	$push793=, $39, $pop792
	i32.call	$drop=, __fwritex@FUNCTION, $pop793, $29, $0
.LBB101_445:
	end_block
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	br_if   	0, $21
	i32.gt_u	$push340=, $17, $22
	i32.select	$push1958=, $22, $17, $pop340
	tee_local	$push1957=, $31=, $pop1958
	copy_local	$37=, $pop1957
.LBB101_447:
	loop    	
	block   	
	block   	
	i32.load	$push1960=, 0($37)
	tee_local	$push1959=, $30=, $pop1960
	i32.eqz 	$push2207=, $pop1959
	br_if   	0, $pop2207
	i32.const	$17=, 0
.LBB101_449:
	loop    	
	i32.add 	$push341=, $11, $17
	i32.const	$push1965=, 10
	i32.rem_u	$push342=, $30, $pop1965
	i32.const	$push1964=, 48
	i32.or  	$push343=, $pop342, $pop1964
	i32.store8	0($pop341), $pop343
	i32.const	$push1963=, -1
	i32.add 	$17=, $17, $pop1963
	i32.const	$push1962=, 9
	i32.gt_u	$36=, $30, $pop1962
	i32.const	$push1961=, 10
	i32.div_u	$push7=, $30, $pop1961
	copy_local	$30=, $pop7
	br_if   	0, $36
	br      	2
.LBB101_450:
	end_loop
	end_block
	i32.const	$17=, 0
.LBB101_451:
	end_block
	i32.add 	$30=, $10, $17
	block   	
	block   	
	i32.eq  	$push344=, $37, $31
	br_if   	0, $pop344
	i32.const	$push810=, 704
	i32.add 	$push811=, $39, $pop810
	i32.le_u	$push345=, $30, $pop811
	br_if   	1, $pop345
.LBB101_453:
	loop    	
	i32.const	$push1969=, -1
	i32.add 	$push1968=, $30, $pop1969
	tee_local	$push1967=, $30=, $pop1968
	i32.const	$push1966=, 48
	i32.store8	0($pop1967), $pop1966
	i32.const	$push812=, 704
	i32.add 	$push813=, $39, $pop812
	i32.gt_u	$push346=, $30, $pop813
	br_if   	0, $pop346
	end_loop
	i32.const	$push814=, 704
	i32.add 	$push815=, $39, $pop814
	copy_local	$30=, $pop815
	br      	1
.LBB101_455:
	end_block
	br_if   	0, $17
	i32.const	$push1973=, -1
	i32.add 	$push1972=, $30, $pop1973
	tee_local	$push1971=, $30=, $pop1972
	i32.const	$push1970=, 48
	i32.store8	0($pop1971), $pop1970
.LBB101_457:
	end_block
	block   	
	i32.load8_u	$push347=, 0($0)
	i32.const	$push1974=, 32
	i32.and 	$push348=, $pop347, $pop1974
	br_if   	0, $pop348
	i32.sub 	$push349=, $10, $30
	i32.call	$drop=, __fwritex@FUNCTION, $30, $pop349, $0
.LBB101_459:
	end_block
	i32.const	$push1977=, 4
	i32.add 	$push1976=, $37, $pop1977
	tee_local	$push1975=, $37=, $pop1976
	i32.le_u	$push350=, $pop1975, $22
	br_if   	0, $pop350
	end_loop
	block   	
	i32.eqz 	$push2208=, $24
	br_if   	0, $pop2208
	i32.load8_u	$push351=, 0($0)
	i32.const	$push1978=, 32
	i32.and 	$push352=, $pop351, $pop1978
	br_if   	0, $pop352
	i32.const	$push1980=, .L.str.7.330
	i32.const	$push1979=, 1
	i32.call	$drop=, __fwritex@FUNCTION, $pop1980, $pop1979, $0
.LBB101_463:
	end_block
	i32.const	$push1981=, 1
	i32.lt_s	$push353=, $28, $pop1981
	br_if   	1, $pop353
	i32.ge_u	$push354=, $37, $14
	br_if   	2, $pop354
.LBB101_465:
	loop    	
	copy_local	$30=, $10
	block   	
	block   	
	i32.load	$push1983=, 0($37)
	tee_local	$push1982=, $17=, $pop1983
	i32.eqz 	$push2209=, $pop1982
	br_if   	0, $pop2209
	copy_local	$30=, $10
.LBB101_467:
	loop    	
	i32.const	$push1990=, -1
	i32.add 	$push1989=, $30, $pop1990
	tee_local	$push1988=, $30=, $pop1989
	i32.const	$push1987=, 10
	i32.rem_u	$push355=, $17, $pop1987
	i32.const	$push1986=, 48
	i32.or  	$push356=, $pop355, $pop1986
	i32.store8	0($pop1988), $pop356
	i32.const	$push1985=, 9
	i32.gt_u	$36=, $17, $pop1985
	i32.const	$push1984=, 10
	i32.div_u	$push8=, $17, $pop1984
	copy_local	$17=, $pop8
	br_if   	0, $36
	end_loop
	i32.const	$push808=, 704
	i32.add 	$push809=, $39, $pop808
	i32.le_u	$push357=, $30, $pop809
	br_if   	1, $pop357
.LBB101_469:
	end_block
	loop    	
	i32.const	$push1994=, -1
	i32.add 	$push1993=, $30, $pop1994
	tee_local	$push1992=, $30=, $pop1993
	i32.const	$push1991=, 48
	i32.store8	0($pop1992), $pop1991
	i32.const	$push794=, 704
	i32.add 	$push795=, $39, $pop794
	i32.gt_u	$push358=, $30, $pop795
	br_if   	0, $pop358
.LBB101_470:
	end_loop
	end_block
	block   	
	i32.load8_u	$push359=, 0($0)
	i32.const	$push1995=, 32
	i32.and 	$push360=, $pop359, $pop1995
	br_if   	0, $pop360
	i32.const	$push1997=, 9
	i32.const	$push1996=, 9
	i32.lt_s	$push361=, $28, $pop1996
	i32.select	$push362=, $28, $pop1997, $pop361
	i32.call	$drop=, __fwritex@FUNCTION, $30, $pop362, $0
.LBB101_472:
	end_block
	i32.const	$push1999=, -9
	i32.add 	$30=, $28, $pop1999
	i32.const	$push1998=, 10
	i32.lt_s	$push363=, $28, $pop1998
	br_if   	4, $pop363
	copy_local	$28=, $30
	i32.const	$push2002=, 4
	i32.add 	$push2001=, $37, $pop2002
	tee_local	$push2000=, $37=, $pop2001
	i32.lt_u	$push364=, $pop2000, $14
	br_if   	0, $pop364
	br      	4
.LBB101_474:
	end_loop
	end_block
	i32.const	$push2003=, -1
	i32.le_s	$push297=, $28, $pop2003
	br_if   	6, $pop297
	i32.const	$push2004=, 4
	i32.add 	$push296=, $17, $pop2004
	i32.select	$31=, $14, $pop296, $27
	i32.eqz 	$push2210=, $16
	br_if   	4, $pop2210
	copy_local	$37=, $17
.LBB101_477:
	loop    	
	copy_local	$14=, $10
	block   	
	block   	
	i32.load	$push2006=, 0($37)
	tee_local	$push2005=, $30=, $pop2006
	i32.eqz 	$push2211=, $pop2005
	br_if   	0, $pop2211
	i32.const	$36=, 0
.LBB101_479:
	loop    	
	i32.const	$push834=, 704
	i32.add 	$push835=, $39, $pop834
	i32.add 	$push300=, $pop835, $36
	i32.const	$push2012=, 8
	i32.add 	$push301=, $pop300, $pop2012
	i32.const	$push2011=, 10
	i32.rem_u	$push298=, $30, $pop2011
	i32.const	$push2010=, 48
	i32.or  	$push299=, $pop298, $pop2010
	i32.store8	0($pop301), $pop299
	i32.const	$push2009=, -1
	i32.add 	$36=, $36, $pop2009
	i32.const	$push2008=, 9
	i32.gt_u	$14=, $30, $pop2008
	i32.const	$push2007=, 10
	i32.div_u	$push10=, $30, $pop2007
	copy_local	$30=, $pop10
	br_if   	0, $14
	end_loop
	i32.const	$push836=, 704
	i32.add 	$push837=, $39, $pop836
	i32.add 	$push302=, $pop837, $36
	i32.const	$push2013=, 9
	i32.add 	$14=, $pop302, $pop2013
	br_if   	1, $36
.LBB101_481:
	end_block
	i32.const	$push2017=, -1
	i32.add 	$push2016=, $14, $pop2017
	tee_local	$push2015=, $14=, $pop2016
	i32.const	$push2014=, 48
	i32.store8	0($pop2015), $pop2014
.LBB101_482:
	end_block
	block   	
	block   	
	i32.eq  	$push303=, $37, $17
	br_if   	0, $pop303
	i32.const	$push830=, 704
	i32.add 	$push831=, $39, $pop830
	i32.le_u	$push304=, $14, $pop831
	br_if   	1, $pop304
.LBB101_484:
	loop    	
	i32.const	$push2021=, -1
	i32.add 	$push2020=, $14, $pop2021
	tee_local	$push2019=, $14=, $pop2020
	i32.const	$push2018=, 48
	i32.store8	0($pop2019), $pop2018
	i32.const	$push832=, 704
	i32.add 	$push833=, $39, $pop832
	i32.gt_u	$push305=, $14, $pop833
	br_if   	0, $pop305
	br      	2
.LBB101_485:
	end_loop
	end_block
	block   	
	i32.load	$push2024=, 0($0)
	tee_local	$push2023=, $30=, $pop2024
	i32.const	$push2022=, 32
	i32.and 	$push306=, $pop2023, $pop2022
	br_if   	0, $pop306
	i32.const	$push2025=, 1
	i32.call	$drop=, __fwritex@FUNCTION, $14, $pop2025, $0
	i32.load	$30=, 0($0)
.LBB101_487:
	end_block
	i32.const	$push2027=, 1
	i32.add 	$14=, $14, $pop2027
	i32.const	$push2026=, 32
	i32.and 	$push307=, $30, $pop2026
	br_if   	0, $pop307
	i32.const	$push2029=, .L.str.7.330
	i32.const	$push2028=, 1
	i32.call	$drop=, __fwritex@FUNCTION, $pop2029, $pop2028, $0
.LBB101_489:
	end_block
	i32.sub 	$30=, $10, $14
	block   	
	i32.load8_u	$push308=, 0($0)
	i32.const	$push2030=, 32
	i32.and 	$push309=, $pop308, $pop2030
	br_if   	0, $pop309
	i32.gt_s	$push310=, $28, $30
	i32.select	$push311=, $30, $28, $pop310
	i32.call	$drop=, __fwritex@FUNCTION, $14, $pop311, $0
.LBB101_491:
	end_block
	i32.sub 	$28=, $28, $30
	i32.const	$push2033=, 4
	i32.add 	$push2032=, $37, $pop2033
	tee_local	$push2031=, $37=, $pop2032
	i32.ge_u	$push312=, $pop2031, $31
	br_if   	6, $pop312
	i32.const	$push2034=, -1
	i32.gt_s	$push313=, $28, $pop2034
	br_if   	0, $pop313
	br      	6
.LBB101_493:
	end_loop
	end_block
	copy_local	$push2037=, $28
	tee_local	$push2036=, $30=, $pop2037
	i32.const	$push2035=, 1
	i32.ge_s	$push365=, $pop2036, $pop2035
	br_if   	2, $pop365
	br      	6
.LBB101_494:
	end_block
	copy_local	$30=, $28
.LBB101_495:
	end_block
	i32.const	$push2038=, 1
	i32.lt_s	$push366=, $30, $pop2038
	br_if   	4, $pop366
.LBB101_496:
	end_block
	i32.const	$push796=, 432
	i32.add 	$push797=, $39, $pop796
	i32.const	$push2046=, 48
	i32.const	$push2045=, 256
	i32.const	$push2044=, 256
	i32.lt_u	$push2043=, $30, $pop2044
	tee_local	$push2042=, $17=, $pop2043
	i32.select	$push367=, $30, $pop2045, $pop2042
	i32.call	$drop=, memset@FUNCTION, $pop797, $pop2046, $pop367
	i32.load	$push2041=, 0($0)
	tee_local	$push2040=, $14=, $pop2041
	i32.const	$push2039=, 32
	i32.and 	$36=, $pop2040, $pop2039
	block   	
	block   	
	br_if   	0, $17
	i32.eqz 	$17=, $36
	copy_local	$36=, $30
.LBB101_498:
	loop    	
	block   	
	i32.const	$push2047=, 1
	i32.and 	$push368=, $17, $pop2047
	i32.eqz 	$push2212=, $pop368
	br_if   	0, $pop2212
	i32.const	$push798=, 432
	i32.add 	$push799=, $39, $pop798
	i32.const	$push2048=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop799, $pop2048, $0
	i32.load	$14=, 0($0)
.LBB101_500:
	end_block
	i32.const	$push2055=, 32
	i32.and 	$push2054=, $14, $pop2055
	tee_local	$push2053=, $37=, $pop2054
	i32.eqz 	$17=, $pop2053
	i32.const	$push2052=, -256
	i32.add 	$push2051=, $36, $pop2052
	tee_local	$push2050=, $36=, $pop2051
	i32.const	$push2049=, 255
	i32.gt_u	$push369=, $pop2050, $pop2049
	br_if   	0, $pop369
	end_loop
	br_if   	5, $37
	i32.const	$push2056=, 255
	i32.and 	$30=, $30, $pop2056
	br      	1
.LBB101_503:
	end_block
	br_if   	4, $36
.LBB101_504:
	end_block
	i32.const	$push800=, 432
	i32.add 	$push801=, $39, $pop800
	i32.call	$drop=, __fwritex@FUNCTION, $pop801, $30, $0
	i32.const	$push2057=, 8192
	i32.eq  	$push370=, $18, $pop2057
	br_if   	4, $pop370
	br      	5
.LBB101_505:
	end_block
	copy_local	$37=, $17
.LBB101_506:
	loop    	
	copy_local	$14=, $10
	block   	
	block   	
	i32.load	$push2059=, 0($37)
	tee_local	$push2058=, $30=, $pop2059
	i32.eqz 	$push2213=, $pop2058
	br_if   	0, $pop2213
	i32.const	$36=, 0
.LBB101_508:
	loop    	
	i32.const	$push826=, 704
	i32.add 	$push827=, $39, $pop826
	i32.add 	$push316=, $pop827, $36
	i32.const	$push2065=, 8
	i32.add 	$push317=, $pop316, $pop2065
	i32.const	$push2064=, 10
	i32.rem_u	$push314=, $30, $pop2064
	i32.const	$push2063=, 48
	i32.or  	$push315=, $pop314, $pop2063
	i32.store8	0($pop317), $pop315
	i32.const	$push2062=, -1
	i32.add 	$36=, $36, $pop2062
	i32.const	$push2061=, 9
	i32.gt_u	$14=, $30, $pop2061
	i32.const	$push2060=, 10
	i32.div_u	$push9=, $30, $pop2060
	copy_local	$30=, $pop9
	br_if   	0, $14
	end_loop
	i32.const	$push828=, 704
	i32.add 	$push829=, $39, $pop828
	i32.add 	$push318=, $pop829, $36
	i32.const	$push2066=, 9
	i32.add 	$14=, $pop318, $pop2066
	br_if   	1, $36
.LBB101_510:
	end_block
	i32.const	$push2070=, -1
	i32.add 	$push2069=, $14, $pop2070
	tee_local	$push2068=, $14=, $pop2069
	i32.const	$push2067=, 48
	i32.store8	0($pop2068), $pop2067
.LBB101_511:
	end_block
	block   	
	block   	
	i32.eq  	$push319=, $37, $17
	br_if   	0, $pop319
	i32.const	$push822=, 704
	i32.add 	$push823=, $39, $pop822
	i32.le_u	$push320=, $14, $pop823
	br_if   	1, $pop320
.LBB101_513:
	loop    	
	i32.const	$push2074=, -1
	i32.add 	$push2073=, $14, $pop2074
	tee_local	$push2072=, $14=, $pop2073
	i32.const	$push2071=, 48
	i32.store8	0($pop2072), $pop2071
	i32.const	$push824=, 704
	i32.add 	$push825=, $39, $pop824
	i32.gt_u	$push321=, $14, $pop825
	br_if   	0, $pop321
	br      	2
.LBB101_514:
	end_loop
	end_block
	block   	
	i32.load8_u	$push322=, 0($0)
	i32.const	$push2075=, 32
	i32.and 	$push323=, $pop322, $pop2075
	br_if   	0, $pop323
	i32.const	$push2076=, 1
	i32.call	$drop=, __fwritex@FUNCTION, $14, $pop2076, $0
.LBB101_516:
	end_block
	i32.const	$push2078=, 1
	i32.add 	$14=, $14, $pop2078
	i32.const	$push2077=, 1
	i32.lt_s	$push324=, $28, $pop2077
	br_if   	0, $pop324
	i32.load8_u	$push325=, 0($0)
	i32.const	$push2079=, 32
	i32.and 	$push326=, $pop325, $pop2079
	br_if   	0, $pop326
	i32.const	$push2081=, .L.str.7.330
	i32.const	$push2080=, 1
	i32.call	$drop=, __fwritex@FUNCTION, $pop2081, $pop2080, $0
.LBB101_519:
	end_block
	i32.sub 	$30=, $10, $14
	block   	
	i32.load8_u	$push327=, 0($0)
	i32.const	$push2082=, 32
	i32.and 	$push328=, $pop327, $pop2082
	br_if   	0, $pop328
	i32.gt_s	$push329=, $28, $30
	i32.select	$push330=, $30, $28, $pop329
	i32.call	$drop=, __fwritex@FUNCTION, $14, $pop330, $0
.LBB101_521:
	end_block
	i32.sub 	$28=, $28, $30
	i32.const	$push2085=, 4
	i32.add 	$push2084=, $37, $pop2085
	tee_local	$push2083=, $37=, $pop2084
	i32.ge_u	$push331=, $pop2083, $31
	br_if   	1, $pop331
	i32.const	$push2086=, -1
	i32.gt_s	$push332=, $28, $pop2086
	br_if   	0, $pop332
.LBB101_523:
	end_loop
	end_block
	i32.const	$push2087=, 1
	i32.lt_s	$push333=, $28, $pop2087
	br_if   	0, $pop333
	i32.const	$push816=, 432
	i32.add 	$push817=, $39, $pop816
	i32.const	$push2095=, 48
	i32.const	$push2094=, 256
	i32.const	$push2093=, 256
	i32.lt_u	$push2092=, $28, $pop2093
	tee_local	$push2091=, $30=, $pop2092
	i32.select	$push334=, $28, $pop2094, $pop2091
	i32.call	$drop=, memset@FUNCTION, $pop817, $pop2095, $pop334
	i32.load	$push2090=, 0($0)
	tee_local	$push2089=, $36=, $pop2090
	i32.const	$push2088=, 32
	i32.and 	$17=, $pop2089, $pop2088
	block   	
	block   	
	br_if   	0, $30
	i32.eqz 	$30=, $17
	copy_local	$17=, $28
.LBB101_526:
	loop    	
	block   	
	i32.const	$push2096=, 1
	i32.and 	$push335=, $30, $pop2096
	i32.eqz 	$push2214=, $pop335
	br_if   	0, $pop2214
	i32.const	$push818=, 432
	i32.add 	$push819=, $39, $pop818
	i32.const	$push2097=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop819, $pop2097, $0
	i32.load	$36=, 0($0)
.LBB101_528:
	end_block
	i32.const	$push2104=, 32
	i32.and 	$push2103=, $36, $pop2104
	tee_local	$push2102=, $14=, $pop2103
	i32.eqz 	$30=, $pop2102
	i32.const	$push2101=, -256
	i32.add 	$push2100=, $17, $pop2101
	tee_local	$push2099=, $17=, $pop2100
	i32.const	$push2098=, 255
	i32.gt_u	$push336=, $pop2099, $pop2098
	br_if   	0, $pop336
	end_loop
	br_if   	2, $14
	i32.const	$push2105=, 255
	i32.and 	$28=, $28, $pop2105
	br      	1
.LBB101_531:
	end_block
	br_if   	1, $17
.LBB101_532:
	end_block
	i32.const	$push820=, 432
	i32.add 	$push821=, $39, $pop820
	i32.call	$drop=, __fwritex@FUNCTION, $pop821, $28, $0
.LBB101_533:
	end_block
	i32.load8_u	$push337=, 0($0)
	i32.const	$push2106=, 32
	i32.and 	$push338=, $pop337, $pop2106
	br_if   	0, $pop338
	i32.sub 	$push339=, $7, $25
	i32.call	$drop=, __fwritex@FUNCTION, $25, $pop339, $0
.LBB101_535:
	end_block
	i32.const	$push2107=, 8192
	i32.ne  	$push371=, $18, $pop2107
	br_if   	1, $pop371
.LBB101_536:
	end_block
	i32.le_s	$push372=, $15, $26
	br_if   	0, $pop372
	i32.const	$push802=, 432
	i32.add 	$push803=, $39, $pop802
	i32.const	$push2117=, 32
	i32.sub 	$push2116=, $15, $26
	tee_local	$push2115=, $37=, $pop2116
	i32.const	$push2114=, 256
	i32.const	$push2113=, 256
	i32.lt_u	$push2112=, $37, $pop2113
	tee_local	$push2111=, $30=, $pop2112
	i32.select	$push373=, $pop2115, $pop2114, $pop2111
	i32.call	$drop=, memset@FUNCTION, $pop803, $pop2117, $pop373
	i32.load	$push2110=, 0($0)
	tee_local	$push2109=, $36=, $pop2110
	i32.const	$push2108=, 32
	i32.and 	$17=, $pop2109, $pop2108
	block   	
	block   	
	br_if   	0, $30
	i32.eqz 	$30=, $17
	copy_local	$17=, $37
.LBB101_539:
	loop    	
	block   	
	i32.const	$push2118=, 1
	i32.and 	$push374=, $30, $pop2118
	i32.eqz 	$push2215=, $pop374
	br_if   	0, $pop2215
	i32.const	$push804=, 432
	i32.add 	$push805=, $39, $pop804
	i32.const	$push2119=, 256
	i32.call	$drop=, __fwritex@FUNCTION, $pop805, $pop2119, $0
	i32.load	$36=, 0($0)
.LBB101_541:
	end_block
	i32.const	$push2126=, 32
	i32.and 	$push2125=, $36, $pop2126
	tee_local	$push2124=, $14=, $pop2125
	i32.eqz 	$30=, $pop2124
	i32.const	$push2123=, -256
	i32.add 	$push2122=, $17, $pop2123
	tee_local	$push2121=, $17=, $pop2122
	i32.const	$push2120=, 255
	i32.gt_u	$push375=, $pop2121, $pop2120
	br_if   	0, $pop375
	end_loop
	br_if   	2, $14
	i32.const	$push2127=, 255
	i32.and 	$37=, $37, $pop2127
	br      	1
.LBB101_544:
	end_block
	br_if   	1, $17
.LBB101_545:
	end_block
	i32.const	$push806=, 432
	i32.add 	$push807=, $39, $pop806
	i32.call	$drop=, __fwritex@FUNCTION, $pop807, $37, $0
.LBB101_546:
	end_block
	i32.gt_s	$push376=, $15, $26
	i32.select	$30=, $15, $26, $pop376
.LBB101_547:
	end_block
	i32.const	$push1272=, 0
	i32.lt_s	$push485=, $30, $pop1272
	br_if   	3, $pop485
.LBB101_548:
	end_block
	i32.le_s	$push587=, $30, $13
	br_if   	0, $pop587
	br      	2
.LBB101_549:
	end_loop
	end_block
	br_if   	14, $0
	i32.eqz 	$push2216=, $32
	br_if   	1, $pop2216
	i32.const	$30=, 1
	i32.load	$push2133=, 4($4)
	tee_local	$push2132=, $1=, $pop2133
	i32.eqz 	$push2217=, $pop2132
	br_if   	11, $pop2217
	i32.const	$push590=, 16
	i32.add 	$push591=, $3, $pop590
	call    	pop_arg@FUNCTION, $pop591, $1, $2
	i32.load	$push2135=, 8($4)
	tee_local	$push2134=, $1=, $pop2135
	i32.eqz 	$push2218=, $pop2134
	br_if   	2, $pop2218
	i32.const	$push592=, 32
	i32.add 	$push593=, $3, $pop592
	call    	pop_arg@FUNCTION, $pop593, $1, $2
	i32.load	$push2137=, 12($4)
	tee_local	$push2136=, $1=, $pop2137
	i32.eqz 	$push2219=, $pop2136
	br_if   	3, $pop2219
	i32.const	$push594=, 48
	i32.add 	$push595=, $3, $pop594
	call    	pop_arg@FUNCTION, $pop595, $1, $2
	i32.load	$push2139=, 16($4)
	tee_local	$push2138=, $1=, $pop2139
	i32.eqz 	$push2220=, $pop2138
	br_if   	5, $pop2220
	i32.const	$push596=, 64
	i32.add 	$push597=, $3, $pop596
	call    	pop_arg@FUNCTION, $pop597, $1, $2
	i32.load	$push2141=, 20($4)
	tee_local	$push2140=, $1=, $pop2141
	i32.eqz 	$push2221=, $pop2140
	br_if   	6, $pop2221
	i32.const	$push598=, 80
	i32.add 	$push599=, $3, $pop598
	call    	pop_arg@FUNCTION, $pop599, $1, $2
	i32.load	$push2143=, 24($4)
	tee_local	$push2142=, $1=, $pop2143
	i32.eqz 	$push2222=, $pop2142
	br_if   	7, $pop2222
	i32.const	$push600=, 96
	i32.add 	$push601=, $3, $pop600
	call    	pop_arg@FUNCTION, $pop601, $1, $2
	i32.load	$push2145=, 28($4)
	tee_local	$push2144=, $1=, $pop2145
	i32.eqz 	$push2223=, $pop2144
	br_if   	8, $pop2223
	i32.const	$push602=, 112
	i32.add 	$push603=, $3, $pop602
	call    	pop_arg@FUNCTION, $pop603, $1, $2
	i32.load	$push2147=, 32($4)
	tee_local	$push2146=, $1=, $pop2147
	i32.eqz 	$push2224=, $pop2146
	br_if   	9, $pop2224
	i32.const	$push604=, 128
	i32.add 	$push605=, $3, $pop604
	call    	pop_arg@FUNCTION, $pop605, $1, $2
	i32.load	$push2149=, 36($4)
	tee_local	$push2148=, $1=, $pop2149
	i32.eqz 	$push2225=, $pop2148
	br_if   	10, $pop2225
	i32.const	$push606=, 144
	i32.add 	$push607=, $3, $pop606
	call    	pop_arg@FUNCTION, $pop607, $1, $2
	i32.const	$38=, 1
	br      	14
.LBB101_561:
	end_block
	i32.call	$push588=, __errno_location@FUNCTION
	i32.const	$push589=, 75
	i32.store	0($pop588), $pop589
	br      	12
.LBB101_562:
	end_block
	i32.const	$38=, 0
	br      	12
.LBB101_563:
	end_block
	i32.const	$30=, 2
	br      	8
.LBB101_564:
	end_block
	i32.const	$30=, 3
	br      	7
.LBB101_565:
	end_block
	i32.const	$38=, 0
	br      	9
.LBB101_566:
	end_block
	i32.const	$30=, 4
	br      	5
.LBB101_567:
	end_block
	i32.const	$30=, 5
	br      	4
.LBB101_568:
	end_block
	i32.const	$30=, 6
	br      	3
.LBB101_569:
	end_block
	i32.const	$30=, 7
	br      	2
.LBB101_570:
	end_block
	i32.const	$30=, 8
	br      	1
.LBB101_571:
	end_block
	i32.const	$30=, 9
.LBB101_572:
	end_block
	i32.const	$push608=, 2
	i32.shl 	$push609=, $30, $pop608
	i32.add 	$1=, $4, $pop609
.LBB101_573:
	loop    	
	i32.load	$push610=, 0($1)
	br_if   	1, $pop610
	i32.const	$push2154=, 4
	i32.add 	$1=, $1, $pop2154
	i32.const	$38=, 1
	i32.const	$push2153=, 1
	i32.add 	$push2152=, $30, $pop2153
	tee_local	$push2151=, $30=, $pop2152
	i32.const	$push2150=, 9
	i32.le_u	$push613=, $pop2151, $pop2150
	br_if   	0, $pop613
	br      	3
.LBB101_575:
	end_loop
	end_block
	i32.call	$push611=, __errno_location@FUNCTION
	i32.const	$push612=, 22
	i32.store	0($pop611), $pop612
.LBB101_576:
	end_block
	i32.const	$38=, -1
.LBB101_577:
	end_block
	i32.const	$push623=, 0
	i32.const	$push621=, 8128
	i32.add 	$push622=, $39, $pop621
	i32.store	__stack_pointer($pop623), $pop622
	copy_local	$push2226=, $38
	.endfunc
.Lfunc_end101:
	.size	printf_core, .Lfunc_end101-printf_core

	.hidden	__lockfile
	.globl	__lockfile
	.type	__lockfile,@function
__lockfile:
	.param  	i32
	.result 	i32
	.local  	i32
	copy_local	$push0=, $1
	.endfunc
.Lfunc_end102:
	.size	__lockfile, .Lfunc_end102-__lockfile

	.hidden	__unlockfile
	.globl	__unlockfile
	.type	__unlockfile,@function
__unlockfile:
	.param  	i32
	.endfunc
.Lfunc_end103:
	.size	__unlockfile, .Lfunc_end103-__unlockfile

	.hidden	__fwritex
	.globl	__fwritex
	.type	__fwritex,@function
__fwritex:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32
	block   	
	block   	
	i32.load	$push25=, 16($2)
	tee_local	$push24=, $6=, $pop25
	br_if   	0, $pop24
	i32.const	$6=, 0
	i32.call	$push0=, __towrite@FUNCTION, $2
	br_if   	1, $pop0
	i32.const	$push1=, 16
	i32.add 	$push2=, $2, $pop1
	i32.load	$6=, 0($pop2)
.LBB104_3:
	end_block
	block   	
	i32.load	$push27=, 20($2)
	tee_local	$push26=, $7=, $pop27
	i32.sub 	$push3=, $6, $pop26
	i32.ge_u	$push4=, $pop3, $1
	br_if   	0, $pop4
	i32.load	$push21=, 36($2)
	i32.call_indirect	$push22=, $2, $0, $1, $pop21
	return  	$pop22
.LBB104_5:
	end_block
	i32.const	$8=, 0
	block   	
	i32.load8_s	$push5=, 75($2)
	i32.const	$push28=, 0
	i32.lt_s	$push6=, $pop5, $pop28
	br_if   	0, $pop6
	i32.add 	$3=, $0, $1
	i32.const	$8=, 0
	i32.const	$6=, 0
.LBB104_7:
	loop    	
	i32.add 	$push7=, $1, $6
	i32.eqz 	$push42=, $pop7
	br_if   	1, $pop42
	i32.add 	$5=, $3, $6
	i32.const	$push33=, -1
	i32.add 	$push32=, $6, $pop33
	tee_local	$push31=, $4=, $pop32
	copy_local	$6=, $pop31
	i32.const	$push30=, -1
	i32.add 	$push8=, $5, $pop30
	i32.load8_u	$push9=, 0($pop8)
	i32.const	$push29=, 10
	i32.ne  	$push10=, $pop9, $pop29
	br_if   	0, $pop10
	end_loop
	i32.add 	$push11=, $1, $4
	i32.const	$push38=, 1
	i32.add 	$push37=, $pop11, $pop38
	tee_local	$push36=, $8=, $pop37
	i32.load	$push12=, 36($2)
	i32.call_indirect	$push35=, $2, $0, $pop36, $pop12
	tee_local	$push34=, $6=, $pop35
	i32.lt_u	$push13=, $pop34, $8
	br_if   	1, $pop13
	i32.const	$push14=, -1
	i32.xor 	$1=, $4, $pop14
	i32.add 	$push15=, $3, $4
	i32.const	$push39=, 1
	i32.add 	$0=, $pop15, $pop39
	i32.const	$push16=, 20
	i32.add 	$push17=, $2, $pop16
	i32.load	$7=, 0($pop17)
.LBB104_11:
	end_block
	i32.call	$drop=, memcpy@FUNCTION, $7, $0, $1
	i32.const	$push18=, 20
	i32.add 	$push41=, $2, $pop18
	tee_local	$push40=, $6=, $pop41
	i32.load	$push19=, 0($6)
	i32.add 	$push20=, $pop19, $1
	i32.store	0($pop40), $pop20
	i32.add 	$push23=, $8, $1
	return  	$pop23
.LBB104_12:
	end_block
	copy_local	$push43=, $6
	.endfunc
.Lfunc_end104:
	.size	__fwritex, .Lfunc_end104-__fwritex

	.type	pop_arg,@function
pop_arg:
	.param  	i32, i32, i32
	.local  	i64, i32
	i32.const	$push90=, 0
	i32.const	$push87=, 0
	i32.load	$push88=, __stack_pointer($pop87)
	i32.const	$push89=, 16
	i32.sub 	$push97=, $pop88, $pop89
	tee_local	$push96=, $4=, $pop97
	i32.store	__stack_pointer($pop90), $pop96
	block   	
	i32.const	$push0=, -9
	i32.add 	$push95=, $1, $pop0
	tee_local	$push94=, $1=, $pop95
	i32.const	$push1=, 17
	i32.gt_u	$push2=, $pop94, $pop1
	br_if   	0, $pop2
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	br_table 	$1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 0
.LBB105_2:
	end_block
	i32.load	$push99=, 0($2)
	tee_local	$push98=, $1=, $pop99
	i32.const	$push84=, 4
	i32.add 	$push85=, $pop98, $pop84
	i32.store	0($2), $pop85
	i32.load	$push86=, 0($1)
	i32.store	0($0), $pop86
	br      	17
.LBB105_3:
	end_block
	i32.load	$push101=, 0($2)
	tee_local	$push100=, $1=, $pop101
	i32.const	$push81=, 4
	i32.add 	$push82=, $pop100, $pop81
	i32.store	0($2), $pop82
	i64.load32_s	$push83=, 0($1)
	i64.store	0($0), $pop83
	br      	16
.LBB105_4:
	end_block
	i32.load	$push103=, 0($2)
	tee_local	$push102=, $1=, $pop103
	i32.const	$push78=, 4
	i32.add 	$push79=, $pop102, $pop78
	i32.store	0($2), $pop79
	i64.load32_u	$push80=, 0($1)
	i64.store	0($0), $pop80
	br      	15
.LBB105_5:
	end_block
	i32.load	$push65=, 0($2)
	i32.const	$push66=, 7
	i32.add 	$push67=, $pop65, $pop66
	i32.const	$push68=, -8
	i32.and 	$push105=, $pop67, $pop68
	tee_local	$push104=, $1=, $pop105
	i32.const	$push69=, 8
	i32.add 	$push70=, $pop104, $pop69
	i32.store	0($2), $pop70
	i64.load	$push71=, 0($1)
	i64.store	0($0), $pop71
	br      	14
.LBB105_6:
	end_block
	i32.load	$push107=, 0($2)
	tee_local	$push106=, $1=, $pop107
	i32.const	$push75=, 4
	i32.add 	$push76=, $pop106, $pop75
	i32.store	0($2), $pop76
	i64.load32_s	$push77=, 0($1)
	i64.store	0($0), $pop77
	br      	13
.LBB105_7:
	end_block
	i32.load	$push109=, 0($2)
	tee_local	$push108=, $1=, $pop109
	i32.const	$push72=, 4
	i32.add 	$push73=, $pop108, $pop72
	i32.store	0($2), $pop73
	i64.load32_u	$push74=, 0($1)
	i64.store	0($0), $pop74
	br      	12
.LBB105_8:
	end_block
	i32.load	$push111=, 0($2)
	tee_local	$push110=, $1=, $pop111
	i32.const	$push62=, 4
	i32.add 	$push63=, $pop110, $pop62
	i32.store	0($2), $pop63
	i64.load16_s	$push64=, 0($1)
	i64.store	0($0), $pop64
	br      	11
.LBB105_9:
	end_block
	i32.load	$push113=, 0($2)
	tee_local	$push112=, $1=, $pop113
	i32.const	$push59=, 4
	i32.add 	$push60=, $pop112, $pop59
	i32.store	0($2), $pop60
	i64.load16_u	$push61=, 0($1)
	i64.store	0($0), $pop61
	br      	10
.LBB105_10:
	end_block
	i32.load	$push115=, 0($2)
	tee_local	$push114=, $1=, $pop115
	i32.const	$push56=, 4
	i32.add 	$push57=, $pop114, $pop56
	i32.store	0($2), $pop57
	i64.load8_s	$push58=, 0($1)
	i64.store	0($0), $pop58
	br      	9
.LBB105_11:
	end_block
	i32.load	$push117=, 0($2)
	tee_local	$push116=, $1=, $pop117
	i32.const	$push53=, 4
	i32.add 	$push54=, $pop116, $pop53
	i32.store	0($2), $pop54
	i64.load8_u	$push55=, 0($1)
	i64.store	0($0), $pop55
	br      	8
.LBB105_12:
	end_block
	i32.load	$push46=, 0($2)
	i32.const	$push47=, 7
	i32.add 	$push48=, $pop46, $pop47
	i32.const	$push49=, -8
	i32.and 	$push119=, $pop48, $pop49
	tee_local	$push118=, $1=, $pop119
	i32.const	$push50=, 8
	i32.add 	$push51=, $pop118, $pop50
	i32.store	0($2), $pop51
	i64.load	$push52=, 0($1)
	i64.store	0($0), $pop52
	br      	7
.LBB105_13:
	end_block
	i32.load	$push121=, 0($2)
	tee_local	$push120=, $1=, $pop121
	i32.const	$push43=, 4
	i32.add 	$push44=, $pop120, $pop43
	i32.store	0($2), $pop44
	i64.load32_u	$push45=, 0($1)
	i64.store	0($0), $pop45
	br      	6
.LBB105_14:
	end_block
	i32.load	$push36=, 0($2)
	i32.const	$push37=, 7
	i32.add 	$push38=, $pop36, $pop37
	i32.const	$push39=, -8
	i32.and 	$push123=, $pop38, $pop39
	tee_local	$push122=, $1=, $pop123
	i32.const	$push40=, 8
	i32.add 	$push41=, $pop122, $pop40
	i32.store	0($2), $pop41
	i64.load	$push42=, 0($1)
	i64.store	0($0), $pop42
	br      	5
.LBB105_15:
	end_block
	i32.load	$push29=, 0($2)
	i32.const	$push30=, 7
	i32.add 	$push31=, $pop29, $pop30
	i32.const	$push32=, -8
	i32.and 	$push125=, $pop31, $pop32
	tee_local	$push124=, $1=, $pop125
	i32.const	$push33=, 8
	i32.add 	$push34=, $pop124, $pop33
	i32.store	0($2), $pop34
	i64.load	$push35=, 0($1)
	i64.store	0($0), $pop35
	br      	4
.LBB105_16:
	end_block
	i32.load	$push127=, 0($2)
	tee_local	$push126=, $1=, $pop127
	i32.const	$push26=, 4
	i32.add 	$push27=, $pop126, $pop26
	i32.store	0($2), $pop27
	i64.load32_s	$push28=, 0($1)
	i64.store	0($0), $pop28
	br      	3
.LBB105_17:
	end_block
	i32.load	$push129=, 0($2)
	tee_local	$push128=, $1=, $pop129
	i32.const	$push23=, 4
	i32.add 	$push24=, $pop128, $pop23
	i32.store	0($2), $pop24
	i64.load32_u	$push25=, 0($1)
	i64.store	0($0), $pop25
	br      	2
.LBB105_18:
	end_block
	i32.load	$push12=, 0($2)
	i32.const	$push13=, 7
	i32.add 	$push14=, $pop12, $pop13
	i32.const	$push15=, -8
	i32.and 	$push133=, $pop14, $pop15
	tee_local	$push132=, $1=, $pop133
	i32.const	$push16=, 8
	i32.add 	$push17=, $pop132, $pop16
	i32.store	0($2), $pop17
	f64.load	$push18=, 0($1)
	call    	__extenddftf2@FUNCTION, $4, $pop18
	i32.const	$push131=, 8
	i32.add 	$push19=, $0, $pop131
	i32.const	$push130=, 8
	i32.add 	$push20=, $4, $pop130
	i64.load	$push21=, 0($pop20)
	i64.store	0($pop19), $pop21
	i64.load	$push22=, 0($4)
	i64.store	0($0), $pop22
	br      	1
.LBB105_19:
	end_block
	i32.load	$push3=, 0($2)
	i32.const	$push4=, 15
	i32.add 	$push5=, $pop3, $pop4
	i32.const	$push6=, -16
	i32.and 	$push135=, $pop5, $pop6
	tee_local	$push134=, $1=, $pop135
	i32.const	$push7=, 16
	i32.add 	$push8=, $pop134, $pop7
	i32.store	0($2), $pop8
	i64.load	$3=, 0($1)
	i32.const	$push9=, 8
	i32.add 	$push10=, $0, $pop9
	i64.load	$push11=, 8($1)
	i64.store	0($pop10), $pop11
	i64.store	0($0), $3
.LBB105_20:
	end_block
	i32.const	$push93=, 0
	i32.const	$push91=, 16
	i32.add 	$push92=, $4, $pop91
	i32.store	__stack_pointer($pop93), $pop92
	.endfunc
.Lfunc_end105:
	.size	pop_arg, .Lfunc_end105-pop_arg

	.hidden	strerror
	.globl	strerror
	.type	strerror,@function
strerror:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32
	i32.const	$2=, 0
.LBB106_1:
	block   	
	block   	
	block   	
	block   	
	loop    	
	i32.const	$push7=, errid
	i32.add 	$push0=, $2, $pop7
	i32.load8_u	$push1=, 0($pop0)
	i32.eq  	$push2=, $pop1, $0
	br_if   	1, $pop2
	i32.const	$1=, 87
	i32.const	$push11=, 1
	i32.add 	$push10=, $2, $pop11
	tee_local	$push9=, $2=, $pop10
	i32.const	$push8=, 87
	i32.ne  	$push3=, $pop9, $pop8
	br_if   	0, $pop3
	br      	2
.LBB106_3:
	end_loop
	end_block
	copy_local	$1=, $2
	i32.eqz 	$push18=, $2
	br_if   	1, $pop18
.LBB106_4:
	end_block
	i32.const	$2=, errmsg
.LBB106_5:
	loop    	
	i32.load8_u	$0=, 0($2)
	i32.const	$push14=, 1
	i32.add 	$push13=, $2, $pop14
	tee_local	$push12=, $3=, $pop13
	copy_local	$2=, $pop12
	br_if   	0, $0
	copy_local	$2=, $3
	i32.const	$push17=, -1
	i32.add 	$push16=, $1, $pop17
	tee_local	$push15=, $1=, $pop16
	br_if   	0, $pop15
	br      	2
.LBB106_7:
	end_loop
	end_block
	i32.const	$3=, errmsg
.LBB106_8:
	end_block
	i32.const	$push4=, 0
	i32.load	$push5=, 20($pop4)
	i32.call	$push6=, __lctrans@FUNCTION, $3, $pop5
	.endfunc
.Lfunc_end106:
	.size	strerror, .Lfunc_end106-strerror

	.hidden	strnlen
	.globl	strnlen
	.type	strnlen,@function
strnlen:
	.param  	i32, i32
	.result 	i32
	.local  	i32
	i32.const	$push0=, 0
	i32.call	$push4=, memchr@FUNCTION, $0, $pop0, $1
	tee_local	$push3=, $2=, $pop4
	i32.sub 	$push1=, $pop3, $0
	i32.select	$push2=, $pop1, $1, $2
	.endfunc
.Lfunc_end107:
	.size	strnlen, .Lfunc_end107-strnlen

	.hidden	wctomb
	.globl	wctomb
	.type	wctomb,@function
wctomb:
	.param  	i32, i32
	.result 	i32
	block   	
	i32.eqz 	$push3=, $0
	br_if   	0, $pop3
	i32.const	$push0=, 0
	i32.call	$push1=, wcrtomb@FUNCTION, $0, $1, $pop0
	return  	$pop1
.LBB108_2:
	end_block
	i32.const	$push2=, 0
	.endfunc
.Lfunc_end108:
	.size	wctomb, .Lfunc_end108-wctomb

	.hidden	__signbitl
	.globl	__signbitl
	.type	__signbitl,@function
__signbitl:
	.param  	i64, i64
	.result 	i32
	i64.const	$push0=, 63
	i64.shr_u	$push1=, $1, $pop0
	i32.wrap/i64	$push2=, $pop1
	.endfunc
.Lfunc_end109:
	.size	__signbitl, .Lfunc_end109-__signbitl

	.hidden	__fpclassifyl
	.globl	__fpclassifyl
	.type	__fpclassifyl,@function
__fpclassifyl:
	.param  	i64, i64
	.result 	i32
	.local  	i64, i32, i32
	i64.const	$push0=, 281474976710655
	i64.and 	$2=, $1, $pop0
	block   	
	block   	
	i64.const	$push1=, 48
	i64.shr_u	$push2=, $1, $pop1
	i32.wrap/i64	$push3=, $pop2
	i32.const	$push4=, 32767
	i32.and 	$push15=, $pop3, $pop4
	tee_local	$push14=, $3=, $pop15
	i32.const	$push13=, 32767
	i32.eq  	$push5=, $pop14, $pop13
	br_if   	0, $pop5
	i32.const	$4=, 4
	br_if   	1, $3
	i32.const	$push11=, 3
	i32.const	$push10=, 2
	i64.or  	$push7=, $2, $0
	i64.const	$push8=, 0
	i64.ne  	$push9=, $pop7, $pop8
	i32.select	$push12=, $pop11, $pop10, $pop9
	return  	$pop12
.LBB110_3:
	end_block
	i64.or  	$push6=, $2, $0
	i64.eqz 	$4=, $pop6
.LBB110_4:
	end_block
	copy_local	$push16=, $4
	.endfunc
.Lfunc_end110:
	.size	__fpclassifyl, .Lfunc_end110-__fpclassifyl

	.hidden	frexpl
	.globl	frexpl
	.type	frexpl,@function
frexpl:
	.param  	i32, i64, i64, i32
	.local  	i32, i32, i32
	i32.const	$push30=, 0
	i32.const	$push27=, 0
	i32.load	$push28=, __stack_pointer($pop27)
	i32.const	$push29=, 32
	i32.sub 	$push42=, $pop28, $pop29
	tee_local	$push41=, $6=, $pop42
	i32.store	__stack_pointer($pop30), $pop41
	block   	
	i64.const	$push0=, 48
	i64.shr_u	$push1=, $2, $pop0
	i32.wrap/i64	$push40=, $pop1
	tee_local	$push39=, $4=, $pop40
	i32.const	$push2=, 32767
	i32.and 	$push38=, $pop39, $pop2
	tee_local	$push37=, $5=, $pop38
	i32.const	$push36=, 32767
	i32.eq  	$push3=, $pop37, $pop36
	br_if   	0, $pop3
	block   	
	block   	
	block   	
	br_if   	0, $5
	i64.const	$push44=, 0
	i64.const	$push43=, 0
	i32.call	$push4=, __eqtf2@FUNCTION, $1, $2, $pop44, $pop43
	i32.eqz 	$push46=, $pop4
	br_if   	1, $pop46
	i64.const	$push45=, 0
	i64.const	$push5=, 4645181540655955968
	call    	__multf3@FUNCTION, $6, $1, $2, $pop45, $pop5
	i32.const	$push34=, 16
	i32.add 	$push35=, $6, $pop34
	i64.load	$push9=, 0($6)
	i32.const	$push6=, 8
	i32.add 	$push7=, $6, $pop6
	i64.load	$push8=, 0($pop7)
	call    	frexpl@FUNCTION, $pop35, $pop9, $pop8, $3
	i32.load	$push10=, 0($3)
	i32.const	$push11=, -120
	i32.add 	$4=, $pop10, $pop11
	i64.load	$2=, 24($6)
	i64.load	$1=, 16($6)
	br      	2
.LBB111_4:
	end_block
	i32.const	$push12=, 32767
	i32.and 	$push13=, $4, $pop12
	i32.const	$push14=, -16382
	i32.add 	$push15=, $pop13, $pop14
	i32.store	0($3), $pop15
	i32.const	$push18=, 32768
	i32.and 	$push19=, $4, $pop18
	i32.const	$push20=, 16382
	i32.or  	$push21=, $pop19, $pop20
	i64.extend_u/i32	$push22=, $pop21
	i64.const	$push23=, 48
	i64.shl 	$push24=, $pop22, $pop23
	i64.const	$push16=, 281474976710655
	i64.and 	$push17=, $2, $pop16
	i64.or  	$2=, $pop24, $pop17
	br      	2
.LBB111_5:
	end_block
	i32.const	$4=, 0
.LBB111_6:
	end_block
	i32.store	0($3), $4
.LBB111_7:
	end_block
	i64.store	0($0), $1
	i32.const	$push25=, 8
	i32.add 	$push26=, $0, $pop25
	i64.store	0($pop26), $2
	i32.const	$push33=, 0
	i32.const	$push31=, 32
	i32.add 	$push32=, $6, $pop31
	i32.store	__stack_pointer($pop33), $pop32
	.endfunc
.Lfunc_end111:
	.size	frexpl, .Lfunc_end111-frexpl

	.hidden	wcrtomb
	.globl	wcrtomb
	.type	wcrtomb,@function
wcrtomb:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32
	i32.const	$3=, 1
	block   	
	i32.eqz 	$push71=, $0
	br_if   	0, $pop71
	block   	
	i32.const	$push0=, 127
	i32.gt_u	$push1=, $1, $pop0
	br_if   	0, $pop1
	i32.store8	0($0), $1
	i32.const	$push63=, 1
	return  	$pop63
.LBB112_3:
	end_block
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push2=, 0
	i32.load	$push3=, 0($pop2)
	i32.eqz 	$push72=, $pop3
	br_if   	0, $pop72
	i32.const	$push4=, 2047
	i32.gt_u	$push5=, $1, $pop4
	br_if   	1, $pop5
	i32.const	$push46=, 63
	i32.and 	$push47=, $1, $pop46
	i32.const	$push48=, 128
	i32.or  	$push49=, $pop47, $pop48
	i32.store8	1($0), $pop49
	i32.const	$push50=, 6
	i32.shr_u	$push51=, $1, $pop50
	i32.const	$push52=, 192
	i32.or  	$push53=, $pop51, $pop52
	i32.store8	0($0), $pop53
	i32.const	$push61=, 2
	return  	$pop61
.LBB112_6:
	end_block
	i32.const	$push54=, -128
	i32.and 	$push55=, $1, $pop54
	i32.const	$push56=, 57216
	i32.ne  	$push57=, $pop55, $pop56
	br_if   	1, $pop57
	i32.store8	0($0), $1
	i32.const	$push64=, 1
	return  	$pop64
.LBB112_8:
	end_block
	i32.const	$push8=, 55296
	i32.lt_u	$push9=, $1, $pop8
	br_if   	1, $pop9
	i32.const	$push7=, -8192
	i32.and 	$push6=, $1, $pop7
	i32.const	$push10=, 57344
	i32.eq  	$push11=, $pop6, $pop10
	br_if   	1, $pop11
	i32.const	$push12=, -65536
	i32.add 	$push13=, $1, $pop12
	i32.const	$push14=, 1048575
	i32.gt_u	$push15=, $pop13, $pop14
	br_if   	2, $pop15
	i32.const	$push18=, 18
	i32.shr_u	$push19=, $1, $pop18
	i32.const	$push20=, 240
	i32.or  	$push21=, $pop19, $pop20
	i32.store8	0($0), $pop21
	i32.const	$push22=, 63
	i32.and 	$push23=, $1, $pop22
	i32.const	$push24=, 128
	i32.or  	$push25=, $pop23, $pop24
	i32.store8	3($0), $pop25
	i32.const	$push26=, 12
	i32.shr_u	$push27=, $1, $pop26
	i32.const	$push68=, 63
	i32.and 	$push28=, $pop27, $pop68
	i32.const	$push67=, 128
	i32.or  	$push29=, $pop28, $pop67
	i32.store8	1($0), $pop29
	i32.const	$push30=, 6
	i32.shr_u	$push31=, $1, $pop30
	i32.const	$push66=, 63
	i32.and 	$push32=, $pop31, $pop66
	i32.const	$push65=, 128
	i32.or  	$push33=, $pop32, $pop65
	i32.store8	2($0), $pop33
	i32.const	$push60=, 4
	return  	$pop60
.LBB112_12:
	end_block
	i32.call	$push58=, __errno_location@FUNCTION
	i32.const	$push59=, 84
	i32.store	0($pop58), $pop59
	br      	2
.LBB112_13:
	end_block
	i32.const	$push34=, 12
	i32.shr_u	$push35=, $1, $pop34
	i32.const	$push36=, 224
	i32.or  	$push37=, $pop35, $pop36
	i32.store8	0($0), $pop37
	i32.const	$push38=, 63
	i32.and 	$push39=, $1, $pop38
	i32.const	$push40=, 128
	i32.or  	$push41=, $pop39, $pop40
	i32.store8	2($0), $pop41
	i32.const	$push42=, 6
	i32.shr_u	$push43=, $1, $pop42
	i32.const	$push70=, 63
	i32.and 	$push44=, $pop43, $pop70
	i32.const	$push69=, 128
	i32.or  	$push45=, $pop44, $pop69
	i32.store8	1($0), $pop45
	i32.const	$push62=, 3
	return  	$pop62
.LBB112_14:
	end_block
	i32.call	$push16=, __errno_location@FUNCTION
	i32.const	$push17=, 84
	i32.store	0($pop16), $pop17
.LBB112_15:
	end_block
	i32.const	$3=, -1
.LBB112_16:
	end_block
	copy_local	$push73=, $3
	.endfunc
.Lfunc_end112:
	.size	wcrtomb, .Lfunc_end112-wcrtomb

	.hidden	memchr
	.globl	memchr
	.type	memchr,@function
memchr:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32
	i32.const	$6=, 0
	i32.const	$push26=, 0
	i32.ne  	$4=, $2, $pop26
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.eqz 	$push47=, $2
	br_if   	0, $pop47
	i32.const	$push2=, 3
	i32.and 	$push1=, $0, $pop2
	i32.eqz 	$push48=, $pop1
	br_if   	1, $pop48
	i32.const	$push4=, 255
	i32.and 	$3=, $1, $pop4
.LBB113_3:
	loop    	
	i32.load8_u	$push5=, 0($0)
	i32.eq  	$push6=, $pop5, $3
	br_if   	4, $pop6
	i32.const	$push30=, 1
	i32.ne  	$4=, $2, $pop30
	i32.const	$push29=, -1
	i32.add 	$5=, $2, $pop29
	i32.const	$push28=, 1
	i32.add 	$0=, $0, $pop28
	i32.const	$push27=, 1
	i32.eq  	$push8=, $2, $pop27
	br_if   	3, $pop8
	copy_local	$2=, $5
	i32.const	$push31=, 3
	i32.and 	$push7=, $0, $pop31
	br_if   	0, $pop7
	br      	3
.LBB113_6:
	end_loop
	end_block
	copy_local	$5=, $2
	br_if   	3, $4
	br      	4
.LBB113_7:
	end_block
	copy_local	$5=, $2
.LBB113_8:
	end_block
	br_if   	1, $4
	br      	2
.LBB113_9:
	end_block
	copy_local	$5=, $2
.LBB113_10:
	end_block
	block   	
	i32.load8_u	$push11=, 0($0)
	i32.const	$push9=, 255
	i32.and 	$push10=, $1, $pop9
	i32.eq  	$push12=, $pop11, $pop10
	br_if   	0, $pop12
	block   	
	block   	
	i32.const	$push32=, 4
	i32.lt_u	$push14=, $5, $pop32
	br_if   	0, $pop14
	i32.const	$push3=, 255
	i32.and 	$push0=, $1, $pop3
	i32.const	$push13=, 16843009
	i32.mul 	$4=, $pop0, $pop13
.LBB113_13:
	loop    	
	i32.load	$push15=, 0($0)
	i32.xor 	$push37=, $pop15, $4
	tee_local	$push36=, $2=, $pop37
	i32.const	$push35=, -1
	i32.xor 	$push17=, $pop36, $pop35
	i32.const	$push34=, -16843009
	i32.add 	$push16=, $2, $pop34
	i32.and 	$push18=, $pop17, $pop16
	i32.const	$push33=, -2139062144
	i32.and 	$push19=, $pop18, $pop33
	br_if   	2, $pop19
	i32.const	$push42=, 4
	i32.add 	$0=, $0, $pop42
	i32.const	$push41=, -4
	i32.add 	$push40=, $5, $pop41
	tee_local	$push39=, $5=, $pop40
	i32.const	$push38=, 3
	i32.gt_u	$push20=, $pop39, $pop38
	br_if   	0, $pop20
.LBB113_15:
	end_loop
	end_block
	i32.eqz 	$push49=, $5
	br_if   	2, $pop49
.LBB113_16:
	end_block
	i32.const	$push21=, 255
	i32.and 	$2=, $1, $pop21
.LBB113_17:
	loop    	
	i32.load8_u	$push22=, 0($0)
	i32.eq  	$push23=, $pop22, $2
	br_if   	1, $pop23
	i32.const	$push46=, 1
	i32.add 	$0=, $0, $pop46
	i32.const	$push45=, -1
	i32.add 	$push44=, $5, $pop45
	tee_local	$push43=, $5=, $pop44
	br_if   	0, $pop43
	br      	2
.LBB113_19:
	end_loop
	end_block
	copy_local	$6=, $5
.LBB113_20:
	end_block
	i32.const	$push24=, 0
	i32.select	$push25=, $0, $pop24, $6
	.endfunc
.Lfunc_end113:
	.size	memchr, .Lfunc_end113-memchr

	.hidden	__lctrans
	.globl	__lctrans
	.type	__lctrans,@function
__lctrans:
	.param  	i32, i32
	.result 	i32
	i32.call	$push0=, __lctrans_impl@FUNCTION, $0, $1
	.endfunc
.Lfunc_end114:
	.size	__lctrans, .Lfunc_end114-__lctrans

	.hidden	__lctrans_impl
	.globl	__lctrans_impl
	.type	__lctrans_impl,@function
__lctrans_impl:
	.param  	i32, i32
	.result 	i32
	block   	
	i32.eqz 	$push8=, $1
	br_if   	0, $pop8
	i32.load	$push1=, 0($1)
	i32.load	$push0=, 4($1)
	i32.call	$push6=, __mo_lookup@FUNCTION, $pop1, $pop0, $0
	tee_local	$push5=, $1=, $pop6
	i32.select	$push3=, $pop5, $0, $1
	return  	$pop3
.LBB115_2:
	end_block
	i32.const	$push4=, 0
	i32.const	$push7=, 0
	i32.select	$push2=, $pop4, $0, $pop7
	.endfunc
.Lfunc_end115:
	.size	__lctrans_impl, .Lfunc_end115-__lctrans_impl

	.hidden	__mo_lookup
	.globl	__mo_lookup
	.type	__mo_lookup,@function
__mo_lookup:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	block   	
	block   	
	block   	
	block   	
	i32.load	$push172=, 8($0)
	tee_local	$push171=, $4=, $pop172
	i32.const	$push170=, 24
	i32.shl 	$push24=, $4, $pop170
	i32.const	$push169=, 8
	i32.shl 	$push25=, $4, $pop169
	i32.const	$push168=, 16711680
	i32.and 	$push26=, $pop25, $pop168
	i32.or  	$push27=, $pop24, $pop26
	i32.const	$push167=, 8
	i32.shr_u	$push21=, $4, $pop167
	i32.const	$push166=, 65280
	i32.and 	$push22=, $pop21, $pop166
	i32.const	$push165=, 24
	i32.shr_u	$push20=, $4, $pop165
	i32.or  	$push23=, $pop22, $pop20
	i32.or  	$push164=, $pop27, $pop23
	tee_local	$push163=, $9=, $pop164
	i32.load	$push162=, 0($0)
	tee_local	$push161=, $3=, $pop162
	i32.const	$push10=, -1794895138
	i32.eq  	$push160=, $pop161, $pop10
	tee_local	$push159=, $10=, $pop160
	i32.select	$push158=, $pop171, $pop163, $pop159
	tee_local	$push157=, $5=, $pop158
	i32.const	$push156=, 2
	i32.shr_u	$push28=, $1, $pop156
	i32.ge_u	$push29=, $pop157, $pop28
	br_if   	0, $pop29
	i32.load	$push185=, 12($0)
	tee_local	$push184=, $11=, $pop185
	i32.const	$push183=, 24
	i32.shl 	$push15=, $11, $pop183
	i32.const	$push182=, 8
	i32.shl 	$push16=, $11, $pop182
	i32.const	$push181=, 16711680
	i32.and 	$push17=, $pop16, $pop181
	i32.or  	$push18=, $pop15, $pop17
	i32.const	$push180=, 8
	i32.shr_u	$push12=, $11, $pop180
	i32.const	$push179=, 65280
	i32.and 	$push13=, $pop12, $pop179
	i32.const	$push178=, 24
	i32.shr_u	$push11=, $11, $pop178
	i32.or  	$push14=, $pop13, $pop11
	i32.or  	$push19=, $pop18, $pop14
	i32.select	$push177=, $pop184, $pop19, $10
	tee_local	$push176=, $6=, $pop177
	i32.const	$push175=, 2
	i32.shl 	$push30=, $5, $pop175
	i32.sub 	$push174=, $1, $pop30
	tee_local	$push173=, $12=, $pop174
	i32.ge_u	$push31=, $pop176, $pop173
	br_if   	1, $pop31
	i32.load	$push195=, 16($0)
	tee_local	$push194=, $11=, $pop195
	i32.const	$push193=, 24
	i32.shl 	$push5=, $11, $pop193
	i32.const	$push192=, 8
	i32.shl 	$push6=, $11, $pop192
	i32.const	$push191=, 16711680
	i32.and 	$push7=, $pop6, $pop191
	i32.or  	$push8=, $pop5, $pop7
	i32.const	$push190=, 8
	i32.shr_u	$push2=, $11, $pop190
	i32.const	$push189=, 65280
	i32.and 	$push3=, $pop2, $pop189
	i32.const	$push188=, 24
	i32.shr_u	$push1=, $11, $pop188
	i32.or  	$push4=, $pop3, $pop1
	i32.or  	$push9=, $pop8, $pop4
	i32.select	$push187=, $pop194, $pop9, $10
	tee_local	$push186=, $10=, $pop187
	i32.ge_u	$push32=, $pop186, $12
	br_if   	2, $pop32
	i32.or  	$push33=, $10, $6
	i32.const	$push34=, 3
	i32.and 	$push35=, $pop33, $pop34
	i32.eqz 	$push330=, $pop35
	br_if   	3, $pop330
	i32.const	$push151=, 0
	return  	$pop151
.LBB116_5:
	end_block
	i32.const	$push154=, 0
	return  	$pop154
.LBB116_6:
	end_block
	i32.const	$push153=, 0
	return  	$pop153
.LBB116_7:
	end_block
	i32.const	$push152=, 0
	return  	$pop152
.LBB116_8:
	end_block
	i32.const	$push196=, 2
	i32.shr_u	$12=, $6, $pop196
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	block   	
	i32.const	$push36=, -1794895138
	i32.ne  	$push37=, $3, $pop36
	br_if   	0, $pop37
	i32.const	$push91=, 1
	i32.shr_u	$push206=, $5, $pop91
	tee_local	$push205=, $5=, $pop206
	i32.const	$push204=, 1
	i32.shl 	$push203=, $pop205, $pop204
	tee_local	$push202=, $6=, $pop203
	i32.add 	$push92=, $pop202, $12
	i32.const	$push201=, 2
	i32.shl 	$push93=, $pop92, $pop201
	i32.add 	$push200=, $0, $pop93
	tee_local	$push199=, $9=, $pop200
	i32.const	$push94=, 4
	i32.add 	$push95=, $pop199, $pop94
	i32.load	$push198=, 0($pop95)
	tee_local	$push197=, $11=, $pop198
	i32.ge_u	$push96=, $pop197, $1
	br_if   	1, $pop96
	i32.load	$push208=, 0($9)
	tee_local	$push207=, $8=, $pop208
	i32.sub 	$push90=, $1, $11
	i32.ge_u	$push97=, $pop207, $pop90
	br_if   	2, $pop97
	copy_local	$9=, $5
	i32.const	$7=, 0
.LBB116_12:
	loop    	
	i32.add 	$push98=, $11, $8
	i32.add 	$push99=, $0, $pop98
	i32.load8_u	$push100=, 0($pop99)
	br_if   	8, $pop100
	i32.add 	$push101=, $0, $11
	i32.call	$push210=, strcmp@FUNCTION, $2, $pop101
	tee_local	$push209=, $11=, $pop210
	i32.eqz 	$push331=, $pop209
	br_if   	6, $pop331
	i32.const	$push211=, 1
	i32.eq  	$push102=, $4, $pop211
	br_if   	10, $pop102
	i32.const	$13=, 0
	i32.const	$push232=, 0
	i32.lt_s	$push231=, $11, $pop232
	tee_local	$push230=, $11=, $pop231
	i32.select	$push229=, $7, $5, $pop230
	tee_local	$push228=, $7=, $pop229
	i32.sub 	$push104=, $4, $9
	i32.select	$push227=, $9, $pop104, $11
	tee_local	$push226=, $4=, $pop227
	i32.const	$push225=, 1
	i32.shr_u	$push224=, $pop226, $pop225
	tee_local	$push223=, $9=, $pop224
	i32.add 	$push222=, $pop228, $pop223
	tee_local	$push221=, $5=, $pop222
	i32.const	$push220=, 1
	i32.shl 	$push219=, $pop221, $pop220
	tee_local	$push218=, $6=, $pop219
	i32.add 	$push105=, $pop218, $12
	i32.const	$push217=, 2
	i32.shl 	$push106=, $pop105, $pop217
	i32.add 	$push216=, $0, $pop106
	tee_local	$push215=, $8=, $pop216
	i32.const	$push214=, 4
	i32.add 	$push107=, $pop215, $pop214
	i32.load	$push213=, 0($pop107)
	tee_local	$push212=, $11=, $pop213
	i32.ge_u	$push108=, $pop212, $1
	br_if   	7, $pop108
	i32.load	$push234=, 0($8)
	tee_local	$push233=, $8=, $pop234
	i32.sub 	$push103=, $1, $11
	i32.lt_u	$push109=, $pop233, $pop103
	br_if   	0, $pop109
	br      	7
.LBB116_17:
	end_loop
	end_block
	i32.const	$push39=, 1
	i32.shr_u	$push252=, $9, $pop39
	tee_local	$push251=, $8=, $pop252
	i32.const	$push250=, 1
	i32.shl 	$push249=, $pop251, $pop250
	tee_local	$push248=, $6=, $pop249
	i32.add 	$push40=, $pop248, $12
	i32.const	$push247=, 2
	i32.shl 	$push41=, $pop40, $pop247
	i32.add 	$push246=, $0, $pop41
	tee_local	$push245=, $11=, $pop246
	i32.const	$push50=, 4
	i32.add 	$push51=, $pop245, $pop50
	i32.load	$push244=, 0($pop51)
	tee_local	$push243=, $4=, $pop244
	i32.const	$push242=, 24
	i32.shl 	$push56=, $pop243, $pop242
	i32.const	$push241=, 8
	i32.shl 	$push57=, $4, $pop241
	i32.const	$push240=, 16711680
	i32.and 	$push58=, $pop57, $pop240
	i32.or  	$push59=, $pop56, $pop58
	i32.const	$push239=, 8
	i32.shr_u	$push53=, $4, $pop239
	i32.const	$push238=, 65280
	i32.and 	$push54=, $pop53, $pop238
	i32.const	$push237=, 24
	i32.shr_u	$push52=, $4, $pop237
	i32.or  	$push55=, $pop54, $pop52
	i32.or  	$push236=, $pop59, $pop55
	tee_local	$push235=, $4=, $pop236
	i32.ge_u	$push60=, $pop235, $1
	br_if   	2, $pop60
	i32.load	$push262=, 0($11)
	tee_local	$push261=, $11=, $pop262
	i32.const	$push260=, 24
	i32.shl 	$push46=, $pop261, $pop260
	i32.const	$push259=, 8
	i32.shl 	$push47=, $11, $pop259
	i32.const	$push258=, 16711680
	i32.and 	$push48=, $pop47, $pop258
	i32.or  	$push49=, $pop46, $pop48
	i32.const	$push257=, 8
	i32.shr_u	$push43=, $11, $pop257
	i32.const	$push256=, 65280
	i32.and 	$push44=, $pop43, $pop256
	i32.const	$push255=, 24
	i32.shr_u	$push42=, $11, $pop255
	i32.or  	$push45=, $pop44, $pop42
	i32.or  	$push254=, $pop49, $pop45
	tee_local	$push253=, $11=, $pop254
	i32.sub 	$push38=, $1, $4
	i32.ge_u	$push61=, $pop253, $pop38
	br_if   	3, $pop61
	copy_local	$5=, $8
	i32.const	$7=, 0
.LBB116_20:
	loop    	
	i32.add 	$push62=, $4, $11
	i32.add 	$push63=, $0, $pop62
	i32.load8_u	$push64=, 0($pop63)
	br_if   	8, $pop64
	i32.add 	$push65=, $0, $4
	i32.call	$push264=, strcmp@FUNCTION, $2, $pop65
	tee_local	$push263=, $4=, $pop264
	i32.eqz 	$push332=, $pop263
	br_if   	5, $pop332
	i32.const	$push265=, 1
	i32.eq  	$push66=, $9, $pop265
	br_if   	10, $pop66
	i32.const	$13=, 0
	i32.const	$push294=, 0
	i32.lt_s	$push293=, $4, $pop294
	tee_local	$push292=, $4=, $pop293
	i32.select	$push291=, $7, $8, $pop292
	tee_local	$push290=, $7=, $pop291
	i32.sub 	$push68=, $9, $5
	i32.select	$push289=, $5, $pop68, $4
	tee_local	$push288=, $9=, $pop289
	i32.const	$push287=, 1
	i32.shr_u	$push286=, $pop288, $pop287
	tee_local	$push285=, $5=, $pop286
	i32.add 	$push284=, $pop290, $pop285
	tee_local	$push283=, $8=, $pop284
	i32.const	$push282=, 1
	i32.shl 	$push281=, $pop283, $pop282
	tee_local	$push280=, $6=, $pop281
	i32.add 	$push69=, $pop280, $12
	i32.const	$push279=, 2
	i32.shl 	$push70=, $pop69, $pop279
	i32.add 	$push278=, $0, $pop70
	tee_local	$push277=, $11=, $pop278
	i32.const	$push276=, 4
	i32.add 	$push79=, $pop277, $pop276
	i32.load	$push275=, 0($pop79)
	tee_local	$push274=, $4=, $pop275
	i32.const	$push273=, 24
	i32.shl 	$push84=, $pop274, $pop273
	i32.const	$push272=, 8
	i32.shl 	$push85=, $4, $pop272
	i32.const	$push271=, 16711680
	i32.and 	$push86=, $pop85, $pop271
	i32.or  	$push87=, $pop84, $pop86
	i32.const	$push270=, 8
	i32.shr_u	$push81=, $4, $pop270
	i32.const	$push269=, 65280
	i32.and 	$push82=, $pop81, $pop269
	i32.const	$push268=, 24
	i32.shr_u	$push80=, $4, $pop268
	i32.or  	$push83=, $pop82, $pop80
	i32.or  	$push267=, $pop87, $pop83
	tee_local	$push266=, $4=, $pop267
	i32.ge_u	$push88=, $pop266, $1
	br_if   	6, $pop88
	i32.load	$push304=, 0($11)
	tee_local	$push303=, $11=, $pop304
	i32.const	$push302=, 24
	i32.shl 	$push75=, $pop303, $pop302
	i32.const	$push301=, 8
	i32.shl 	$push76=, $11, $pop301
	i32.const	$push300=, 16711680
	i32.and 	$push77=, $pop76, $pop300
	i32.or  	$push78=, $pop75, $pop77
	i32.const	$push299=, 8
	i32.shr_u	$push72=, $11, $pop299
	i32.const	$push298=, 65280
	i32.and 	$push73=, $pop72, $pop298
	i32.const	$push297=, 24
	i32.shr_u	$push71=, $11, $pop297
	i32.or  	$push74=, $pop73, $pop71
	i32.or  	$push296=, $pop78, $pop74
	tee_local	$push295=, $11=, $pop296
	i32.sub 	$push67=, $1, $4
	i32.lt_u	$push89=, $pop295, $pop67
	br_if   	0, $pop89
	br      	6
.LBB116_25:
	end_loop
	end_block
	i32.const	$push146=, 0
	return  	$pop146
.LBB116_26:
	end_block
	i32.const	$push145=, 0
	return  	$pop145
.LBB116_27:
	end_block
	i32.const	$push150=, 0
	return  	$pop150
.LBB116_28:
	end_block
	i32.const	$push149=, 0
	return  	$pop149
.LBB116_29:
	end_block
	i32.const	$push319=, 2
	i32.shr_u	$push0=, $10, $pop319
	i32.add 	$push111=, $6, $pop0
	i32.const	$push112=, 2
	i32.shl 	$push113=, $pop111, $pop112
	i32.add 	$push318=, $0, $pop113
	tee_local	$push317=, $10=, $pop318
	i32.const	$push124=, 4
	i32.add 	$push125=, $pop317, $pop124
	i32.load	$push316=, 0($pop125)
	tee_local	$push315=, $4=, $pop316
	i32.const	$push314=, 24
	i32.shl 	$push130=, $4, $pop314
	i32.const	$push313=, 8
	i32.shl 	$push131=, $4, $pop313
	i32.const	$push312=, 16711680
	i32.and 	$push132=, $pop131, $pop312
	i32.or  	$push133=, $pop130, $pop132
	i32.const	$push311=, 8
	i32.shr_u	$push127=, $4, $pop311
	i32.const	$push310=, 65280
	i32.and 	$push128=, $pop127, $pop310
	i32.const	$push309=, 24
	i32.shr_u	$push126=, $4, $pop309
	i32.or  	$push129=, $pop128, $pop126
	i32.or  	$push134=, $pop133, $pop129
	i32.const	$push123=, -1794895138
	i32.eq  	$push308=, $3, $pop123
	tee_local	$push307=, $9=, $pop308
	i32.select	$push306=, $pop315, $pop134, $pop307
	tee_local	$push305=, $11=, $pop306
	i32.ge_u	$push135=, $pop305, $1
	br_if   	5, $pop135
	i32.const	$13=, 0
	i32.load	$push329=, 0($10)
	tee_local	$push328=, $4=, $pop329
	i32.const	$push327=, 24
	i32.shl 	$push118=, $4, $pop327
	i32.const	$push326=, 8
	i32.shl 	$push119=, $4, $pop326
	i32.const	$push325=, 16711680
	i32.and 	$push120=, $pop119, $pop325
	i32.or  	$push121=, $pop118, $pop120
	i32.const	$push324=, 8
	i32.shr_u	$push115=, $4, $pop324
	i32.const	$push323=, 65280
	i32.and 	$push116=, $pop115, $pop323
	i32.const	$push322=, 24
	i32.shr_u	$push114=, $4, $pop322
	i32.or  	$push117=, $pop116, $pop114
	i32.or  	$push122=, $pop121, $pop117
	i32.select	$push321=, $pop328, $pop122, $9
	tee_local	$push320=, $4=, $pop321
	i32.sub 	$push110=, $1, $11
	i32.ge_u	$push136=, $pop320, $pop110
	br_if   	0, $pop136
	i32.const	$push141=, 0
	i32.add 	$push137=, $0, $11
	i32.add 	$push138=, $11, $4
	i32.add 	$push139=, $0, $pop138
	i32.load8_u	$push140=, 0($pop139)
	i32.select	$push155=, $pop141, $pop137, $pop140
	return  	$pop155
.LBB116_32:
	end_block
	return  	$13
.LBB116_33:
	end_block
	i32.const	$push144=, 0
	return  	$pop144
.LBB116_34:
	end_block
	i32.const	$push148=, 0
	return  	$pop148
.LBB116_35:
	end_block
	i32.const	$push143=, 0
	return  	$pop143
.LBB116_36:
	end_block
	i32.const	$push147=, 0
	return  	$pop147
.LBB116_37:
	end_block
	i32.const	$push142=, 0
	.endfunc
.Lfunc_end116:
	.size	__mo_lookup, .Lfunc_end116-__mo_lookup

	.hidden	strcmp
	.globl	strcmp
	.type	strcmp,@function
strcmp:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32
	i32.load8_u	$3=, 0($1)
	block   	
	i32.load8_u	$push8=, 0($0)
	tee_local	$push7=, $2=, $pop8
	i32.eqz 	$push17=, $pop7
	br_if   	0, $pop17
	i32.const	$push9=, 255
	i32.and 	$push0=, $3, $pop9
	i32.ne  	$push1=, $2, $pop0
	br_if   	0, $pop1
	i32.const	$push11=, 1
	i32.add 	$0=, $0, $pop11
	i32.const	$push10=, 1
	i32.add 	$1=, $1, $pop10
.LBB117_3:
	loop    	
	i32.load8_u	$3=, 0($1)
	i32.load8_u	$push13=, 0($0)
	tee_local	$push12=, $2=, $pop13
	i32.eqz 	$push18=, $pop12
	br_if   	1, $pop18
	i32.const	$push16=, 1
	i32.add 	$0=, $0, $pop16
	i32.const	$push15=, 1
	i32.add 	$1=, $1, $pop15
	i32.const	$push14=, 255
	i32.and 	$push2=, $3, $pop14
	i32.eq  	$push3=, $2, $pop2
	br_if   	0, $pop3
.LBB117_5:
	end_loop
	end_block
	i32.const	$push4=, 255
	i32.and 	$push5=, $3, $pop4
	i32.sub 	$push6=, $2, $pop5
	.endfunc
.Lfunc_end117:
	.size	strcmp, .Lfunc_end117-strcmp

	.hidden	__towrite
	.globl	__towrite
	.type	__towrite,@function
__towrite:
	.param  	i32
	.result 	i32
	.local  	i32
	i32.load8_s	$push15=, 74($0)
	tee_local	$push14=, $1=, $pop15
	i32.const	$push0=, 255
	i32.add 	$push1=, $pop14, $pop0
	i32.or  	$push2=, $pop1, $1
	i32.store8	74($0), $pop2
	block   	
	i32.load	$push13=, 0($0)
	tee_local	$push12=, $1=, $pop13
	i32.const	$push3=, 8
	i32.and 	$push4=, $pop12, $pop3
	br_if   	0, $pop4
	i64.const	$push7=, 0
	i64.store	4($0):p2align=2, $pop7
	i32.load	$push17=, 44($0)
	tee_local	$push16=, $1=, $pop17
	i32.store	28($0), $pop16
	i32.store	20($0), $1
	i32.load	$push8=, 48($0)
	i32.add 	$push9=, $1, $pop8
	i32.store	16($0), $pop9
	i32.const	$push10=, 0
	return  	$pop10
.LBB118_2:
	end_block
	i32.const	$push5=, 32
	i32.or  	$push6=, $1, $pop5
	i32.store	0($0), $pop6
	i32.const	$push11=, -1
	.endfunc
.Lfunc_end118:
	.size	__towrite, .Lfunc_end118-__towrite

	.hidden	memcmp
	.globl	memcmp
	.type	memcmp,@function
memcmp:
	.param  	i32, i32, i32
	.result 	i32
	.local  	i32, i32, i32
	i32.const	$5=, 0
	block   	
	i32.eqz 	$push10=, $2
	br_if   	0, $pop10
.LBB119_2:
	block   	
	loop    	
	i32.load8_u	$push4=, 0($0)
	tee_local	$push3=, $3=, $pop4
	i32.load8_u	$push2=, 0($1)
	tee_local	$push1=, $4=, $pop2
	i32.ne  	$push0=, $pop3, $pop1
	br_if   	1, $pop0
	i32.const	$push9=, 1
	i32.add 	$1=, $1, $pop9
	i32.const	$push8=, 1
	i32.add 	$0=, $0, $pop8
	i32.const	$push7=, -1
	i32.add 	$push6=, $2, $pop7
	tee_local	$push5=, $2=, $pop6
	br_if   	0, $pop5
	br      	2
.LBB119_4:
	end_loop
	end_block
	i32.sub 	$5=, $3, $4
.LBB119_5:
	end_block
	copy_local	$push11=, $5
	.endfunc
.Lfunc_end119:
	.size	memcmp, .Lfunc_end119-memcmp

	.hidden	strlen
	.globl	strlen
	.type	strlen,@function
strlen:
	.param  	i32
	.result 	i32
	.local  	i32, i32
	copy_local	$2=, $0
	block   	
	block   	
	i32.const	$push12=, 3
	i32.and 	$push0=, $0, $pop12
	i32.eqz 	$push28=, $pop0
	br_if   	0, $pop28
	copy_local	$2=, $0
.LBB120_2:
	loop    	
	i32.load8_u	$push1=, 0($2)
	i32.eqz 	$push29=, $pop1
	br_if   	2, $pop29
	i32.const	$push16=, 1
	i32.add 	$push15=, $2, $pop16
	tee_local	$push14=, $2=, $pop15
	i32.const	$push13=, 3
	i32.and 	$push2=, $pop14, $pop13
	br_if   	0, $pop2
.LBB120_4:
	end_loop
	end_block
	i32.const	$push3=, -4
	i32.add 	$2=, $2, $pop3
.LBB120_5:
	loop    	
	i32.const	$push24=, 4
	i32.add 	$push23=, $2, $pop24
	tee_local	$push22=, $2=, $pop23
	i32.load	$push21=, 0($pop22)
	tee_local	$push20=, $1=, $pop21
	i32.const	$push19=, -1
	i32.xor 	$push5=, $pop20, $pop19
	i32.const	$push18=, -16843009
	i32.add 	$push4=, $1, $pop18
	i32.and 	$push6=, $pop5, $pop4
	i32.const	$push17=, -2139062144
	i32.and 	$push7=, $pop6, $pop17
	i32.eqz 	$push30=, $pop7
	br_if   	0, $pop30
	end_loop
	i32.const	$push8=, 255
	i32.and 	$push9=, $1, $pop8
	i32.eqz 	$push31=, $pop9
	br_if   	0, $pop31
.LBB120_8:
	loop    	
	i32.const	$push27=, 1
	i32.add 	$push26=, $2, $pop27
	tee_local	$push25=, $2=, $pop26
	i32.load8_u	$push10=, 0($pop25)
	br_if   	0, $pop10
.LBB120_9:
	end_loop
	end_block
	i32.sub 	$push11=, $2, $0
	.endfunc
.Lfunc_end120:
	.size	strlen, .Lfunc_end120-strlen

	.hidden	malloc
	.globl	malloc
	.type	malloc,@function
malloc:
	.param  	i32
	.result 	i32
	i32.const	$push0=, _ZN5eosio11memory_heapE
	i32.call	$push1=, _ZN5eosio14memory_manager6mallocEm@FUNCTION, $pop0, $0
	.endfunc
.Lfunc_end121:
	.size	malloc, .Lfunc_end121-malloc

	.section	.text._ZN5eosio14memory_manager6mallocEm,"axG",@progbits,_ZN5eosio14memory_manager6mallocEm,comdat
	.hidden	_ZN5eosio14memory_manager6mallocEm
	.weak	_ZN5eosio14memory_manager6mallocEm
	.type	_ZN5eosio14memory_manager6mallocEm,@function
_ZN5eosio14memory_manager6mallocEm:
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32
	block   	
	i32.eqz 	$push128=, $1
	br_if   	0, $pop128
	block   	
	i32.load	$push63=, 8384($0)
	tee_local	$push62=, $13=, $pop63
	br_if   	0, $pop62
	i32.const	$13=, 16
	i32.const	$push0=, 8384
	i32.add 	$push1=, $0, $pop0
	i32.const	$push64=, 16
	i32.store	0($pop1), $pop64
.LBB122_3:
	end_block
	i32.const	$push2=, 8
	i32.add 	$push3=, $1, $pop2
	i32.const	$push69=, 4
	i32.add 	$push4=, $1, $pop69
	i32.const	$push5=, 7
	i32.and 	$push68=, $pop4, $pop5
	tee_local	$push67=, $2=, $pop68
	i32.sub 	$push6=, $pop3, $pop67
	i32.select	$2=, $pop6, $1, $2
	block   	
	block   	
	block   	
	i32.load	$push66=, 8388($0)
	tee_local	$push65=, $10=, $pop66
	i32.ge_u	$push7=, $pop65, $13
	br_if   	0, $pop7
	i32.const	$push8=, 12
	i32.mul 	$push9=, $10, $pop8
	i32.add 	$push10=, $0, $pop9
	i32.const	$push11=, 8192
	i32.add 	$1=, $pop10, $pop11
	block   	
	br_if   	0, $10
	i32.const	$push12=, 8196
	i32.add 	$push71=, $0, $pop12
	tee_local	$push70=, $13=, $pop71
	i32.load	$push13=, 0($pop70)
	br_if   	0, $pop13
	i32.const	$push14=, 8192
	i32.store	0($1), $pop14
	i32.store	0($13), $0
.LBB122_7:
	end_block
	i32.const	$push72=, 4
	i32.add 	$10=, $2, $pop72
.LBB122_8:
	loop    	
	block   	
	i32.load	$push74=, 8($1)
	tee_local	$push73=, $13=, $pop74
	i32.add 	$push15=, $pop73, $10
	i32.load	$push16=, 0($1)
	i32.gt_u	$push17=, $pop15, $pop16
	br_if   	0, $pop17
	i32.load	$push18=, 4($1)
	i32.add 	$push84=, $pop18, $13
	tee_local	$push83=, $13=, $pop84
	i32.load	$push19=, 0($13)
	i32.const	$push82=, -2147483648
	i32.and 	$push20=, $pop19, $pop82
	i32.or  	$push21=, $pop20, $2
	i32.store	0($pop83), $pop21
	i32.const	$push81=, 8
	i32.add 	$push80=, $1, $pop81
	tee_local	$push79=, $1=, $pop80
	i32.load	$push22=, 0($1)
	i32.add 	$push23=, $pop22, $10
	i32.store	0($pop79), $pop23
	i32.load	$push24=, 0($13)
	i32.const	$push78=, -2147483648
	i32.or  	$push25=, $pop24, $pop78
	i32.store	0($13), $pop25
	i32.const	$push77=, 4
	i32.add 	$push76=, $13, $pop77
	tee_local	$push75=, $1=, $pop76
	br_if   	3, $pop75
.LBB122_10:
	end_block
	i32.call	$push86=, _ZN5eosio14memory_manager16next_active_heapEv@FUNCTION, $0
	tee_local	$push85=, $1=, $pop86
	br_if   	0, $pop85
.LBB122_11:
	end_loop
	end_block
	i32.const	$push26=, 2147483644
	i32.sub 	$4=, $pop26, $2
	i32.const	$push55=, 8392
	i32.add 	$11=, $0, $pop55
	i32.const	$push57=, 8384
	i32.add 	$12=, $0, $pop57
	i32.load	$push88=, 8392($0)
	tee_local	$push87=, $3=, $pop88
	copy_local	$13=, $pop87
.LBB122_12:
	loop    	
	i32.const	$push100=, 12
	i32.mul 	$push27=, $13, $pop100
	i32.add 	$push99=, $0, $pop27
	tee_local	$push98=, $1=, $pop99
	i32.const	$push97=, 8200
	i32.add 	$push29=, $pop98, $pop97
	i32.load	$push30=, 0($pop29)
	i32.const	$push96=, 8192
	i32.add 	$push95=, $1, $pop96
	tee_local	$push94=, $5=, $pop95
	i32.load	$push28=, 0($pop94)
	i32.eq  	$push31=, $pop30, $pop28
	i32.const	$push93=, .L.str.1.29
	call    	eosio_assert@FUNCTION, $pop31, $pop93
	i32.const	$push92=, 8196
	i32.add 	$push32=, $1, $pop92
	i32.load	$push91=, 0($pop32)
	tee_local	$push90=, $6=, $pop91
	i32.const	$push89=, 4
	i32.add 	$13=, $pop90, $pop89
.LBB122_13:
	loop    	
	i32.load	$push33=, 0($5)
	i32.add 	$7=, $6, $pop33
	i32.const	$push107=, -4
	i32.add 	$push106=, $13, $pop107
	tee_local	$push105=, $8=, $pop106
	i32.load	$push104=, 0($pop105)
	tee_local	$push103=, $9=, $pop104
	i32.const	$push102=, 2147483647
	i32.and 	$1=, $pop103, $pop102
	block   	
	i32.const	$push101=, 0
	i32.lt_s	$push34=, $9, $pop101
	br_if   	0, $pop34
	block   	
	i32.ge_u	$push35=, $1, $2
	br_if   	0, $pop35
.LBB122_15:
	loop    	
	i32.add 	$push109=, $13, $1
	tee_local	$push108=, $10=, $pop109
	i32.ge_u	$push36=, $pop108, $7
	br_if   	1, $pop36
	i32.load	$push112=, 0($10)
	tee_local	$push111=, $10=, $pop112
	i32.const	$push110=, 0
	i32.lt_s	$push37=, $pop111, $pop110
	br_if   	1, $pop37
	i32.const	$push116=, 2147483647
	i32.and 	$push38=, $10, $pop116
	i32.add 	$push39=, $1, $pop38
	i32.const	$push115=, 4
	i32.add 	$push114=, $pop39, $pop115
	tee_local	$push113=, $1=, $pop114
	i32.lt_u	$push40=, $pop113, $2
	br_if   	0, $pop40
.LBB122_18:
	end_loop
	end_block
	i32.lt_u	$push41=, $1, $2
	i32.select	$push42=, $1, $2, $pop41
	i32.const	$push117=, -2147483648
	i32.and 	$push43=, $9, $pop117
	i32.or  	$push44=, $pop42, $pop43
	i32.store	0($8), $pop44
	block   	
	i32.le_u	$push45=, $1, $2
	br_if   	0, $pop45
	i32.add 	$push46=, $13, $2
	i32.add 	$push47=, $4, $1
	i32.const	$push118=, 2147483647
	i32.and 	$push48=, $pop47, $pop118
	i32.store	0($pop46), $pop48
.LBB122_20:
	end_block
	i32.ge_u	$push49=, $1, $2
	br_if   	4, $pop49
.LBB122_21:
	end_block
	i32.add 	$push53=, $13, $1
	i32.const	$push121=, 4
	i32.add 	$push120=, $pop53, $pop121
	tee_local	$push119=, $13=, $pop120
	i32.lt_u	$push54=, $pop119, $7
	br_if   	0, $pop54
	end_loop
	i32.const	$1=, 0
	i32.const	$push127=, 0
	i32.load	$push56=, 0($11)
	i32.const	$push126=, 1
	i32.add 	$push125=, $pop56, $pop126
	tee_local	$push124=, $13=, $pop125
	i32.load	$push58=, 0($12)
	i32.eq  	$push59=, $13, $pop58
	i32.select	$push123=, $pop127, $pop124, $pop59
	tee_local	$push122=, $13=, $pop123
	i32.store	0($11), $pop122
	i32.ne  	$push60=, $13, $3
	br_if   	0, $pop60
.LBB122_23:
	end_loop
	end_block
	return  	$1
.LBB122_24:
	end_block
	i32.load	$push50=, 0($8)
	i32.const	$push51=, -2147483648
	i32.or  	$push52=, $pop50, $pop51
	i32.store	0($8), $pop52
	return  	$13
.LBB122_25:
	end_block
	i32.const	$push61=, 0
	.endfunc
.Lfunc_end122:
	.size	_ZN5eosio14memory_manager6mallocEm, .Lfunc_end122-_ZN5eosio14memory_manager6mallocEm

	.section	.text._ZN5eosio14memory_manager16next_active_heapEv,"axG",@progbits,_ZN5eosio14memory_manager16next_active_heapEv,comdat
	.hidden	_ZN5eosio14memory_manager16next_active_heapEv
	.weak	_ZN5eosio14memory_manager16next_active_heapEv
	.type	_ZN5eosio14memory_manager16next_active_heapEv,@function
_ZN5eosio14memory_manager16next_active_heapEv:
	.param  	i32
	.result 	i32
	.local  	i32, i32, i32, i32, i32, i32, i32, i32
	i32.load	$1=, 8388($0)
	block   	
	block   	
	i32.const	$push94=, 0
	i32.load8_u	$push2=, _ZZ4sbrkjE11initialized($pop94)
	i32.eqz 	$push157=, $pop2
	br_if   	0, $pop157
	i32.const	$push95=, 0
	i32.load	$7=, _ZZ4sbrkjE10sbrk_bytes($pop95)
	br      	1
.LBB123_2:
	end_block
	current_memory	$7=
	i32.const	$push99=, 0
	i32.const	$push3=, 1
	i32.store8	_ZZ4sbrkjE11initialized($pop99), $pop3
	i32.const	$push98=, 0
	i32.const	$push4=, 16
	i32.shl 	$push97=, $7, $pop4
	tee_local	$push96=, $7=, $pop97
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop98), $pop96
.LBB123_3:
	end_block
	copy_local	$3=, $7
	block   	
	block   	
	block   	
	block   	
	i32.const	$push5=, 65535
	i32.add 	$push6=, $7, $pop5
	i32.const	$push7=, 16
	i32.shr_u	$push103=, $pop6, $pop7
	tee_local	$push102=, $2=, $pop103
	current_memory	$push101=
	tee_local	$push100=, $8=, $pop101
	i32.le_u	$push8=, $pop102, $pop100
	br_if   	0, $pop8
	i32.sub 	$push9=, $2, $8
	grow_memory	$pop9
	i32.const	$8=, 0
	current_memory	$push10=
	i32.ne  	$push11=, $2, $pop10
	br_if   	1, $pop11
	i32.const	$push12=, 0
	i32.load	$3=, _ZZ4sbrkjE10sbrk_bytes($pop12)
.LBB123_6:
	end_block
	i32.const	$8=, 0
	i32.const	$push105=, 0
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop105), $3
	i32.const	$push104=, 0
	i32.lt_s	$push13=, $7, $pop104
	br_if   	0, $pop13
	i32.const	$push0=, 12
	i32.mul 	$push1=, $1, $pop0
	i32.add 	$2=, $0, $pop1
	i32.const	$push20=, 65536
	i32.const	$push19=, 131072
	i32.const	$push16=, 65535
	i32.and 	$push110=, $7, $pop16
	tee_local	$push109=, $8=, $pop110
	i32.const	$push17=, 64513
	i32.lt_u	$push108=, $pop109, $pop17
	tee_local	$push107=, $6=, $pop108
	i32.select	$push21=, $pop20, $pop19, $pop107
	i32.add 	$push22=, $7, $pop21
	i32.const	$push14=, 131071
	i32.and 	$push15=, $7, $pop14
	i32.select	$push18=, $8, $pop15, $6
	i32.sub 	$push23=, $pop22, $pop18
	i32.sub 	$7=, $pop23, $7
	block   	
	i32.const	$push106=, 0
	i32.load8_u	$push24=, _ZZ4sbrkjE11initialized($pop106)
	br_if   	0, $pop24
	current_memory	$3=
	i32.const	$push114=, 0
	i32.const	$push25=, 1
	i32.store8	_ZZ4sbrkjE11initialized($pop114), $pop25
	i32.const	$push113=, 0
	i32.const	$push26=, 16
	i32.shl 	$push112=, $3, $pop26
	tee_local	$push111=, $3=, $pop112
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop113), $pop111
.LBB123_9:
	end_block
	i32.const	$push116=, 8192
	i32.add 	$2=, $2, $pop116
	i32.const	$push115=, 0
	i32.lt_s	$push27=, $7, $pop115
	br_if   	1, $pop27
	copy_local	$6=, $3
	block   	
	i32.const	$push28=, 7
	i32.add 	$push29=, $7, $pop28
	i32.const	$push30=, -8
	i32.and 	$push122=, $pop29, $pop30
	tee_local	$push121=, $5=, $pop122
	i32.add 	$push31=, $pop121, $3
	i32.const	$push32=, 65535
	i32.add 	$push33=, $pop31, $pop32
	i32.const	$push34=, 16
	i32.shr_u	$push120=, $pop33, $pop34
	tee_local	$push119=, $8=, $pop120
	current_memory	$push118=
	tee_local	$push117=, $4=, $pop118
	i32.le_u	$push35=, $pop119, $pop117
	br_if   	0, $pop35
	i32.sub 	$push36=, $8, $4
	grow_memory	$pop36
	current_memory	$push37=
	i32.ne  	$push38=, $8, $pop37
	br_if   	2, $pop38
	i32.const	$push39=, 0
	i32.load	$6=, _ZZ4sbrkjE10sbrk_bytes($pop39)
.LBB123_13:
	end_block
	i32.const	$push41=, 0
	i32.add 	$push40=, $6, $5
	i32.store	_ZZ4sbrkjE10sbrk_bytes($pop41), $pop40
	i32.const	$push42=, -1
	i32.eq  	$push43=, $3, $pop42
	br_if   	1, $pop43
	i32.const	$push44=, 12
	i32.mul 	$push45=, $1, $pop44
	i32.add 	$push128=, $0, $pop45
	tee_local	$push127=, $1=, $pop128
	i32.const	$push46=, 8196
	i32.add 	$push47=, $pop127, $pop46
	i32.load	$push126=, 0($pop47)
	tee_local	$push125=, $6=, $pop126
	i32.load	$push124=, 0($2)
	tee_local	$push123=, $8=, $pop124
	i32.add 	$push48=, $pop125, $pop123
	i32.eq  	$push49=, $pop48, $3
	br_if   	2, $pop49
	block   	
	i32.const	$push50=, 8200
	i32.add 	$push132=, $1, $pop50
	tee_local	$push131=, $5=, $pop132
	i32.load	$push130=, 0($pop131)
	tee_local	$push129=, $1=, $pop130
	i32.eq  	$push51=, $8, $pop129
	br_if   	0, $pop51
	i32.add 	$push134=, $6, $1
	tee_local	$push133=, $6=, $pop134
	i32.load	$push55=, 0($6)
	i32.const	$push56=, -2147483648
	i32.and 	$push57=, $pop55, $pop56
	i32.const	$push52=, -4
	i32.sub 	$push53=, $pop52, $1
	i32.add 	$push54=, $pop53, $8
	i32.or  	$push58=, $pop57, $pop54
	i32.store	0($pop133), $pop58
	i32.load	$push59=, 0($2)
	i32.store	0($5), $pop59
	i32.load	$push60=, 0($6)
	i32.const	$push61=, 2147483647
	i32.and 	$push62=, $pop60, $pop61
	i32.store	0($6), $pop62
.LBB123_17:
	end_block
	i32.const	$push63=, 8388
	i32.add 	$push142=, $0, $pop63
	tee_local	$push141=, $2=, $pop142
	i32.load	$push64=, 0($2)
	i32.const	$push65=, 1
	i32.add 	$push140=, $pop64, $pop65
	tee_local	$push139=, $2=, $pop140
	i32.store	0($pop141), $pop139
	i32.const	$push66=, 12
	i32.mul 	$push67=, $2, $pop66
	i32.add 	$push138=, $0, $pop67
	tee_local	$push137=, $0=, $pop138
	i32.const	$push68=, 8196
	i32.add 	$push69=, $pop137, $pop68
	i32.store	0($pop69), $3
	i32.const	$push70=, 8192
	i32.add 	$push136=, $0, $pop70
	tee_local	$push135=, $8=, $pop136
	i32.store	0($pop135), $7
.LBB123_18:
	end_block
	return  	$8
.LBB123_19:
	end_block
	block   	
	i32.load	$push150=, 0($2)
	tee_local	$push149=, $8=, $pop150
	i32.const	$push72=, 12
	i32.mul 	$push73=, $1, $pop72
	i32.add 	$push148=, $0, $pop73
	tee_local	$push147=, $3=, $pop148
	i32.const	$push74=, 8200
	i32.add 	$push146=, $pop147, $pop74
	tee_local	$push145=, $1=, $pop146
	i32.load	$push144=, 0($pop145)
	tee_local	$push143=, $7=, $pop144
	i32.eq  	$push75=, $pop149, $pop143
	br_if   	0, $pop75
	i32.const	$push79=, 8196
	i32.add 	$push80=, $3, $pop79
	i32.load	$push81=, 0($pop80)
	i32.add 	$push152=, $pop81, $7
	tee_local	$push151=, $3=, $pop152
	i32.load	$push82=, 0($3)
	i32.const	$push83=, -2147483648
	i32.and 	$push84=, $pop82, $pop83
	i32.const	$push76=, -4
	i32.sub 	$push77=, $pop76, $7
	i32.add 	$push78=, $pop77, $8
	i32.or  	$push85=, $pop84, $pop78
	i32.store	0($pop151), $pop85
	i32.load	$push86=, 0($2)
	i32.store	0($1), $pop86
	i32.load	$push87=, 0($3)
	i32.const	$push88=, 2147483647
	i32.and 	$push89=, $pop87, $pop88
	i32.store	0($3), $pop89
.LBB123_21:
	end_block
	i32.const	$push90=, 8388
	i32.add 	$push156=, $0, $pop90
	tee_local	$push155=, $7=, $pop156
	i32.load	$push91=, 0($pop155)
	i32.const	$push92=, 1
	i32.add 	$push154=, $pop91, $pop92
	tee_local	$push153=, $3=, $pop154
	i32.store	8384($0), $pop153
	i32.store	0($7), $3
	i32.const	$push93=, 0
	return  	$pop93
.LBB123_22:
	end_block
	i32.add 	$push71=, $8, $7
	i32.store	0($2), $pop71
	copy_local	$push158=, $2
	.endfunc
.Lfunc_end123:
	.size	_ZN5eosio14memory_manager16next_active_heapEv, .Lfunc_end123-_ZN5eosio14memory_manager16next_active_heapEv

	.text
	.hidden	free
	.globl	free
	.type	free,@function
free:
	.param  	i32
	.local  	i32, i32, i32
	block   	
	block   	
	i32.eqz 	$push28=, $0
	br_if   	0, $pop28
	i32.const	$push0=, 0
	i32.load	$push16=, _ZN5eosio11memory_heapE+8384($pop0)
	tee_local	$push15=, $2=, $pop16
	i32.const	$push1=, 1
	i32.lt_s	$push2=, $pop15, $pop1
	br_if   	0, $pop2
	i32.const	$3=, _ZN5eosio11memory_heapE+8192
	i32.const	$push18=, 12
	i32.mul 	$push3=, $2, $pop18
	i32.const	$push17=, _ZN5eosio11memory_heapE+8192
	i32.add 	$1=, $pop3, $pop17
.LBB124_3:
	loop    	
	i32.const	$push21=, 4
	i32.add 	$push4=, $3, $pop21
	i32.load	$push20=, 0($pop4)
	tee_local	$push19=, $2=, $pop20
	i32.eqz 	$push29=, $pop19
	br_if   	1, $pop29
	block   	
	i32.const	$push22=, 4
	i32.add 	$push5=, $2, $pop22
	i32.gt_u	$push6=, $pop5, $0
	br_if   	0, $pop6
	i32.load	$push7=, 0($3)
	i32.add 	$push8=, $2, $pop7
	i32.gt_u	$push9=, $pop8, $0
	br_if   	3, $pop9
.LBB124_6:
	end_block
	i32.const	$push25=, 12
	i32.add 	$push24=, $3, $pop25
	tee_local	$push23=, $3=, $pop24
	i32.lt_u	$push14=, $pop23, $1
	br_if   	0, $pop14
.LBB124_7:
	end_loop
	end_block
	return
.LBB124_8:
	end_block
	i32.const	$push10=, -4
	i32.add 	$push27=, $0, $pop10
	tee_local	$push26=, $3=, $pop27
	i32.load	$push11=, 0($3)
	i32.const	$push12=, 2147483647
	i32.and 	$push13=, $pop11, $pop12
	i32.store	0($pop26), $pop13
	.endfunc
.Lfunc_end124:
	.size	free, .Lfunc_end124-free

	.type	.L.str,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid symbol name"
	.size	.L.str, 20

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"invalid supply"
	.size	.L.str.1, 15

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"max-supply must be positive"
	.size	.L.str.2, 28

	.type	.L.str.75,@object
.L.str.75:
	.asciz	"object passed to iterator_to is not in multi_index"
	.size	.L.str.75, 51

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"token with symbol already exists"
	.size	.L.str.3, 33

	.type	.L.str.49,@object
.L.str.49:
	.asciz	"cannot create objects in table of another contract"
	.size	.L.str.49, 51

	.type	.L.str.55,@object
.L.str.55:
	.asciz	"write"
	.size	.L.str.55, 6

	.type	.L.str.43,@object
.L.str.43:
	.asciz	"magnitude of asset amount must be less than 2^62"
	.size	.L.str.43, 49

	.type	.L.str.51,@object
.L.str.51:
	.asciz	"error reading iterator"
	.size	.L.str.51, 23

	.type	.L.str.52,@object
.L.str.52:
	.asciz	"read"
	.size	.L.str.52, 5

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"memo has more than 256 bytes"
	.size	.L.str.4, 29

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"token with symbol does not exist, create token before issue"
	.size	.L.str.5, 60

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"invalid quantity"
	.size	.L.str.6, 17

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"must issue positive quantity"
	.size	.L.str.7, 29

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"symbol precision mismatch"
	.size	.L.str.8, 26

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"quantity exceeds available supply"
	.size	.L.str.9, 34

	.type	.L.str.59,@object
.L.str.59:
	.asciz	"object passed to modify is not in multi_index"
	.size	.L.str.59, 46

	.type	.L.str.60,@object
.L.str.60:
	.asciz	"cannot modify objects in table of another contract"
	.size	.L.str.60, 51

	.type	.L.str.62,@object
.L.str.62:
	.asciz	"attempt to add asset with different symbol"
	.size	.L.str.62, 43

	.type	.L.str.63,@object
.L.str.63:
	.asciz	"addition underflow"
	.size	.L.str.63, 19

	.type	.L.str.64,@object
.L.str.64:
	.asciz	"addition overflow"
	.size	.L.str.64, 18

	.type	.L.str.61,@object
.L.str.61:
	.asciz	"updater cannot change primary key when modifying an object"
	.size	.L.str.61, 59

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"active"
	.size	.L.str.10, 7

	.type	.L.str.58,@object
.L.str.58:
	.asciz	"cannot pass end iterator to modify"
	.size	.L.str.58, 35

	.type	.L.str.11,@object
.L.str.11:
	.asciz	"cannot transfer to self"
	.size	.L.str.11, 24

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"to account does not exist"
	.size	.L.str.12, 26

	.type	.L.str.13,@object
.L.str.13:
	.asciz	"unable to find key"
	.size	.L.str.13, 19

	.type	.L.str.14,@object
.L.str.14:
	.asciz	"must transfer positive quantity"
	.size	.L.str.14, 32

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"no balance object found"
	.size	.L.str.15, 24

	.type	.L.str.16,@object
.L.str.16:
	.asciz	"overdrawn balance"
	.size	.L.str.16, 18

	.type	.L.str.45,@object
.L.str.45:
	.asciz	"attempt to subtract asset with different symbol"
	.size	.L.str.45, 48

	.type	.L.str.46,@object
.L.str.46:
	.asciz	"subtraction underflow"
	.size	.L.str.46, 22

	.type	.L.str.47,@object
.L.str.47:
	.asciz	"subtraction overflow"
	.size	.L.str.47, 21

	.type	.L.str.67,@object
.L.str.67:
	.asciz	"object passed to erase is not in multi_index"
	.size	.L.str.67, 45

	.type	.L.str.68,@object
.L.str.68:
	.asciz	"cannot erase objects in table of another contract"
	.size	.L.str.68, 50

	.type	.L.str.69,@object
.L.str.69:
	.asciz	"attempt to remove object that was not in multi_index"
	.size	.L.str.69, 53

	.type	.L.str.18,@object
.L.str.18:
	.asciz	"account does not exist"
	.size	.L.str.18, 23

	.type	.L.str.19,@object
.L.str.19:
	.asciz	"invalid offeror_asset"
	.size	.L.str.19, 22

	.type	.L.str.44,@object
.L.str.44:
	.asciz	"comparison of assets with different symbols is not allowed"
	.size	.L.str.44, 59

	.type	.L.str.21,@object
.L.str.21:
	.asciz	"must stake a positive amount"
	.size	.L.str.21, 29

	.type	.L.str.22,@object
.L.str.22:
	.asciz	"minimum stake required is '10.0000 HORUS'"
	.size	.L.str.22, 42

	.type	.L.str.23,@object
.L.str.23:
	.asciz	"not enough liquid HORUS to stake"
	.size	.L.str.23, 33

	.type	.L.str.57,@object
.L.str.57:
	.asciz	"insufficient staked total HORUS"
	.size	.L.str.57, 32

	.type	.L.str.65,@object
.L.str.65:
	.asciz	"cannot pass end iterator to erase"
	.size	.L.str.65, 34

	.type	.L.str.66,@object
.L.str.66:
	.asciz	"cannot increment end iterator"
	.size	.L.str.66, 30

	.type	.L.str.48,@object
.L.str.48:
	.asciz	"staked HORUS failed"
	.size	.L.str.48, 20

	.type	.L.str.50,@object
.L.str.50:
	.asciz	"next primary key in table is at autoincrement limit"
	.size	.L.str.50, 52

	.type	.L.str.53,@object
.L.str.53:
	.asciz	"cannot decrement end iterator when the table is empty"
	.size	.L.str.53, 54

	.type	.L.str.54,@object
.L.str.54:
	.asciz	"cannot decrement iterator at beginning of table"
	.size	.L.str.54, 48

	.type	.L.str.24,@object
.L.str.24:
	.asciz	"staked row does not exist"
	.size	.L.str.24, 26

	.type	.L.str.70,@object
.L.str.70:
	.asciz	"Modifing Refund\n"
	.size	.L.str.70, 17

	.type	.L.str.71,@object
.L.str.71:
	.asciz	"negative HORUS refund amount"
	.size	.L.str.71, 29

	.type	.L.str.72,@object
.L.str.72:
	.asciz	"Creating Refund\n"
	.size	.L.str.72, 17

	.type	.L.str.73,@object
.L.str.73:
	.asciz	"Creating deferred refund transaction\n"
	.size	.L.str.73, 38

	.type	.L.str.74,@object
.L.str.74:
	.asciz	"refundhorus"
	.size	.L.str.74, 12

	.type	.L.str.25,@object
.L.str.25:
	.asciz	"stake id does not exist"
	.size	.L.str.25, 24

	.type	.L.str.26,@object
.L.str.26:
	.asciz	"failed to retrieved stake id"
	.size	.L.str.26, 29

	.type	.L.str.27,@object
.L.str.27:
	.asciz	"cannot claim reward yet, you still have "
	.size	.L.str.27, 41

	.type	.L.str.28,@object
.L.str.28:
	.asciz	" seconds remaining"
	.size	.L.str.28, 19

	.type	.L.str.30,@object
.L.str.30:
	.asciz	"You will get "
	.size	.L.str.30, 14

	.type	.L.str.31,@object
.L.str.31:
	.asciz	"\n"
	.size	.L.str.31, 2

	.type	.L.str.32,@object
.L.str.32:
	.asciz	"nothing to be rewarded"
	.size	.L.str.32, 23

	.type	.L.str.33,@object
.L.str.33:
	.asciz	"Rollover is "
	.size	.L.str.33, 13

	.type	.L.str.34,@object
.L.str.34:
	.asciz	" seconds\n"
	.size	.L.str.34, 10

	.type	.L.str.35,@object
.L.str.35:
	.asciz	"Rewarding ECASH"
	.size	.L.str.35, 16

	.type	.L.str.36,@object
.L.str.36:
	.asciz	"refund request not found"
	.size	.L.str.36, 25

	.type	.L.str.37,@object
.L.str.37:
	.asciz	"refund is not available yet "
	.size	.L.str.37, 29

	.type	.L.str.38,@object
.L.str.38:
	.asciz	"no HORUS balance object found"
	.size	.L.str.38, 30

	.type	.L.str.39,@object
.L.str.39:
	.asciz	"not enough liquid HORUS to transfer"
	.size	.L.str.39, 36

	.type	.L.str.40,@object
.L.str.40:
	.asciz	"onerror"
	.size	.L.str.40, 8

	.type	.L.str.41,@object
.L.str.41:
	.asciz	"eosio"
	.size	.L.str.41, 6

	.type	.L.str.42,@object
.L.str.42:
	.asciz	"onerror action's are only valid from the \"eosio\" system account"
	.size	.L.str.42, 64

	.type	.L.str.76,@object
.L.str.76:
	.asciz	"get"
	.size	.L.str.76, 4

	.type	_ZStL13__new_handler,@object
	.lcomm	_ZStL13__new_handler,4,2
	.type	.L.str.12.281,@object
.L.str.12.281:
	.asciz	"%lu"
	.size	.L.str.12.281, 4

	.type	.L.str.14.283,@object
.L.str.14.283:
	.asciz	"%llu"
	.size	.L.str.14.283, 5

	.type	states,@object
	.section	.rodata,"a",@progbits
	.p2align	4
states:
	.ascii	"\031\000\n\000\031\031\031\000\000\000\000\005\000\000\000\000\000\000\t\000\000\000\000\013\000\000\000\000\000\000\000\000\031\000\021\n\031\031\031\003\n\007\000\001\033\t\013\030\000\000\t\006\013\000\000\013\000\006"
	.asciz	"\031\000\000\000\031\031\031\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\031\000\n\r\031\031\031\000\r\000\000\002\000\t\016\000\000\000\t\000\016\000\000\016\000"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\f\000\000\000\000\000\000\000\000\000\000\000\023\000\000\000\000\023\000\000\000\000\t\f\000\000\000\000\000\f\000\000\f\000"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000\000\000\000\000\017\000\000\000\004\017\000\000\000\000\t\020\000\000\000\000\000\020\000\000\020\000"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\022\000\000\000\000\000\000\000\000\000\000\000\021\000\000\000\000\021\000\000\000\000\t\022\000\000\000\000\000\022\000\000\022\000"
	.asciz	"\032\000\000\000\032\032\032\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\032\000\000\000\032\032\032\000\000\000\000\000\000\t\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\024\000\000\000\000\000\000\000\000\000\000\000\027\000\000\000\000\027\000\000\000\000\t\024\000\000\000\000\000\024\000\000\024\000"
	.asciz	"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\026\000\000\000\000\000\000\000\000\000\000\000\025\000\000\000\000\025\000\000\000\000\t\026\000\000\000\000\000\026\000\000\026\000"
	.size	states, 464

	.type	xdigits,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
xdigits:
	.ascii	"0123456789ABCDEF"
	.size	xdigits, 16

	.type	.L.str.323,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.323:
	.asciz	"-+   0X0x"
	.size	.L.str.323, 10

	.type	.L.str.1.324,@object
.L.str.1.324:
	.asciz	"(null)"
	.size	.L.str.1.324, 7

	.type	.L.str.2.325,@object
.L.str.2.325:
	.asciz	"-0X+0X 0X-0x+0x 0x"
	.size	.L.str.2.325, 19

	.type	.L.str.3.326,@object
.L.str.3.326:
	.asciz	"inf"
	.size	.L.str.3.326, 4

	.type	.L.str.4.327,@object
.L.str.4.327:
	.asciz	"INF"
	.size	.L.str.4.327, 4

	.type	.L.str.5.328,@object
.L.str.5.328:
	.asciz	"nan"
	.size	.L.str.5.328, 4

	.type	.L.str.6.329,@object
.L.str.6.329:
	.asciz	"NAN"
	.size	.L.str.6.329, 4

	.type	.L.str.7.330,@object
.L.str.7.330:
	.asciz	"."
	.size	.L.str.7.330, 2

	.type	errid,@object
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
errid:
	.asciz	"T!\"\031\r\001\002\003\021K\034\f\020\004\013\035\022\036'hnopqb \005\006\017\023\024\025\032\b\026\007($\027\030\t\n\016\033\037%#\203\202}&*+<=>?CGJMXYZ[\\]^_`acdefgijklrstyz{|"
	.size	errid, 88

	.type	errmsg,@object
	.section	.rodata,"a",@progbits
	.p2align	4
errmsg:
	.asciz	"Illegal byte sequence\000Domain error\000Result not representable\000Not a tty\000Permission denied\000Operation not permitted\000No such file or directory\000No such process\000File exists\000Value too large for data type\000No space left on device\000Out of memory\000Resource busy\000Interrupted system call\000Resource temporarily unavailable\000Invalid seek\000Cross-device link\000Read-only file system\000Directory not empty\000Connection reset by peer\000Operation timed out\000Connection refused\000Host is down\000Host is unreachable\000Address in use\000Broken pipe\000I/O error\000No such device or address\000Block device required\000No such device\000Not a directory\000Is a directory\000Text file busy\000Exec format error\000Invalid argument\000Argument list too long\000Symbolic link loop\000Filename too long\000Too many open files in system\000No file descriptors available\000Bad file descriptor\000No child process\000Bad address\000File too large\000Too many links\000No locks available\000Resource deadlock would occur\000State not recoverable\000Previous owner died\000Operation canceled\000Function not implemented\000No message of desired type\000Identifier removed\000Device not a stream\000No data available\000Device timeout\000Out of streams resources\000Link has been severed\000Protocol error\000Bad message\000File descriptor in bad state\000Not a socket\000Destination address required\000Message too large\000Protocol wrong type for socket\000Protocol not available\000Protocol not supported\000Socket type not supported\000Not supported\000Protocol family not supported\000Address family not supported by protocol\000Address not available\000Network is down\000Network unreachable\000Connection reset by network\000Connection aborted\000No buffer space available\000Socket is connected\000Socket not connected\000Cannot send after socket shutdown\000Operation already in progress\000Operation in progress\000Stale file handle\000Remote I/O error\000Quota exceeded\000No medium found\000Wrong medium type\000No error information\000"
	.size	errmsg, 1804

	.type	__pthread_self.self,@object
	.lcomm	__pthread_self.self,8,2
	.hidden	_ZN5eosio11memory_heapE
	.type	_ZN5eosio11memory_heapE,@object
	.bss
	.globl	_ZN5eosio11memory_heapE
	.p2align	2
_ZN5eosio11memory_heapE:
	.skip	8396
	.size	_ZN5eosio11memory_heapE, 8396

	.type	.L.str.1.29,@object
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1.29:
	.asciz	"malloc_from_freed was designed to only be called after _heap was completely allocated"
	.size	.L.str.1.29, 86

	.type	_ZZ4sbrkjE11initialized,@object
	.lcomm	_ZZ4sbrkjE11initialized,1
	.type	_ZZ4sbrkjE10sbrk_bytes,@object
	.lcomm	_ZZ4sbrkjE10sbrk_bytes,4,2

	.weak	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
	.type	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_,@function
	.hidden	_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_ = _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_@FUNCTION
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.ident	"clang version 4.0.1 (https://github.com/llvm-mirror/clang.git 3c8961bedc65c9a15cbe67a2ef385a0938f7cfef) (https://github.com/llvm-mirror/llvm.git c8fccc53ed66d505898f8850bcc690c977a7c9a7)"
	.functype	current_time, i64
	.functype	require_auth2, void, i64, i64
	.functype	require_auth, void, i64
	.functype	eosio_assert, void, i32, i32
	.functype	db_find_i64, i32, i64, i64, i64, i64
	.functype	current_receiver, i64
	.functype	db_store_i64, i32, i64, i64, i64, i64, i32, i32
	.functype	memcpy, i32, i32, i32, i32
	.functype	db_get_i64, i32, i32, i32, i32
	.functype	db_update_i64, void, i32, i64, i32, i32
	.functype	send_inline, void, i32, i32
	.functype	is_account, i32, i64
	.functype	require_recipient, void, i64
	.functype	has_auth, i32, i64
	.functype	db_remove_i64, void, i32
	.functype	db_next_i64, i32, i32, i32
	.functype	db_lowerbound_i64, i32, i64, i64, i64, i64
	.functype	db_end_i64, i32, i64, i64, i64
	.functype	db_previous_i64, i32, i32, i32
	.functype	prints, void, i32
	.functype	cancel_deferred, i32, i32
	.functype	send_deferred, void, i32, i64, i32, i32, i32
	.functype	printi, void, i64
	.functype	printui, void, i64
	.functype	action_data_size, i32
	.functype	read_action_data, i32, i32, i32
	.functype	abort, void
	.functype	memmove, i32, i32, i32, i32
	.functype	memset, i32, i32, i32, i32
