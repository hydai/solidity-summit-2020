; ModuleID = './storages.opt.yul'
source_filename = "./storages.opt.yul"
target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32-unknown-unknown-wasm"

@memory.size = private unnamed_addr global i256 0, align 256
@__heap_base = external global i8, align 1

; Function Attrs: nounwind writeonly
declare void @ethereum.callDataCopy(i8* writeonly, i32, i32) local_unnamed_addr #0

; Function Attrs: nounwind writeonly
declare void @ethereum.finish(i8* readonly, i32) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @ethereum.getCallDataSize() local_unnamed_addr #2

declare void @ethereum.getCallValue(i128*) local_unnamed_addr #3

; Function Attrs: nounwind writeonly
declare void @ethereum.revert(i8* readonly, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @ethereum.storageLoad(i256* readonly, i256* writeonly) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @ethereum.storageStore(i256* readonly, i256* readonly) local_unnamed_addr #6

; Function Attrs: norecurse nounwind readnone
define internal fastcc i256 @solidity.bswapi256(i256 %data) unnamed_addr #7 {
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
  %62 = or i256 %61, %0
  %63 = or i256 %62, %2
  %64 = or i256 %63, %4
  %65 = or i256 %64, %6
  %66 = or i256 %65, %8
  %67 = or i256 %66, %10
  %68 = or i256 %67, %12
  %69 = or i256 %68, %14
  %70 = or i256 %69, %16
  %71 = or i256 %70, %18
  %72 = or i256 %71, %20
  %73 = or i256 %72, %22
  %74 = or i256 %73, %24
  %75 = or i256 %74, %26
  %76 = or i256 %75, %28
  %77 = or i256 %76, %30
  %78 = or i256 %77, %32
  %79 = or i256 %78, %34
  %80 = or i256 %79, %36
  %81 = or i256 %80, %38
  %82 = or i256 %81, %40
  %83 = or i256 %82, %42
  %84 = or i256 %83, %44
  %85 = or i256 %84, %46
  %86 = or i256 %85, %48
  %87 = or i256 %86, %50
  %88 = or i256 %87, %52
  %89 = or i256 %88, %54
  %90 = or i256 %89, %56
  %91 = or i256 %90, %58
  %92 = or i256 %91, %60
  ret i256 %92
}

define void @C_20_deployed.main() local_unnamed_addr {
entry:
  %0 = alloca i256, align 8
  %1 = alloca i256, align 8
  %2 = alloca i256, align 8
  %3 = alloca i256, align 8
  %4 = alloca i256, align 8
  %5 = alloca i256, align 8
  %6 = alloca i256, align 8
  %7 = alloca i256, align 8
  %8 = alloca i256, align 8
  %9 = alloca i256, align 8
  %10 = alloca i256, align 8
  %11 = alloca i256, align 8
  %12 = alloca i256, align 8
  %13 = alloca i256, align 8
  store i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968, i256* bitcast (i8* getelementptr (i8, i8* @__heap_base, i32 64) to i256*), align 8
  %memory.size.i = load i256, i256* @memory.size, align 256
  %14 = icmp ult i256 %memory.size.i, 96
  br i1 %14, label %update.i, label %solidity.updateMemorySize.exit

update.i:                                         ; preds = %entry
  store i256 128, i256* @memory.size, align 256
  br label %solidity.updateMemorySize.exit

solidity.updateMemorySize.exit:                   ; preds = %entry, %update.i
  %15 = tail call i32 @ethereum.getCallDataSize()
  %BO_LT = icmp ugt i32 %15, 3
  br i1 %BO_LT, label %if.then, label %if.end

if.then:                                          ; preds = %solidity.updateMemorySize.exit
  %16 = alloca i256, align 8
  %.sub = bitcast i256* %16 to i8*
  call void @ethereum.callDataCopy(i8* nonnull %.sub, i32 0, i32 32)
  %17 = load i256, i256* %16, align 8
  %.reverse1 = call fastcc i256 @solidity.bswapi256(i256 %17)
  %BO_Shr.i.mask = and i256 %.reverse1, -26959946667150639794667015087019630673637144422540572481103610249216
  %cond = icmp eq i256 %BO_Shr.i.mask, 18320653568259070997333563987999395423151336464787283864857095557675424415744
  br i1 %cond, label %switch.case, label %if.end

if.end:                                           ; preds = %48, %if.then, %solidity.updateMemorySize.exit
  call void @ethereum.revert(i8* nonnull @__heap_base, i32 0)
  ret void

switch.case:                                      ; preds = %if.then
  %18 = alloca i128, align 8
  call void @ethereum.getCallValue(i128* nonnull %18)
  %19 = load i128, i128* %18, align 8
  %extend_256 = zext i128 %19 to i256
  %shift_left = shl nuw i256 %extend_256, 128
  %.reverse4 = call fastcc i256 @solidity.bswapi256(i256 %shift_left)
  %20 = and i256 %.reverse4, 340282366920938463463374607431768211455
  %21 = icmp eq i256 %20, 0
  br i1 %21, label %if.end3, label %if.then2

if.then2:                                         ; preds = %switch.case
  call void @ethereum.revert(i8* nonnull @__heap_base, i32 0)
  br label %if.end3

if.end3:                                          ; preds = %switch.case, %if.then2
  %22 = bitcast i256* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %22) #9
  %23 = bitcast i256* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %23) #9
  store i256 0, i256* %12, align 8
  call void @ethereum.storageLoad(i256* nonnull %12, i256* nonnull %13) #9
  %24 = load i256, i256* %13, align 8
  %.reverse1.i.i = call fastcc i256 @solidity.bswapi256(i256 %24) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %22) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #9
  %BO_SUB.i.i = sub i256 57896044618658097711785492504343953926634992332820282019728792003956564819967, %.reverse1.i.i
  %BO_GT.i.i = icmp ult i256 %BO_SUB.i.i, 10
  br i1 %BO_GT.i.i, label %if.then.i.i, label %checked_add_t_int256.uint256.uint256.exit.i

