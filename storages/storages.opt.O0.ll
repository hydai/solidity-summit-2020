; ModuleID = './storages.opt.yul'
source_filename = "./storages.opt.yul"
target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32-unknown-unknown-wasm"

%bytes = type { i256, i8* }

@memory.size = private unnamed_addr global i256 0, align 256
@__heap_base = external global i8, align 1

; Function Attrs: nounwind
define internal void @solidity.updateMemorySize(i256 %memory.pos, i256 %memory.range) #0 {
entry:
  %memory.size = load i256, i256* @memory.size
  %0 = add i256 %memory.pos, %memory.range
  %1 = icmp ugt i256 %0, %memory.size
  br i1 %1, label %update, label %done

update:                                           ; preds = %entry
  %2 = and i256 %0, -32
  %memory.new_size = add i256 %2, 32
  store i256 %memory.new_size, i256* @memory.size
  br label %done

done:                                             ; preds = %update, %entry
  ret void
}

; Function Attrs: nounwind writeonly
declare void @ethereum.callDataCopy(i8* writeonly, i32, i32) #1

; Function Attrs: nounwind
declare i32 @ethereum.call(i64, i160* readonly, i128* readonly, i8* readonly, i32) #2

; Function Attrs: nounwind
declare i32 @ethereum.callStatic(i64, i160* readonly, i8* readonly, i32) #3

; Function Attrs: nounwind
declare i32 @ethereum.callDelegate(i64, i160* readonly, i8* readonly, i32) #4

; Function Attrs: nounwind writeonly
declare void @ethereum.finish(i8* readonly, i32) #5

; Function Attrs: nounwind readonly
declare i32 @ethereum.getCallDataSize() #6

declare void @ethereum.getCallValue(i128*) #7

; Function Attrs: argmemonly nounwind
declare void @ethereum.getCaller(i160* writeonly) #8

; Function Attrs: argmemonly nounwind
declare void @ethereum.codeCopy(i8* writeonly, i32, i32) #9

; Function Attrs: nounwind
declare i64 @ethereum.getGasLeft() #10

; Function Attrs: nounwind
declare void @ethereum.log(i8* readonly, i32, i32, i256* readonly, i256* readonly, i256* readonly, i256* readonly) #11

declare i32 @ethereum.returnDataSize() #12

; Function Attrs: nounwind
declare void @ethereum.returnDataCopy(i8* writeonly, i32, i32) #13

; Function Attrs: nounwind writeonly
declare void @ethereum.revert(i8* readonly, i32) #14

; Function Attrs: nounwind
declare void @ethereum.storageLoad(i256* readonly, i256* writeonly) #15

; Function Attrs: nounwind
declare void @ethereum.storageStore(i256* readonly, i256* readonly) #16

declare void @ethereum.getTxGasPrice(i128*) #17

declare void @ethereum.getTxOrigin(i160*) #18

declare void @ethereum.getBlockCoinbase(i160*) #19

declare void @ethereum.getBlockDifficulty(i256*) #20

declare i64 @ethereum.getBlockGasLimit() #21

declare i64 @ethereum.getBlockNumber() #22

declare i64 @ethereum.getBlockTimestamp() #23

declare i32 @ethereum.getBlockHash(i64, i256*) #24

declare void @ethereum.getExternalBalance(i160*, i128*) #25

; Function Attrs: nounwind
declare void @debug.print32(i32) #26

declare void @ethereum.getAddress(i160*) #27

; Function Attrs: nounwind readnone
define internal i256 @solidity.expi256(i256 %base, i256 %exp) #28 {
entry:
  %0 = icmp eq i256 %exp, 0
  br i1 %0, label %return, label %loop

loop:                                             ; preds = %loop, %entry
  %1 = phi i256 [ 1, %entry ], [ %7, %loop ]
  %2 = phi i256 [ %base, %entry ], [ %8, %loop ]
  %3 = phi i256 [ %exp, %entry ], [ %9, %loop ]
  %4 = trunc i256 %3 to i1
  %5 = icmp eq i1 %4, false
  %6 = select i1 %5, i256 1, i256 %2
  %7 = call i256 @__mul256(i256 %1, i256 %6)
  %8 = call i256 @__mul256(i256 %2, i256 %2)
  %9 = lshr i256 %3, 1
  %10 = icmp eq i256 %9, 0
  br i1 %10, label %return, label %loop

return:                                           ; preds = %loop, %entry
  %11 = phi i256 [ 1, %entry ], [ %7, %loop ]
  ret i256 %11
}

