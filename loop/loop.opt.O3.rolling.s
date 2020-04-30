	.text
	.file	"loop.opt.yul"
	.section	.text.solidity.bswapi256,"",@
	.type	solidity.bswapi256,@function # -- Begin function solidity.bswapi256
solidity.bswapi256:                     # @solidity.bswapi256
	.functype	solidity.bswapi256 (i32, i64, i64, i64, i64) -> ()
# %bb.0:                                # %entry
	local.get	0
	local.get	4
	i64.const	56
	i64.shr_u
	local.get	4
	i64.const	56
	i64.shl 
	i64.or  
	local.get	4
	i64.const	40
	i64.shl 
	i64.const	71776119061217280
	i64.and 
	i64.or  
	local.get	4
	i64.const	24
	i64.shl 
	i64.const	280375465082880
	i64.and 
	i64.or  
	local.get	4
	i64.const	8
	i64.shl 
	i64.const	1095216660480
	i64.and 
	i64.or  
	local.get	4
	i64.const	8
	i64.shr_u
	i64.const	4278190080
	i64.and 
	i64.or  
	local.get	4
	i64.const	24
	i64.shr_u
	i64.const	16711680
	i64.and 
	i64.or  
	local.get	4
	i64.const	40
	i64.shr_u
	i64.const	65280
	i64.and 
	i64.or  
	i64.store	0
	local.get	0
	i32.const	24
	i32.add 
	local.get	1
	i64.const	56
	i64.shl 
	local.get	1
	i64.const	40
	i64.shl 
	i64.const	71776119061217280
	i64.and 
	i64.or  
	local.get	1
	i64.const	24
	i64.shl 
	i64.const	280375465082880
	i64.and 
	i64.or  
	local.get	1
	i64.const	8
	i64.shl 
	i64.const	1095216660480
	i64.and 
	i64.or  
	local.get	1
	i64.const	8
	i64.shr_u
	i64.const	4278190080
	i64.and 
	i64.or  
	local.get	1
	i64.const	24
	i64.shr_u
	i64.const	16711680
	i64.and 
	i64.or  
	local.get	1
	i64.const	40
	i64.shr_u
	i64.const	65280
	i64.and 
	i64.or  
	local.get	1
	i64.const	56
	i64.shr_u
	i64.or  
	i64.store	0
	local.get	0
	local.get	2
	i64.const	56
	i64.shl 
	local.get	2
	i64.const	40
	i64.shl 
	i64.const	71776119061217280
	i64.and 
	i64.or  
	local.get	2
	i64.const	24
	i64.shl 
	i64.const	280375465082880
	i64.and 
	i64.or  
	local.get	2
	i64.const	8
	i64.shl 
	i64.const	1095216660480
	i64.and 
	i64.or  
	local.get	2
	i64.const	8
	i64.shr_u
	i64.const	4278190080
	i64.and 
	i64.or  
	local.get	2
	i64.const	24
	i64.shr_u
	i64.const	16711680
	i64.and 
	i64.or  
	local.get	2
	i64.const	40
	i64.shr_u
	i64.const	65280
	i64.and 
	i64.or  
	local.get	2
	i64.const	56
	i64.shr_u
	i64.or  
	i64.store	16
	local.get	0
	local.get	3
	i64.const	56
	i64.shl 
	local.get	3
	i64.const	40
	i64.shl 
	i64.const	71776119061217280
	i64.and 
	i64.or  
	local.get	3
	i64.const	24
	i64.shl 
	i64.const	280375465082880
	i64.and 
	i64.or  
	local.get	3
	i64.const	8
	i64.shl 
	i64.const	1095216660480
	i64.and 
	i64.or  
	local.get	3
	i64.const	8
	i64.shr_u
	i64.const	4278190080
	i64.and 
	i64.or  
	local.get	3
	i64.const	24
	i64.shr_u
	i64.const	16711680
	i64.and 
	i64.or  
	local.get	3
	i64.const	40
	i64.shr_u
	i64.const	65280
	i64.and 
	i64.or  
	local.get	3
	i64.const	56
	i64.shr_u
	i64.or  
	i64.store	8
                                        # fallthrough-return-void
	end_function