if.then.i.i:                                      ; preds = %if.end3
  call void @ethereum.revert(i8* nonnull @__heap_base, i32 0) #9
  br label %checked_add_t_int256.uint256.uint256.exit.i

checked_add_t_int256.uint256.uint256.exit.i:      ; preds = %if.then.i.i, %if.end3
  %BO_ADD.i.i = add i256 %.reverse1.i.i, 10
  %25 = bitcast i256* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %25) #9
  %26 = bitcast i256* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %26) #9
  %27 = bitcast i256* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %27) #9
  %28 = bitcast i256* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %28) #9
  store i256 0, i256* %8, align 8
  call void @ethereum.storageLoad(i256* nonnull %8, i256* nonnull %9) #9
  %.reverse3.i.i = call fastcc i256 @solidity.bswapi256(i256 %BO_ADD.i.i) #9
  store i256 0, i256* %10, align 8
  store i256 %.reverse3.i.i, i256* %11, align 8
  call void @ethereum.storageStore(i256* nonnull %10, i256* nonnull %11) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %25) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %26) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %27) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %28) #9
  %29 = bitcast i256* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %29) #9
  %30 = bitcast i256* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %30) #9
  store i256 0, i256* %6, align 8
  call void @ethereum.storageLoad(i256* nonnull %6, i256* nonnull %7) #9
  %31 = load i256, i256* %7, align 8
  %.reverse1.i5.i = call fastcc i256 @solidity.bswapi256(i256 %31) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %29) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %30) #9
  %BO_SUB.i6.i = sub i256 57896044618658097711785492504343953926634992332820282019728792003956564819967, %.reverse1.i5.i
  %BO_GT.i7.i = icmp ult i256 %BO_SUB.i6.i, 10
  br i1 %BO_GT.i7.i, label %if.then.i8.i, label %fun_F_19.exit

if.then.i8.i:                                     ; preds = %checked_add_t_int256.uint256.uint256.exit.i
  call void @ethereum.revert(i8* nonnull @__heap_base, i32 0) #9
  br label %fun_F_19.exit

fun_F_19.exit:                                    ; preds = %checked_add_t_int256.uint256.uint256.exit.i, %if.then.i8.i
  %BO_ADD.i9.i = add i256 %.reverse1.i5.i, 10
  %32 = bitcast i256* %2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %32) #9
  %33 = bitcast i256* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %33) #9
  %34 = bitcast i256* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %34) #9
  %35 = bitcast i256* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %35) #9
  store i256 0, i256* %2, align 8
  call void @ethereum.storageLoad(i256* nonnull %2, i256* nonnull %3) #9
  %.reverse3.i11.i = call fastcc i256 @solidity.bswapi256(i256 %BO_ADD.i9.i) #9
  store i256 0, i256* %4, align 8
  store i256 %.reverse3.i11.i, i256* %5, align 8
  call void @ethereum.storageStore(i256* nonnull %4, i256* nonnull %5) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %32) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %34) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %35) #9
  %36 = bitcast i256* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %36) #9
  %37 = bitcast i256* %1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #9
  store i256 0, i256* %0, align 8
  call void @ethereum.storageLoad(i256* nonnull %0, i256* nonnull %1) #9
  %38 = load i256, i256* %1, align 8
  %.reverse1.i12.i = call fastcc i256 @solidity.bswapi256(i256 %38) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %36) #9
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #9
  %39 = load i256, i256* bitcast (i8* getelementptr (i8, i8* @__heap_base, i32 64) to i256*), align 8
  %.reverse.i = call fastcc i256 @solidity.bswapi256(i256 %39) #9
  %memory.size.i.i = load i256, i256* @memory.size, align 256
  %40 = icmp ult i256 %memory.size.i.i, 96
  br i1 %40, label %update.i.i, label %solidity.updateMemorySize.exit.i