; Function Attrs: nounwind readnone
define internal i256 @solidity.bswapi256(i256 %data) #28 {
entry:
  %0 = shl i256 %data, 248
  %1 = shl i256 %data, 232
  %2 = and i256 %1, 450546001518488004043740862689444221536008393703282834321009581329618042880
  %3 = shl i256 %data, 216
  %4 = and i256 %3, 1759945318431593765795862744880641490375032787903448571566443677068820480
  %5 = shl i256 %data, 200
  %6 = and i256 %5, 6874786400123413147640088847190005821777471827747845982681420613550080
  %7 = shl i256 %data, 184
  %8 = and i256 %7, 26854634375482082607969097059335960241318249327140023369849299271680
  %9 = shl i256 %data, 168
  %10 = and i256 %9, 104900915529226885187379285388031094692649411434140716288473825280
  %11 = shl i256 %data, 152
  %12 = and i256 %11, 409769201286042520263200333546996463643161763414612173001850880
  %13 = shl i256 %data, 136
  %14 = and i256 %13, 1600660942523603594778126302917954936106100638338328800788480
  %15 = shl i256 %data, 120
  %16 = and i256 %15, 6252581806732826542102055870773261469164455618509096878080
  %17 = shl i256 %data, 104
  %18 = and i256 %17, 24424147682550103680086155745208052613923654759801159680
  %19 = shl i256 %data, 88
  %20 = and i256 %19, 95406826884961342500336545879718955523139276405473280
  %21 = shl i256 %data, 72
  %22 = and i256 %21, 372682917519380244141939632342652170012262798458880
  %23 = shl i256 %data, 56
  %24 = and i256 %23, 1455792646560079078679451688838485039110401556480
  %25 = shl i256 %data, 40
  %26 = and i256 %25, 5686690025625308901091608159525332184025006080
  %27 = shl i256 %data, 24
  %28 = and i256 %27, 22213632912598862894889094373145828843847680
  %29 = shl i256 %data, 8
  %30 = and i256 %29, 86772003564839308183160524895100893921280
  %31 = lshr i256 %data, 8
  %32 = and i256 %31, 338953138925153547590470800371487866880
  %33 = lshr i256 %data, 24
  %34 = and i256 %33, 1324035698926381045275276563951124480
  %35 = lshr i256 %data, 40
  %36 = and i256 %35, 5172014448931175958106549077934080
  %37 = lshr i256 %data, 56
  %38 = and i256 %37, 20203181441137406086353707335680
  %39 = lshr i256 %data, 72
  %40 = and i256 %39, 78918677504442992524819169280
  %41 = lshr i256 %data, 88
  %42 = and i256 %41, 308276084001730439550074880
  %43 = lshr i256 %data, 104
  %44 = and i256 %43, 1204203453131759529492480
  %45 = lshr i256 %data, 120
  %46 = and i256 %45, 4703919738795935662080
  %47 = lshr i256 %data, 136
  %48 = and i256 %47, 18374686479671623680
  %49 = lshr i256 %data, 152
  %50 = and i256 %49, 71776119061217280
  %51 = lshr i256 %data, 168
  %52 = and i256 %51, 280375465082880
  %53 = lshr i256 %data, 184
  %54 = and i256 %53, 1095216660480
  %55 = lshr i256 %data, 200
  %56 = and i256 %55, 4278190080
  %57 = lshr i256 %data, 216
  %58 = and i256 %57, 16711680
  %59 = lshr i256 %data, 232
  %60 = and i256 %59, 65280
  %61 = lshr i256 %data, 248
  %62 = or i256 %0, %2
  %63 = or i256 %62, %4
  %64 = or i256 %63, %6
  %65 = or i256 %64, %8
  %66 = or i256 %65, %10
  %67 = or i256 %66, %12
  %68 = or i256 %67, %14
  %69 = or i256 %68, %16
  %70 = or i256 %69, %18
  %71 = or i256 %70, %20
  %72 = or i256 %71, %22
  %73 = or i256 %72, %24
  %74 = or i256 %73, %26
  %75 = or i256 %74, %28
  %76 = or i256 %75, %30
  %77 = or i256 %76, %32
  %78 = or i256 %77, %34
  %79 = or i256 %78, %36
  %80 = or i256 %79, %38
  %81 = or i256 %80, %40
  %82 = or i256 %81, %42
  %83 = or i256 %82, %44
  %84 = or i256 %83, %46
  %85 = or i256 %84, %48
  %86 = or i256 %85, %50
  %87 = or i256 %86, %52
  %88 = or i256 %87, %54
  %89 = or i256 %88, %56
  %90 = or i256 %89, %58
  %91 = or i256 %90, %60
  %92 = or i256 %91, %61
  ret i256 %92
}

; Function Attrs: nounwind
define internal void @solidity.memcpy(i8* %dst, i8* %src, i32 %length) #0 {
entry:
  %0 = icmp ne i32 %length, 0
  br i1 %0, label %loop, label %return

loop:                                             ; preds = %loop, %entry
  %1 = phi i8* [ %src, %entry ], [ %5, %loop ]
  %2 = phi i8* [ %dst, %entry ], [ %6, %loop ]
  %3 = phi i32 [ %length, %entry ], [ %7, %loop ]
  %4 = load i8, i8* %1
  store i8 %4, i8* %2
  %5 = getelementptr inbounds i8, i8* %1, i32 1
  %6 = getelementptr inbounds i8, i8* %2, i32 1
  %7 = sub i32 %3, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %loop, label %return

return:                                           ; preds = %loop, %entry
  ret void
}

; Function Attrs: nounwind
define internal i160 @solidity.ripemd160(%bytes %memory) #0 {
entry:
  %0 = extractvalue %bytes %memory, 0
  %length = trunc i256 %0 to i32
  %ptr = extractvalue %bytes %memory, 1
  %address.ptr = alloca i160
  store i160 17126972312471518572699431633393941636592959488, i160* %address.ptr
  %1 = call i64 @ethereum.getGasLeft()
  %2 = call i32 @ethereum.callStatic(i64 %1, i160* %address.ptr, i8* %ptr, i32 %length)
  %result.ptr = alloca i256
  %result.vptr = bitcast i256* %result.ptr to i8*
  call void @ethereum.returnDataCopy(i8* %result.vptr, i32 0, i32 32)
  %3 = load i256, i256* %result.ptr
  %.reverse = call i256 @solidity.bswapi256(i256 %3)
  %4 = trunc i256 %.reverse to i160
  ret i160 %4
}

