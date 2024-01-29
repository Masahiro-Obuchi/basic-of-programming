(* 目的 : nから1までのリストを作る *)
(* enumerate : int -> int list *)
let rec enumerate n = if n = 0 then [] else n :: enumerate (n - 1)

(* 目的 : 階乗を求める関数をenumerateと高階関数を使って作る *)
(* fac : int -> int *)
let fac n = List.fold_right (fun x y -> x * y) (enumerate n) 1

(* テスト *)
let test1 = fac 0 = 1
let test2 = fac 1 = 1
let test3 = fac 2 = 2
let test4 = fac 3 = 6
let test5 = fac 4 = 24
let test6 = fac 5 = 120
let test7 = fac 6 = 720
let test8 = fac 7 = 5040
let test9 = fac 8 = 40320
let test10 = fac 9 = 362880
let test11 = fac 10 = 3628800