.Lfunc_end0:
	.size	solidity.bswapi256, .Lfunc_end0-solidity.bswapi256
                                        # -- End function
	.section	.text.C_28_deployed.main,"",@
	.globl	C_28_deployed.main      # -- Begin function C_28_deployed.main
	.type	C_28_deployed.main,@function
C_28_deployed.main:                     # @C_28_deployed.main
	.functype	C_28_deployed.main () -> ()
	.local  	i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, i64
# %bb.0:                                # %entry
	global.get	__stack_pointer
	i32.const	352
	i32.sub 
	local.tee	0
	local.set	1
	local.get	0
	global.set	__stack_pointer
	i32.const	0
	i64.const	-9223372036854775808
	i64.store	__heap_base+88
	i32.const	0
	i64.const	0
	i64.store	__heap_base+80
	i32.const	0
	i64.const	0
	i64.store	__heap_base+72
	i32.const	0
	i64.const	0
	i64.store	__heap_base+64
	block   	
	i32.const	0
	i64.load	.Lmemory.size
	i64.const	95
	i64.gt_u
	i32.const	0
	i64.load	.Lmemory.size+8
	local.tee	2
	i64.const	0
	i64.ne  
	local.get	2
	i64.eqz
	i32.select
	i32.const	0
	i64.load	.Lmemory.size+16
	local.tee	3
	i64.const	0
	i64.ne  
	i32.const	0
	i64.load	.Lmemory.size+24
	local.tee	2
	i64.const	0
	i64.ne  
	local.get	2
	i64.eqz
	i32.select
	local.get	3
	local.get	2
	i64.or  
	i64.eqz
	i32.select
	br_if   	0               # 0: down to label0
# %bb.1:                                # %update.i2
	i32.const	0
	i64.const	0
	i64.store	.Lmemory.size+24
	i32.const	0
	i64.const	0
	i64.store	.Lmemory.size+16
	i32.const	0
	i64.const	0
	i64.store	.Lmemory.size+8
	i32.const	0
	i64.const	128
	i64.store	.Lmemory.size
.LBB1_2:                                # %solidity.updateMemorySize.exit3
	end_block                       # label0:
	block   	
	i32.call	ethereum.getCallDataSize
	i32.const	4
	i32.lt_u
	br_if   	0               # 0: down to label1
# %bb.3:                                # %if.then
	local.get	0
	i32.const	-32
	i32.add 
	local.tee	0
	local.tee	4
	global.set	__stack_pointer
	local.get	0
	i32.const	0
	i32.const	32
	call	ethereum.callDataCopy
	local.get	1
	i32.const	192
	i32.add 
	local.get	0
	i64.load	0
	local.get	0
	i32.const	8
	i32.add 
	i64.load	0
	local.get	0
	i32.const	16
	i32.add 
	i64.load	0
	local.get	0
	i32.const	24
	i32.add 
	i64.load	0
	call	solidity.bswapi256
	local.get	1
	i64.load32_u	220
	i64.const	32
	i64.shl 
	i64.const	2918648500625342464
	i64.xor 
	i64.eqz
	i32.eqz
	br_if   	0               # 0: down to label1
# %bb.4:                                # %switch.case
	local.get	4
	i32.const	-16
	i32.add 
	local.tee	0
	global.set	__stack_pointer
	local.get	0
	call	ethereum.getCallValue
	i64.const	0
	local.set	2
	local.get	1
	i32.const	160
	i32.add 
	i64.const	0
	i64.const	0
	local.get	0
	i64.load	0
	local.get	0
	i32.const	8
	i32.add 
	i64.load	0
	call	solidity.bswapi256
	block   	
	local.get	1
	i64.load	160
	local.get	1
	i32.const	160
	i32.add 
	i32.const	8
	i32.add 
	i64.load	0
	i64.or  
	i64.eqz
	br_if   	0               # 0: down to label2
# %bb.5:                                # %if.then2
	i32.const	__heap_base
	i32.const	0
	call	ethereum.revert
.LBB1_6:                                # %if.end3
	end_block                       # label2:
	local.get	1
	i32.const	320
	i32.add 
	i32.const	24
	i32.add 
	local.set	4
	i64.const	0
	local.set	3
	i64.const	0
	local.set	5
	i64.const	0
	local.set	6