; Function Attrs: nounwind
define internal i160 @solidity.ecrecover(i256 %hash, i256 %v, i256 %r, i256 %s) #0 {
entry:
  %concat = alloca i8, i32 128
  %0 = getelementptr inbounds i8, i8* %concat, i32 0
  %1 = bitcast i8* %0 to i256*
  store i256 %hash, i256* %1
  %2 = getelementptr inbounds i8, i8* %concat, i32 32
  %3 = bitcast i8* %2 to i256*
  store i256 %v, i256* %3
  %4 = getelementptr inbounds i8, i8* %concat, i32 64
  %5 = bitcast i8* %4 to i256*
  store i256 %r, i256* %5
  %6 = getelementptr inbounds i8, i8* %concat, i32 96
  %7 = bitcast i8* %6 to i256*
  store i256 %s, i256* %7
  %8 = insertvalue %bytes { i256 128, i8* null }, i8* %concat, 1
  %9 = extractvalue %bytes %8, 0
  %length = trunc i256 %9 to i32
  %ptr = extractvalue %bytes %8, 1
  %address.ptr = alloca i160
  store i160 5708990770823839524233143877797980545530986496, i160* %address.ptr
  %10 = call i64 @ethereum.getGasLeft()
  %11 = call i32 @ethereum.callStatic(i64 %10, i160* %address.ptr, i8* %ptr, i32 %length)
  %result.ptr = alloca i256
  %result.vptr = bitcast i256* %result.ptr to i8*
  call void @ethereum.returnDataCopy(i8* %result.vptr, i32 0, i32 32)
  %12 = load i256, i256* %result.ptr
  %.reverse = call i256 @solidity.bswapi256(i256 %12)
  %13 = trunc i256 %.reverse to i160
  ret i160 %13
}

; Function Attrs: nounwind
define internal i256 @solidity.keccak256(%bytes %memory) #0 {
entry:
  %0 = extractvalue %bytes %memory, 0
  %length = trunc i256 %0 to i32
  %ptr = extractvalue %bytes %memory, 1
  %address.ptr = alloca i160
  store i160 51380916937414555718098294900181824909778878464, i160* %address.ptr
  %1 = call i64 @ethereum.getGasLeft()
  %2 = call i32 @ethereum.callStatic(i64 %1, i160* %address.ptr, i8* %ptr, i32 %length)
  %result.ptr = alloca i256
  %result.vptr = bitcast i256* %result.ptr to i8*
  call void @ethereum.returnDataCopy(i8* %result.vptr, i32 0, i32 32)
  %3 = load i256, i256* %result.ptr
  %.reverse = call i256 @solidity.bswapi256(i256 %3)
  ret i256 %.reverse
}

; Function Attrs: nounwind
define internal i256 @solidity.sha256(%bytes %memory) #0 {
entry:
  %0 = extractvalue %bytes %memory, 0
  %length = trunc i256 %0 to i32
  %ptr = extractvalue %bytes %memory, 1
  %address.ptr = alloca i160
  store i160 11417981541647679048466287755595961091061972992, i160* %address.ptr
  %1 = call i64 @ethereum.getGasLeft()
  %2 = call i32 @ethereum.callStatic(i64 %1, i160* %address.ptr, i8* %ptr, i32 %length)
  %result.ptr = alloca i256
  %result.vptr = bitcast i256* %result.ptr to i8*
  call void @ethereum.returnDataCopy(i8* %result.vptr, i32 0, i32 32)
  %3 = load i256, i256* %result.ptr
  %.reverse = call i256 @solidity.bswapi256(i256 %3)
  ret i256 %.reverse
}