update.i.i:                                       ; preds = %fun_F_19.exit
  store i256 128, i256* @memory.size, align 256
  br label %solidity.updateMemorySize.exit.i

solidity.updateMemorySize.exit.i:                 ; preds = %update.i.i, %fun_F_19.exit
  %memory.size.i.i.i13 = phi i256 [ 128, %update.i.i ], [ %memory.size.i.i, %fun_F_19.exit ]
  %BO_GT.i = icmp ugt i256 %.reverse.i, 18446744073709551615
  br i1 %BO_GT.i, label %if.end.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %solidity.updateMemorySize.exit.i
  %.reverse18.i = call fastcc i256 @solidity.bswapi256(i256 %.reverse.i) #9
  store i256 %.reverse18.i, i256* bitcast (i8* getelementptr (i8, i8* @__heap_base, i32 64) to i256*), align 8
  br label %allocateMemory.uint256.exit

if.end.i:                                         ; preds = %solidity.updateMemorySize.exit.i
  call void @ethereum.revert(i8* nonnull @__heap_base, i32 0) #9
  %memory.size.i2.pre.i = load i256, i256* @memory.size, align 256
  %.reverse1.i = call fastcc i256 @solidity.bswapi256(i256 %.reverse.i) #9
  store i256 %.reverse1.i, i256* bitcast (i8* getelementptr (i8, i8* @__heap_base, i32 64) to i256*), align 8
  %41 = icmp ult i256 %memory.size.i2.pre.i, 96
  br i1 %41, label %update.i3.i, label %allocateMemory.uint256.exit

update.i3.i:                                      ; preds = %if.end.i
  store i256 128, i256* @memory.size, align 256
  br label %allocateMemory.uint256.exit

allocateMemory.uint256.exit:                      ; preds = %if.end.thread.i, %if.end.i, %update.i3.i
  %memory.size.i.i.i = phi i256 [ %memory.size.i.i.i13, %if.end.thread.i ], [ %memory.size.i2.pre.i, %if.end.i ], [ 128, %update.i3.i ]
  %BO_ADD.i = add i256 %.reverse.i, 32
  %42 = trunc i256 %.reverse.i to i32
  %heap.cptr.i.i = getelementptr inbounds i8, i8* @__heap_base, i32 %42
  %heap.ptr.i.i = bitcast i8* %heap.cptr.i.i to i256*
  %.reverse.i.i = call fastcc i256 @solidity.bswapi256(i256 %.reverse1.i12.i) #9
  store i256 %.reverse.i.i, i256* %heap.ptr.i.i, align 8
  %43 = icmp ugt i256 %BO_ADD.i, %memory.size.i.i.i
  %44 = add i256 %.reverse.i, 64
  %memory.new_size.i.i.i = and i256 %44, -32
  %memory.size.i9 = select i1 %43, i256 %memory.new_size.i.i.i, i256 %memory.size.i.i.i
  %45 = icmp ugt i256 %BO_ADD.i, %memory.size.i9
  %46 = or i1 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %allocateMemory.uint256.exit
  %simplifycfg.merge = select i1 %45, i256 %memory.new_size.i.i.i, i256 %memory.size.i9
  store i256 %simplifycfg.merge, i256* @memory.size, align 256
  br label %48

48:                                               ; preds = %allocateMemory.uint256.exit, %47
  call void @ethereum.finish(i8* nonnull %heap.cptr.i.i, i32 32)
  br label %if.end
}

define void @main() local_unnamed_addr {
entry:
  tail call void @C_20_deployed.main()
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #8

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #8

attributes #0 = { nounwind writeonly "wasm-import-module"="ethereum" "wasm-import-name"="callDataCopy" }
attributes #1 = { nounwind writeonly "wasm-import-module"="ethereum" "wasm-import-name"="finish" }
attributes #2 = { nounwind readonly "wasm-import-module"="ethereum" "wasm-import-name"="getCallDataSize" }
attributes #3 = { "wasm-import-module"="ethereum" "wasm-import-name"="getCallValue" }
attributes #4 = { nounwind writeonly "wasm-import-module"="ethereum" "wasm-import-name"="revert" }
attributes #5 = { nounwind "wasm-import-module"="ethereum" "wasm-import-name"="storageLoad" }
attributes #6 = { nounwind "wasm-import-module"="ethereum" "wasm-import-name"="storageStore" }
attributes #7 = { norecurse nounwind readnone }
attributes #8 = { argmemonly nounwind }
attributes #9 = { nounwind }