.LBB1_7:                                # %increment_t_uint256.uint256.exit.i
                                        # =>This Inner Loop Header: Depth=1
	loop    	                # label3:
	local.get	1
	i32.const	128
	i32.add 
	local.get	2
	local.get	3
	local.get	5
	local.get	6
	i64.const	9223372036854775807
	i64.and 
	local.get	6
	i64.or  
	call	solidity.bswapi256
	local.get	4
	local.get	1
	i32.const	128
	i32.add 
	i32.const	24
	i32.add 
	i64.load	0
	local.tee	7
	i64.store	0
	local.get	1
	local.get	1
	i32.const	128
	i32.add 
	i32.const	16
	i32.add 
	i64.load	0
	local.tee	8
	i64.store	336
	local.get	1
	local.get	1
	i32.const	128
	i32.add 
	i32.const	8
	i32.add 
	i64.load	0
	local.tee	9
	i64.store	328
	local.get	1
	local.get	1
	i64.load	128
	local.tee	10
	i64.store	320
	local.get	1
	i32.const	320
	i32.add 
	local.get	1
	i32.const	288
	i32.add 
	call	ethereum.storageLoad
	local.get	1
	i32.const	96
	i32.add 
	local.get	2
	local.get	3
	local.get	5
	local.get	6
	call	solidity.bswapi256
	local.get	1
	i32.const	256
	i32.add 
	i32.const	24
	i32.add 
	local.get	7
	i64.store	0
	local.get	1
	i32.const	224
	i32.add 
	i32.const	24
	i32.add 
	local.get	1
	i32.const	96
	i32.add 
	i32.const	24
	i32.add 
	i64.load	0
	i64.store	0
	local.get	1
	local.get	8
	i64.store	272
	local.get	1
	local.get	9
	i64.store	264
	local.get	1
	local.get	10
	i64.store	256
	local.get	1
	local.get	1
	i32.const	96
	i32.add 
	i32.const	16
	i32.add 
	i64.load	0
	i64.store	240
	local.get	1
	local.get	1
	i32.const	96
	i32.add 
	i32.const	8
	i32.add 
	i64.load	0
	i64.store	232
	local.get	1
	local.get	1
	i64.load	96
	i64.store	224
	local.get	5
	local.get	2
	i64.const	1
	i64.add 
	local.tee	7
	local.get	2
	i64.lt_u
	local.tee	0
	local.get	3
	local.get	0
	i64.extend_i32_u
	i64.add 
	local.tee	8
	local.get	3
	i64.lt_u
	local.get	7
	local.get	2
	i64.ge_u
	i32.select
	i64.extend_i32_u
	i64.add 
	local.tee	9
	local.get	5
	i64.lt_u
	local.set	0
	local.get	1
	i32.const	256
	i32.add 
	local.get	1
	i32.const	224
	i32.add 
	call	ethereum.storageStore
	local.get	7
	local.set	2
	local.get	8
	local.set	3
	local.get	9
	local.set	5
	local.get	7
	i64.const	10
	i64.lt_u
	i32.const	0
	local.get	8
	i64.eqz
	i32.select
	i32.const	0
	local.get	9
	local.get	6
	local.get	0
	i64.extend_i32_u
	i64.add 
	local.tee	6
	i64.or  
	i64.eqz
	i32.select
	br_if   	0               # 0: up to label3
# %bb.8:                                # %fun_F_27.exit
	end_loop
	local.get	1
	i32.const	64
	i32.add 
	i32.const	0
	i64.load	__heap_base+64
	i32.const	0
	i64.load	__heap_base+72
	i32.const	0
	i64.load	__heap_base+80
	i32.const	0
	i64.load	__heap_base+88
	call	solidity.bswapi256
	local.get	1
	i32.const	88
	i32.add 
	i64.load	0
	local.set	2
	local.get	1
	i32.const	80
	i32.add 
	i64.load	0
	local.set	5
	local.get	1
	i32.const	72
	i32.add 
	i64.load	0
	local.set	6
	local.get	1
	i64.load	64
	local.set	7
	block   	
	i32.const	0
	i64.load	.Lmemory.size
	local.tee	10
	i64.const	95
	i64.gt_u
	i32.const	0
	i64.load	.Lmemory.size+8
	local.tee	8
	i64.const	0
	i64.ne  
	local.get	8
	i64.eqz
	i32.select
	i32.const	0
	i64.load	.Lmemory.size+16
	local.tee	9
	i64.const	0
	i64.ne  
	i32.const	0
	i64.load	.Lmemory.size+24
	local.tee	3
	i64.const	0
	i64.ne  
	local.get	3
	i64.eqz
	i32.select
	local.get	9
	local.get	3
	i64.or  
	i64.eqz
	i32.select
	br_if   	0               # 0: down to label4