define void @C_20_deployed.main() {
entry:
  %.reverse = call i256 @solidity.bswapi256(i256 128)
  store i256 %.reverse, i256* bitcast (i8* getelementptr inbounds (i8, i8* @__heap_base, i256 64) to i256*)
  call void @solidity.updateMemorySize(i256 64, i256 32)
  %0 = call i32 @ethereum.getCallDataSize()
  %1 = zext i32 %0 to i256
  %BO_LT = icmp ult i256 %1, 4
  %2 = icmp eq i1 %BO_LT, false
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %selector.addr = alloca i256
  store i256 0, i256* %selector.addr
  %3 = alloca i8, i256 32
  call void @ethereum.callDataCopy(i8* %3, i32 0, i32 32)
  %4 = bitcast i8* %3 to i256*
  %5 = load i256, i256* %4
  %.reverse1 = call i256 @solidity.bswapi256(i256 %5)
  %6 = call i256 @shift_right_224_unsigned.uint256(i256 %.reverse1)
  store i256 %6, i256* %selector.addr
  %7 = load i256, i256* %selector.addr
  switch i256 %7, label %switch.default [
    i256 679550809, label %switch.case
  ]

if.end:                                           ; preds = %switch.end, %entry
  %8 = call i32 @ethereum.getCallDataSize()
  %9 = zext i32 %8 to i256
  %10 = icmp eq i256 %9, 0
  br i1 %10, label %if.then5, label %if.end6

switch.default:                                   ; preds = %if.then
  br label %switch.end

switch.end:                                       ; preds = %switch.default, %if.end3
  br label %if.end

switch.case:                                      ; preds = %if.then
  %11 = alloca i128
  call void @ethereum.getCallValue(i128* %11)
  %12 = load i128, i128* %11
  %extend_256 = zext i128 %12 to i256
  %shift_left = shl i256 %extend_256, 128
  %.reverse4 = call i256 @solidity.bswapi256(i256 %shift_left)
  %.trunc = trunc i256 %.reverse4 to i128
  %13 = zext i128 %.trunc to i256
  %14 = icmp ne i256 %13, 0
  br i1 %14, label %if.then2, label %if.end3

if.then2:                                         ; preds = %switch.case
  call void @solidity.updateMemorySize(i256 0, i256 0)
  call void @ethereum.revert(i8* @__heap_base, i32 0)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %switch.case
  %15 = call i32 @ethereum.getCallDataSize()
  %16 = zext i32 %15 to i256
  call void @abi_decode_tuple_.uint256.uint256(i256 4, i256 %16)
  %ret_0.addr = alloca i256
  store i256 0, i256* %ret_0.addr
  %17 = call i256 @fun_F_19()
  store i256 %17, i256* %ret_0.addr
  %memPos.addr = alloca i256
  store i256 0, i256* %memPos.addr
  %18 = call i256 @allocateMemory.uint256(i256 0)
  store i256 %18, i256* %memPos.addr
  %memEnd.addr = alloca i256
  store i256 0, i256* %memEnd.addr
  %19 = load i256, i256* %memPos.addr
  %20 = load i256, i256* %ret_0.addr
  %21 = call i256 @abi_encode_tuple_t_int256__to_t_int256__fromStack.uint256.uint256(i256 %19, i256 %20)
  store i256 %21, i256* %memEnd.addr
  %22 = load i256, i256* %memPos.addr
  %heap.cptr = getelementptr inbounds i8, i8* @__heap_base, i256 %22
  %23 = load i256, i256* %memEnd.addr
  %24 = load i256, i256* %memPos.addr
  %BO_SUB = sub i256 %23, %24
  call void @solidity.updateMemorySize(i256 %22, i256 %BO_SUB)
  %25 = trunc i256 %BO_SUB to i32
  call void @ethereum.finish(i8* %heap.cptr, i32 %25)
  br label %switch.end

if.then5:                                         ; preds = %if.end
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  call void @solidity.updateMemorySize(i256 0, i256 0)
  call void @ethereum.revert(i8* @__heap_base, i32 0)
  ret void
}

define internal i256 @shift_right_224_unsigned.uint256(i256 %value) {
entry:
  %value.addr = alloca i256
  store i256 %value, i256* %value.addr
  %newValue.addr = alloca i256
  store i256 0, i256* %newValue.addr
  %0 = load i256, i256* %value.addr
  %BO_Shr = lshr i256 %0, 224
  store i256 %BO_Shr, i256* %newValue.addr
  br label %return

return:                                           ; preds = %entry
  %1 = load i256, i256* %newValue.addr
  ret i256 %1
}

