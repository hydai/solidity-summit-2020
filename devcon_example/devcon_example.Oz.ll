; ModuleID = './devcon_example.yul'
source_filename = "./devcon_example.yul"
target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128"
target triple = "wasm32-unknown-unknown-wasm"

@__heap_base = external global i8, align 1

; Function Attrs: nounwind writeonly
declare void @ethereum.callDataCopy(i8* writeonly, i32, i32) local_unnamed_addr #0

; Function Attrs: nounwind writeonly
declare void @ethereum.revert(i8* readonly, i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @ethereum.storageStore(i256* readonly, i256* readonly) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readnone
define internal fastcc i256 @solidity.bswapi256(i256 %data) unnamed_addr #3 {
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

; Function Attrs: nounwind
define void @object.main() local_unnamed_addr #4 {
entry:
  %0 = alloca i256, align 8
  %1 = alloca i256, align 8
  %.sub = bitcast i256* %1 to i8*
  call void @ethereum.callDataCopy(i8* nonnull %.sub, i32 0, i32 32)
  %2 = load i256, i256* %1, align 8
  %.reverse1 = call fastcc i256 @solidity.bswapi256(i256 %2)
  %3 = bitcast i256* %0 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3)
  %4 = trunc i256 %.reverse1 to i32
  call void @ethereum.callDataCopy(i8* nonnull %3, i32 %4, i32 32) #4
  %5 = load i256, i256* %0, align 8
  %.reverse.i = call fastcc i256 @solidity.bswapi256(i256 %5) #4
  %BO_LT.i3 = icmp eq i256 %.reverse.i, 0
  br i1 %BO_LT.i3, label %array_sum.uint256.exit, label %for.body.i

for.body.i:                                       ; preds = %entry, %for.body.i
  %i.addr.0.i5 = phi i256 [ %BO_ADD1.i, %for.body.i ], [ 0, %entry ]
  %sum.addr.0.i4 = phi i256 [ %BO_ADD.i, %for.body.i ], [ 0, %entry ]
  %6 = call fastcc i256 @array_load.uint256.uint256(i256 %.reverse1, i256 %i.addr.0.i5) #4
  %BO_ADD.i = add i256 %6, %sum.addr.0.i4
  %BO_ADD1.i = add nuw i256 %i.addr.0.i5, 1
  %BO_LT.i = icmp ult i256 %BO_ADD1.i, %.reverse.i
  br i1 %BO_LT.i, label %for.body.i, label %array_sum.uint256.exit

array_sum.uint256.exit:                           ; preds = %for.body.i, %entry
  %sum.addr.0.i.lcssa = phi i256 [ 0, %entry ], [ %BO_ADD.i, %for.body.i ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3)
  %.reverse2 = call fastcc i256 @solidity.bswapi256(i256 %sum.addr.0.i.lcssa)
  %7 = alloca i256, align 8
  %8 = alloca i256, align 8
  store i256 0, i256* %7, align 8
  store i256 %.reverse2, i256* %8, align 8
  call void @ethereum.storageStore(i256* nonnull %7, i256* nonnull %8)
  ret void
}

; Function Attrs: nounwind writeonly
define internal fastcc i256 @array_load.uint256.uint256(i256 %x, i256 %i) unnamed_addr #5 {
entry:
  %0 = alloca i256, align 8
  %.sub = bitcast i256* %0 to i8*
  %1 = trunc i256 %x to i32
  call void @ethereum.callDataCopy(i8* nonnull %.sub, i32 %1, i32 32)
  %2 = load i256, i256* %0, align 8
  %.reverse = call fastcc i256 @solidity.bswapi256(i256 %2)
  %BO_LT = icmp ugt i256 %.reverse, %i
  br i1 %BO_LT, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @ethereum.revert(i8* nonnull @__heap_base, i32 0)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %BO_ADD = add i256 %x, 32
  %lhs_l.i = trunc i256 %i to i64
  %lhs_ll.i8 = shl i64 %lhs_l.i, 5
  %o_l.i = zext i64 %lhs_ll.i8 to i256
  %BO_ADD1 = add i256 %BO_ADD, %o_l.i
  %3 = alloca i256, align 8
  %.sub6 = bitcast i256* %3 to i8*
  %4 = trunc i256 %BO_ADD1 to i32
  call void @ethereum.callDataCopy(i8* nonnull %.sub6, i32 %4, i32 32)
  %5 = load i256, i256* %3, align 8
  %.reverse2 = call fastcc i256 @solidity.bswapi256(i256 %5)
  ret i256 %.reverse2
}

; Function Attrs: nounwind
define void @main() local_unnamed_addr #4 {
entry:
  tail call void @object.main()
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

attributes #0 = { nounwind writeonly "wasm-import-module"="ethereum" "wasm-import-name"="callDataCopy" }
attributes #1 = { nounwind writeonly "wasm-import-module"="ethereum" "wasm-import-name"="revert" }
attributes #2 = { nounwind "wasm-import-module"="ethereum" "wasm-import-name"="storageStore" }
attributes #3 = { norecurse nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind writeonly }
attributes #6 = { argmemonly nounwind }