# %bb.9:                                # %update.i.i
	i32.const	0
	i64.const	0
	i64.store	.Lmemory.size+24
	i32.const	0
	i64.const	0
	i64.store	.Lmemory.size+16
	i32.const	0
	i64.const	0
	i64.store	.Lmemory.size+8
	i64.const	128
	local.set	10
	i32.const	0
	i64.const	128
	i64.store	.Lmemory.size
	i64.const	0
	local.set	8
	i64.const	0
	local.set	9
	i64.const	0
	local.set	3
.LBB1_10:                               # %solidity.updateMemorySize.exit.i
	end_block                       # label4:
	block   	
	block   	
	block   	
	block   	
	local.get	6
	i64.const	0
	i64.ne  
	local.get	5
	i64.const	0
	i64.ne  
	local.get	2
	i64.const	0
	i64.ne  
	local.get	2
	i64.eqz
	i32.select
	local.get	5
	local.get	2
	i64.or  
	i64.eqz
	i32.select
	br_if   	0               # 0: down to label8
# %bb.11:                               # %if.end.thread.i
	local.get	1
	i32.const	32
	i32.add 
	local.get	7
	local.get	6
	local.get	5
	local.get	2
	call	solidity.bswapi256
	i32.const	0
	local.get	1
	i32.const	56
	i32.add 
	i64.load	0
	i64.store	__heap_base+88
	i32.const	0
	local.get	1
	i32.const	48
	i32.add 
	i64.load	0
	i64.store	__heap_base+80
	i32.const	0
	local.get	1
	i32.const	40
	i32.add 
	i64.load	0
	i64.store	__heap_base+72
	i32.const	0
	local.get	1
	i64.load	32
	i64.store	__heap_base+64
	br      	1               # 1: down to label7
.LBB1_12:                               # %if.end.i
	end_block                       # label8:
	i32.const	__heap_base
	i32.const	0
	call	ethereum.revert
	i32.const	0
	i64.load	.Lmemory.size
	local.set	10
	i32.const	0
	i64.load	.Lmemory.size+8
	local.set	8
	i32.const	0
	i64.load	.Lmemory.size+16
	local.set	9
	i32.const	0
	i64.load	.Lmemory.size+24
	local.set	3
	local.get	1
	local.get	7
	local.get	6
	local.get	5
	local.get	2
	call	solidity.bswapi256
	i32.const	0
	local.get	1
	i32.const	24
	i32.add 
	i64.load	0
	i64.store	__heap_base+88
	i32.const	0
	local.get	1
	i32.const	16
	i32.add 
	i64.load	0
	i64.store	__heap_base+80
	i32.const	0
	local.get	1
	i32.const	8
	i32.add 
	i64.load	0
	i64.store	__heap_base+72
	i32.const	0
	local.get	1
	i64.load	0
	i64.store	__heap_base+64
	local.get	10
	i64.const	95
	i64.gt_u
	local.get	8
	i64.const	0
	i64.ne  
	local.get	8
	i64.eqz
	i32.select
	local.get	9
	i64.const	0
	i64.ne  
	local.get	3
	i64.const	0
	i64.ne  
	local.get	3
	i64.eqz
	i32.select
	local.get	9
	local.get	3
	i64.or  
	i64.eqz
	i32.select
	br_if   	0               # 0: down to label7
# %bb.13:                               # %allocateMemory.uint256.exit.thread
	i32.const	0
	i64.const	0
	i64.store	.Lmemory.size+24
	i32.const	0
	i64.const	0
	i64.store	.Lmemory.size+16
	i32.const	0
	i64.const	0
	i64.store	.Lmemory.size+8
	i32.const	0
	i64.const	128
	i64.store	.Lmemory.size
	local.get	7
	i32.wrap_i64
	i32.const	__heap_base
	i32.add 
	local.set	0
	br      	1               # 1: down to label6
