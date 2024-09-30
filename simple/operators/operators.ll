; ModuleID = 'wandelt'
source_filename = "wandelt"
target triple = "x86_64-pc-windows-msvc"

define i32 @main() {
entry:
  br label %loop

loop:                                             ; preds = %loop, %entry
  %result = phi i32 [ 1, %entry ], [ %0, %loop ]
  %counter = phi i32 [ 0, %entry ], [ %1, %loop ]
  %0 = mul i32 %result, 12
  %1 = add i32 %counter, 1
  %2 = icmp ule i32 %1, 2
  br i1 %2, label %loop, label %afterloop

afterloop:                                        ; preds = %loop
  %3 = srem i32 %result, 7
  %4 = add i32 %3, 8
  %5 = mul i32 %4, 3
  %6 = sub i32 %5, 6
  br label %loop1

loop1:                                            ; preds = %loop1, %afterloop
  %result3 = phi i32 [ 1, %afterloop ], [ %7, %loop1 ]
  %counter4 = phi i32 [ 0, %afterloop ], [ %8, %loop1 ]
  %7 = mul i32 %result3, %6
  %8 = add i32 %counter4, 1
  %9 = icmp ule i32 %8, 2
  br i1 %9, label %loop1, label %afterloop2

afterloop2:                                       ; preds = %loop1
  %10 = srem i32 %result3, 11
  %11 = add i32 %10, 9
  %12 = mul i32 %11, 2
  %13 = sub i32 %12, 5
  br label %loop5

loop5:                                            ; preds = %loop5, %afterloop2
  %result7 = phi i32 [ 1, %afterloop2 ], [ %14, %loop5 ]
  %counter8 = phi i32 [ 0, %afterloop2 ], [ %15, %loop5 ]
  %14 = mul i32 %result7, 23
  %15 = add i32 %counter8, 1
  %16 = icmp ule i32 %15, 2
  br i1 %16, label %loop5, label %afterloop6

afterloop6:                                       ; preds = %loop5
  %17 = sub i32 %result7, 8
  %18 = srem i32 %17, 5
  %19 = mul i32 %18, 4
  %20 = add i32 %19, 6
  br label %loop9

loop9:                                            ; preds = %loop9, %afterloop6
  %result11 = phi i32 [ 1, %afterloop6 ], [ %21, %loop9 ]
  %counter12 = phi i32 [ 0, %afterloop6 ], [ %22, %loop9 ]
  %21 = mul i32 %result11, %20
  %22 = add i32 %counter12, 1
  %23 = icmp ule i32 %22, 2
  br i1 %23, label %loop9, label %afterloop10

afterloop10:                                      ; preds = %loop9
  %24 = srem i32 %result11, 13
  %25 = add i32 %13, %24
  ret i32 %25
}