define internal void @abi_decode_tuple_.uint256.uint256(i256 %headStart, i256 %dataEnd) {
entry:
  %headStart.addr = alloca i256
  store i256 %headStart, i256* %headStart.addr
  %dataEnd.addr = alloca i256
  store i256 %dataEnd, i256* %dataEnd.addr
  %0 = load i256, i256* %dataEnd.addr
  %1 = load i256, i256* %headStart.addr
  %BO_SUB = sub i256 %0, %1
  %BO_LT = icmp ult i256 %BO_SUB, 0
  br i1 %BO_LT, label %if.then, label %if.end

return:                                           ; preds = %if.end
  ret void

if.then:                                          ; preds = %entry
  call void @solidity.updateMemorySize(i256 0, i256 0)
  call void @ethereum.revert(i8* @__heap_base, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %return
}

define internal i256 @fun_F_19() {
entry:
  %vloc__6.addr = alloca i256
  store i256 0, i256* %vloc__6.addr
  %zero_value_for_type_t_int256_1.addr = alloca i256
  store i256 0, i256* %zero_value_for_type_t_int256_1.addr
  %0 = call i256 @zero_value_for_split_t_int256()
  store i256 %0, i256* %zero_value_for_type_t_int256_1.addr
  %1 = load i256, i256* %zero_value_for_type_t_int256_1.addr
  store i256 %1, i256* %vloc__6.addr
  %expr_9.addr = alloca i256
  store i256 0, i256* %expr_9.addr
  store i256 10, i256* %expr_9.addr
  %_2.addr = alloca i256
  store i256 0, i256* %_2.addr
  %2 = load i256, i256* %expr_9.addr
  %3 = call i256 @convert_t_rational_10_by_1_to_t_int256.uint256(i256 %2)
  store i256 %3, i256* %_2.addr
  %_3.addr = alloca i256
  store i256 0, i256* %_3.addr
  %4 = call i256 @read_from_storage_offset_0_t_int256.uint256(i256 0)
  store i256 %4, i256* %_3.addr
  %5 = load i256, i256* %_3.addr
  %6 = load i256, i256* %_2.addr
  %7 = call i256 @checked_add_t_int256.uint256.uint256(i256 %5, i256 %6)
  store i256 %7, i256* %_2.addr
  %8 = load i256, i256* %_2.addr
  call void @update_storage_value_offset_0t_int256.uint256.uint256(i256 0, i256 %8)
  %expr_10.addr = alloca i256
  store i256 0, i256* %expr_10.addr
  %9 = load i256, i256* %_2.addr
  store i256 %9, i256* %expr_10.addr
  %expr_13.addr = alloca i256
  store i256 0, i256* %expr_13.addr
  store i256 10, i256* %expr_13.addr
  %_4.addr = alloca i256
  store i256 0, i256* %_4.addr
  %10 = load i256, i256* %expr_13.addr
  %11 = call i256 @convert_t_rational_10_by_1_to_t_int256.uint256(i256 %10)
  store i256 %11, i256* %_4.addr
  %_5.addr = alloca i256
  store i256 0, i256* %_5.addr
  %12 = call i256 @read_from_storage_offset_0_t_int256.uint256(i256 0)
  store i256 %12, i256* %_5.addr
  %13 = load i256, i256* %_5.addr
  %14 = load i256, i256* %_4.addr
  %15 = call i256 @checked_add_t_int256.uint256.uint256(i256 %13, i256 %14)
  store i256 %15, i256* %_4.addr
  %16 = load i256, i256* %_4.addr
  call void @update_storage_value_offset_0t_int256.uint256.uint256(i256 0, i256 %16)
  %expr_14.addr = alloca i256
  store i256 0, i256* %expr_14.addr
  %17 = load i256, i256* %_4.addr
  store i256 %17, i256* %expr_14.addr
  %_6.addr = alloca i256
  store i256 0, i256* %_6.addr
  %18 = call i256 @read_from_storage_offset_0_t_int256.uint256(i256 0)
  store i256 %18, i256* %_6.addr
  %expr_16.addr = alloca i256
  store i256 0, i256* %expr_16.addr
  %19 = load i256, i256* %_6.addr
  store i256 %19, i256* %expr_16.addr
  %20 = load i256, i256* %expr_16.addr
  store i256 %20, i256* %vloc__6.addr
  br label %return

return:                                           ; preds = %leave.after, %entry
  %21 = load i256, i256* %vloc__6.addr
  ret i256 %21

leave.after:                                      ; No predecessors!
  br label %return
}

define internal i256 @allocateMemory.uint256(i256 %size) {
entry:
  %size.addr = alloca i256
  store i256 %size, i256* %size.addr
  %memPtr.addr = alloca i256
  store i256 0, i256* %memPtr.addr
  %0 = load i256, i256* bitcast (i8* getelementptr inbounds (i8, i8* @__heap_base, i256 64) to i256*)
  %.reverse = call i256 @solidity.bswapi256(i256 %0)
  call void @solidity.updateMemorySize(i256 64, i256 32)
  store i256 %.reverse, i256* %memPtr.addr
  %newFreePtr.addr = alloca i256
  store i256 0, i256* %newFreePtr.addr
  %1 = load i256, i256* %memPtr.addr
  %2 = load i256, i256* %size.addr
  %BO_ADD = add i256 %1, %2
  store i256 %BO_ADD, i256* %newFreePtr.addr
  %3 = load i256, i256* %newFreePtr.addr
  %BO_GT = icmp ugt i256 %3, 18446744073709551615
  %4 = load i256, i256* %newFreePtr.addr
  %5 = load i256, i256* %memPtr.addr
  %BO_LT = icmp ult i256 %4, %5
  %BO_Or = or i1 %BO_GT, %BO_LT
  br i1 %BO_Or, label %if.then, label %if.end

return:                                           ; preds = %if.end
  %6 = load i256, i256* %memPtr.addr
  ret i256 %6

if.then:                                          ; preds = %entry
  call void @solidity.updateMemorySize(i256 0, i256 0)
  call void @ethereum.revert(i8* @__heap_base, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i256, i256* %newFreePtr.addr
  %.reverse1 = call i256 @solidity.bswapi256(i256 %7)
  store i256 %.reverse1, i256* bitcast (i8* getelementptr inbounds (i8, i8* @__heap_base, i256 64) to i256*)
  call void @solidity.updateMemorySize(i256 64, i256 32)
  br label %return
}

define internal i256 @abi_encode_tuple_t_int256__to_t_int256__fromStack.uint256.uint256(i256 %headStart, i256 %value0) {
entry:
  %headStart.addr = alloca i256
  store i256 %headStart, i256* %headStart.addr
  %value0.addr = alloca i256
  store i256 %value0, i256* %value0.addr
  %tail.addr = alloca i256
  store i256 0, i256* %tail.addr
  %0 = load i256, i256* %headStart.addr
  %BO_ADD = add i256 %0, 32
  store i256 %BO_ADD, i256* %tail.addr
  %1 = load i256, i256* %value0.addr
  %2 = load i256, i256* %headStart.addr
  %BO_ADD1 = add i256 %2, 0
  call void @abi_encode_t_int256_to_t_int256_fromStack.uint256.uint256(i256 %1, i256 %BO_ADD1)
  br label %return

return:                                           ; preds = %entry
  %3 = load i256, i256* %tail.addr
  ret i256 %3
}

define internal void @abi_encode_t_int256_to_t_int256_fromStack.uint256.uint256(i256 %value, i256 %pos) {
entry:
  %value.addr = alloca i256
  store i256 %value, i256* %value.addr
  %pos.addr = alloca i256
  store i256 %pos, i256* %pos.addr
  %0 = load i256, i256* %pos.addr
  %heap.cptr = getelementptr inbounds i8, i8* @__heap_base, i256 %0
  %heap.ptr = bitcast i8* %heap.cptr to i256*
  %1 = load i256, i256* %value.addr
  %2 = call i256 @cleanup_t_int256.uint256(i256 %1)
  %.reverse = call i256 @solidity.bswapi256(i256 %2)
  store i256 %.reverse, i256* %heap.ptr
  call void @solidity.updateMemorySize(i256 %0, i256 32)
  br label %return

return:                                           ; preds = %entry
  ret void
}

define internal i256 @cleanup_t_int256.uint256(i256 %value) {
entry:
  %value.addr = alloca i256
  store i256 %value, i256* %value.addr
  %cleaned.addr = alloca i256
  store i256 0, i256* %cleaned.addr
  %0 = load i256, i256* %value.addr
  store i256 %0, i256* %cleaned.addr
  br label %return

return:                                           ; preds = %entry
  %1 = load i256, i256* %cleaned.addr
  ret i256 %1
}

define internal i256 @checked_add_t_int256.uint256.uint256(i256 %x, i256 %y) {
entry:
  %x.addr = alloca i256
  store i256 %x, i256* %x.addr
  %y.addr = alloca i256
  store i256 %y, i256* %y.addr
  %sum.addr = alloca i256
  store i256 0, i256* %sum.addr
  %0 = load i256, i256* %x.addr
  %BO_LT = icmp ult i256 %0, 0
  %1 = icmp eq i1 %BO_LT, false
  %2 = load i256, i256* %y.addr
  %3 = load i256, i256* %x.addr
  %BO_SUB = sub i256 57896044618658097711785492504343953926634992332820282019728792003956564819967, %3
  %BO_GT = icmp ugt i256 %2, %BO_SUB
  %BO_And = and i1 %1, %BO_GT
  br i1 %BO_And, label %if.then, label %if.end

return:                                           ; preds = %if.end2
  %4 = load i256, i256* %sum.addr
  ret i256 %4

if.then:                                          ; preds = %entry
  call void @solidity.updateMemorySize(i256 0, i256 0)
  call void @ethereum.revert(i8* @__heap_base, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i256, i256* %x.addr
  %BO_LT3 = icmp ult i256 %5, 0
  %6 = load i256, i256* %y.addr
  %7 = load i256, i256* %x.addr
  %BO_SUB4 = sub i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968, %7
  %BO_LT5 = icmp ult i256 %6, %BO_SUB4
  %BO_And6 = and i1 %BO_LT3, %BO_LT5
  br i1 %BO_And6, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @solidity.updateMemorySize(i256 0, i256 0)
  call void @ethereum.revert(i8* @__heap_base, i32 0)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %8 = load i256, i256* %x.addr
  %9 = load i256, i256* %y.addr
  %BO_ADD = add i256 %8, %9
  store i256 %BO_ADD, i256* %sum.addr
  br label %return
}

define internal i256 @cleanup_from_storage_t_int256.uint256(i256 %value) {
entry:
  %value.addr = alloca i256
  store i256 %value, i256* %value.addr
  %cleaned.addr = alloca i256
  store i256 0, i256* %cleaned.addr
  %0 = load i256, i256* %value.addr
  store i256 %0, i256* %cleaned.addr
  br label %return

return:                                           ; preds = %entry
  %1 = load i256, i256* %cleaned.addr
  ret i256 %1
}

define internal i256 @convert_t_rational_10_by_1_to_t_int256.uint256(i256 %value) {
entry:
  %value.addr = alloca i256
  store i256 %value, i256* %value.addr
  %converted.addr = alloca i256
  store i256 0, i256* %converted.addr
  %0 = load i256, i256* %value.addr
  %1 = call i256 @cleanup_t_int256.uint256(i256 %0)
  store i256 %1, i256* %converted.addr
  br label %return

return:                                           ; preds = %entry
  %2 = load i256, i256* %converted.addr
  ret i256 %2
}

define internal i256 @extract_from_storage_value_offset_0t_int256.uint256(i256 %slot_value) {
entry:
  %slot_value.addr = alloca i256
  store i256 %slot_value, i256* %slot_value.addr
  %value.addr = alloca i256
  store i256 0, i256* %value.addr
  %0 = load i256, i256* %slot_value.addr
  %1 = call i256 @shift_right_0_unsigned.uint256(i256 %0)
  %2 = call i256 @cleanup_from_storage_t_int256.uint256(i256 %1)
  store i256 %2, i256* %value.addr
  br label %return

return:                                           ; preds = %entry
  %3 = load i256, i256* %value.addr
  ret i256 %3
}

define internal i256 @shift_right_0_unsigned.uint256(i256 %value) {
entry:
  %value.addr = alloca i256
  store i256 %value, i256* %value.addr
  %newValue.addr = alloca i256
  store i256 0, i256* %newValue.addr
  %0 = load i256, i256* %value.addr
  %BO_Shr = lshr i256 %0, 0
  store i256 %BO_Shr, i256* %newValue.addr
  br label %return

return:                                           ; preds = %entry
  %1 = load i256, i256* %newValue.addr
  ret i256 %1
}

define internal i256 @zero_value_for_split_t_int256() {
entry:
  %ret.addr = alloca i256
  store i256 0, i256* %ret.addr
  store i256 0, i256* %ret.addr
  br label %return

return:                                           ; preds = %entry
  %0 = load i256, i256* %ret.addr
  ret i256 %0
}

define internal i256 @read_from_storage_offset_0_t_int256.uint256(i256 %slot) {
entry:
  %slot.addr = alloca i256
  store i256 %slot, i256* %slot.addr
  %value.addr = alloca i256
  store i256 0, i256* %value.addr
  %0 = load i256, i256* %slot.addr
  %.reverse = call i256 @solidity.bswapi256(i256 %0)
  %1 = alloca i256
  %2 = alloca i256
  store i256 %.reverse, i256* %1
  call void @ethereum.storageLoad(i256* %1, i256* %2)
  %3 = load i256, i256* %2
  %.reverse1 = call i256 @solidity.bswapi256(i256 %3)
  %4 = call i256 @extract_from_storage_value_offset_0t_int256.uint256(i256 %.reverse1)
  store i256 %4, i256* %value.addr
  br label %return

return:                                           ; preds = %entry
  %5 = load i256, i256* %value.addr
  ret i256 %5
}

define internal void @update_storage_value_offset_0t_int256.uint256.uint256(i256 %slot, i256 %value) {
entry:
  %slot.addr = alloca i256
  store i256 %slot, i256* %slot.addr
  %value.addr = alloca i256
  store i256 %value, i256* %value.addr
  %0 = load i256, i256* %slot.addr
  %.reverse = call i256 @solidity.bswapi256(i256 %0)
  %1 = load i256, i256* %slot.addr
  %.reverse1 = call i256 @solidity.bswapi256(i256 %1)
  %2 = alloca i256
  %3 = alloca i256
  store i256 %.reverse1, i256* %2
  call void @ethereum.storageLoad(i256* %2, i256* %3)
  %4 = load i256, i256* %3
  %.reverse2 = call i256 @solidity.bswapi256(i256 %4)
  %5 = load i256, i256* %value.addr
  %6 = call i256 @prepare_store_t_int256.uint256(i256 %5)
  %7 = call i256 @update_byte_slice_32_shift_0.uint256.uint256(i256 %.reverse2, i256 %6)
  %.reverse3 = call i256 @solidity.bswapi256(i256 %7)
  %8 = alloca i256
  %9 = alloca i256
  store i256 %.reverse, i256* %8
  store i256 %.reverse3, i256* %9
  call void @ethereum.storageStore(i256* %8, i256* %9)
  br label %return

return:                                           ; preds = %entry
  ret void
}

define internal i256 @prepare_store_t_int256.uint256(i256 %value) {
entry:
  %value.addr = alloca i256
  store i256 %value, i256* %value.addr
  %ret.addr = alloca i256
  store i256 0, i256* %ret.addr
  %0 = load i256, i256* %value.addr
  store i256 %0, i256* %ret.addr
  br label %return

return:                                           ; preds = %entry
  %1 = load i256, i256* %ret.addr
  ret i256 %1
}

define internal i256 @shift_left_0.uint256(i256 %value) {
entry:
  %value.addr = alloca i256
  store i256 %value, i256* %value.addr
  %newValue.addr = alloca i256
  store i256 0, i256* %newValue.addr
  %0 = load i256, i256* %value.addr
  %BO_Shl = shl i256 %0, 0
  store i256 %BO_Shl, i256* %newValue.addr
  br label %return

return:                                           ; preds = %entry
  %1 = load i256, i256* %newValue.addr
  ret i256 %1
}

define internal i256 @update_byte_slice_32_shift_0.uint256.uint256(i256 %value, i256 %toInsert) {
entry:
  %value.addr = alloca i256
  store i256 %value, i256* %value.addr
  %toInsert.addr = alloca i256
  store i256 %toInsert, i256* %toInsert.addr
  %result.addr = alloca i256
  store i256 0, i256* %result.addr
  %mask.addr = alloca i256
  store i256 0, i256* %mask.addr
  store i256 -1, i256* %mask.addr
  %0 = load i256, i256* %toInsert.addr
  %1 = call i256 @shift_left_0.uint256(i256 %0)
  store i256 %1, i256* %toInsert.addr
  %2 = load i256, i256* %value.addr
  %3 = load i256, i256* %mask.addr
  %4 = xor i256 %3, -1
  %BO_And = and i256 %2, %4
  store i256 %BO_And, i256* %value.addr
  %5 = load i256, i256* %value.addr
  %6 = load i256, i256* %toInsert.addr
  %7 = load i256, i256* %mask.addr
  %BO_And1 = and i256 %6, %7
  %BO_Or = or i256 %5, %BO_And1
  store i256 %BO_Or, i256* %result.addr
  br label %return

return:                                           ; preds = %entry
  %8 = load i256, i256* %result.addr
  ret i256 %8
}

define void @main() {
entry:
  call void @C_20_deployed.main()
  ret void
}

define internal i256 @__mul256(i256 %lhs, i256 %rhs) {
entry:
  %lhs_l = trunc i256 %lhs to i128
  %0 = lshr i256 %lhs, 128
  %lhs_h = trunc i256 %0 to i128
  %rhs_l = trunc i256 %rhs to i128
  %1 = lshr i256 %rhs, 128
  %rhs_h = trunc i256 %1 to i128
  %lhs_ll = and i128 %lhs_l, 18446744073709551615
  %rhs_ll = and i128 %rhs_l, 18446744073709551615
  %t1 = call i128 @__mul128(i128 %lhs_ll, i128 %rhs_ll)
  %t_l = and i128 %t1, 18446744073709551615
  %t_h = lshr i128 %t1, 64
  %lhs_lh = lshr i128 %lhs_l, 64
  %rhs_lh = lshr i128 %rhs_l, 64
  %2 = call i128 @__mul128(i128 %lhs_lh, i128 %rhs_ll)
  %u = add i128 %2, %t_h
  %u_l = and i128 %u, 18446744073709551615
  %u_h = lshr i128 %u, 64
  %3 = call i128 @__mul128(i128 %lhs_ll, i128 %rhs_lh)
  %v = add i128 %3, %u_l
  %v_h = lshr i128 %v, 64
  %4 = call i128 @__mul128(i128 %lhs_lh, i128 %rhs_lh)
  %5 = add i128 %u_h, %v_h
  %w = add i128 %4, %5
  %6 = shl i128 %v, 64
  %7 = add i128 %t_l, %6
  %o_l = zext i128 %7 to i256
  %8 = call i128 @__mul128(i128 %rhs_h, i128 %lhs_l)
  %9 = call i128 @__mul128(i128 %rhs_l, i128 %lhs_h)
  %10 = add i128 %8, %9
  %11 = add i128 %w, %10
  %o_h = zext i128 %11 to i256
  %12 = shl i256 %o_h, 128
  %o = add i256 %o_l, %12
  ret i256 %o
}

define internal i128 @__mul128(i128 %lhs, i128 %rhs) {
entry:
  %lhs_l = trunc i128 %lhs to i64
  %0 = lshr i128 %lhs, 64
  %lhs_h = trunc i128 %0 to i64
  %rhs_l = trunc i128 %rhs to i64
  %1 = lshr i128 %rhs, 64
  %rhs_h = trunc i128 %1 to i64
  %lhs_ll = and i64 %lhs_l, 4294967295
  %rhs_ll = and i64 %rhs_l, 4294967295
  %t = mul i64 %lhs_ll, %rhs_ll
  %t_l = and i64 %t, 4294967295
  %t_h = lshr i64 %t, 32
  %lhs_lh = lshr i64 %lhs_l, 32
  %rhs_lh = lshr i64 %rhs_l, 32
  %2 = mul i64 %lhs_lh, %rhs_ll
  %u = add i64 %2, %t_h
  %u_l = and i64 %u, 4294967295
  %u_h = lshr i64 %u, 32
  %3 = mul i64 %lhs_ll, %rhs_lh
  %v = add i64 %3, %u_l
  %v_h = lshr i64 %v, 32
  %4 = mul i64 %lhs_lh, %rhs_lh
  %5 = add i64 %u_h, %v_h
  %w = add i64 %4, %5
  %6 = shl i64 %v, 32
  %7 = add i64 %t_l, %6
  %o_l = zext i64 %7 to i128
  %8 = mul i64 %rhs_h, %lhs_l
  %9 = mul i64 %rhs_l, %lhs_h
  %10 = add i64 %8, %9
  %11 = add i64 %w, %10
  %o_h = zext i64 %11 to i128
  %12 = shl i128 %o_h, 64
  %o = add i128 %o_l, %12
  ret i128 %o
}

attributes #0 = { nounwind }
attributes #1 = { nounwind writeonly "wasm-import-module"="ethereum" "wasm-import-name"="callDataCopy" }
attributes #2 = { nounwind "wasm-import-module"="ethereum" "wasm-import-name"="call" }
attributes #3 = { nounwind "wasm-import-module"="ethereum" "wasm-import-name"="callStatic" }
attributes #4 = { nounwind "wasm-import-module"="ethereum" "wasm-import-name"="callDelegate" }
attributes #5 = { nounwind writeonly "wasm-import-module"="ethereum" "wasm-import-name"="finish" }
attributes #6 = { nounwind readonly "wasm-import-module"="ethereum" "wasm-import-name"="getCallDataSize" }
attributes #7 = { "wasm-import-module"="ethereum" "wasm-import-name"="getCallValue" }
attributes #8 = { argmemonly nounwind "wasm-import-module"="ethereum" "wasm-import-name"="getCaller" }
attributes #9 = { argmemonly nounwind "wasm-import-module"="ethereum" "wasm-import-name"="codeCopy" }
attributes #10 = { nounwind "wasm-import-module"="ethereum" "wasm-import-name"="getGasLeft" }
attributes #11 = { nounwind "wasm-import-module"="ethereum" "wasm-import-name"="log" }
attributes #12 = { "wasm-import-module"="ethereum" "wasm-import-name"="returnDataSize" }
attributes #13 = { nounwind "wasm-import-module"="ethereum" "wasm-import-name"="returnDataCopy" }
attributes #14 = { nounwind writeonly "wasm-import-module"="ethereum" "wasm-import-name"="revert" }
attributes #15 = { nounwind "wasm-import-module"="ethereum" "wasm-import-name"="storageLoad" }
attributes #16 = { nounwind "wasm-import-module"="ethereum" "wasm-import-name"="storageStore" }
attributes #17 = { "wasm-import-module"="ethereum" "wasm-import-name"="getTxGasPrice" }
attributes #18 = { "wasm-import-module"="ethereum" "wasm-import-name"="getTxOrigin" }
attributes #19 = { "wasm-import-module"="ethereum" "wasm-import-name"="getBlockCoinbase" }
attributes #20 = { "wasm-import-module"="ethereum" "wasm-import-name"="getBlockDifficulty" }
attributes #21 = { "wasm-import-module"="ethereum" "wasm-import-name"="getBlockGasLimit" }
attributes #22 = { "wasm-import-module"="ethereum" "wasm-import-name"="getBlockNumber" }
attributes #23 = { "wasm-import-module"="ethereum" "wasm-import-name"="getBlockTimestamp" }
attributes #24 = { "wasm-import-module"="ethereum" "wasm-import-name"="getBlockHash" }
attributes #25 = { "wasm-import-module"="ethereum" "wasm-import-name"="getExternalBalance" }
attributes #26 = { nounwind "wasm-import-module"="debug" "wasm-import-name"="print32" }
attributes #27 = { "wasm-import-module"="ethereum" "wasm-import-name"="getAddress" }
attributes #28 = { nounwind readnone }