.LBB1_14:                               # %allocateMemory.uint256.exit
	end_block                       # label7:
	local.get	7
	i32.wrap_i64
	i32.const	__heap_base
	i32.add 
	local.set	0
	local.get	7
	local.get	10
	i64.le_u
	local.get	6
	local.get	8
	i64.le_u
	local.get	6
	local.get	8
	i64.eq  
	i32.select
	local.get	5
	local.get	9
	i64.le_u
	local.get	2
	local.get	3
	i64.le_u
	local.get	2
	local.get	3
	i64.eq  
	i32.select
	local.get	5
	local.get	9
	i64.xor 
	local.get	2
	local.get	3
	i64.xor 
	i64.or  
	i64.eqz
	i32.select
	br_if   	1               # 1: down to label5
.LBB1_15:                               # %update.i
	end_block                       # label6:
	i32.const	0
	local.get	7
	i64.const	32
	i64.add 
	local.tee	3
	i64.const	-32
	i64.and 
	i64.store	.Lmemory.size
	i32.const	0
	local.get	6
	local.get	3
	local.get	7
	i64.lt_u
	local.tee	4
	i64.extend_i32_u
	i64.add 
	local.tee	8
	i64.store	.Lmemory.size+8
	i32.const	0
	local.get	5
	local.get	4
	local.get	8
	local.get	6
	i64.lt_u
	local.get	3
	local.get	7
	i64.ge_u
	i32.select
	i64.extend_i32_u
	i64.add 
	local.tee	3
	i64.store	.Lmemory.size+16
	i32.const	0
	local.get	2
	local.get	3
	local.get	5
	i64.lt_u
	i64.extend_i32_u
	i64.add 
	i64.store	.Lmemory.size+24
.LBB1_16:                               # %solidity.updateMemorySize.exit
	end_block                       # label5:
	local.get	0
	i32.const	0
	call	ethereum.finish
.LBB1_17:                               # %if.end
	end_block                       # label1:
	i32.const	__heap_base
	i32.const	0
	call	ethereum.revert
	local.get	1
	i32.const	352
	i32.add 
	global.set	__stack_pointer
                                        # fallthrough-return-void
	end_function
.Lfunc_end1:
	.size	C_28_deployed.main, .Lfunc_end1-C_28_deployed.main
                                        # -- End function
	.section	.text.main,"",@
	.globl	main                    # -- Begin function main
	.type	main,@function
main:                                   # @main
	.functype	main () -> ()
# %bb.0:                                # %entry
	call	C_28_deployed.main
                                        # fallthrough-return-void
	end_function
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	.Lmemory.size,@object   # @memory.size
	.section	.bss..Lmemory.size,"",@
	.p2align	8
.Lmemory.size:
	.int64	0
	.int64	0
	.int64	0
	.int64	0
	.size	.Lmemory.size, 32


	.globaltype	__stack_pointer, i32
	.functype	ethereum.callDataCopy (i32, i32, i32) -> ()
	.import_module	ethereum.callDataCopy, ethereum
	.import_name	ethereum.callDataCopy, callDataCopy
	.functype	ethereum.finish (i32, i32) -> ()
	.import_module	ethereum.finish, ethereum
	.import_name	ethereum.finish, finish
	.functype	ethereum.getCallDataSize () -> (i32)
	.import_module	ethereum.getCallDataSize, ethereum
	.import_name	ethereum.getCallDataSize, getCallDataSize
	.functype	ethereum.getCallValue (i32) -> ()
	.import_module	ethereum.getCallValue, ethereum
	.import_name	ethereum.getCallValue, getCallValue
	.functype	ethereum.revert (i32, i32) -> ()
	.import_module	ethereum.revert, ethereum
	.import_name	ethereum.revert, revert
	.functype	ethereum.storageLoad (i32, i32) -> ()
	.import_module	ethereum.storageLoad, ethereum
	.import_name	ethereum.storageLoad, storageLoad
	.functype	ethereum.storageStore (i32, i32) -> ()
	.import_module	ethereum.storageStore, ethereum
	.import_name	ethereum.storageStore, storageStore
	.size	__heap_base, 1
