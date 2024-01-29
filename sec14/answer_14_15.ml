(* 目的 : nから1までのリストを作る *)
(* enumerate : int -> int list *)
let rec enumerate n = if n = 0 then [] else n :: enumerate (n - 1)

(* 目的 : 1から受け取った自然数までの合計を求める関数 one_to_n を enumerate と高階関数を使って作る *)
(* one_to_n : int -> int *)
let one_to_n n = List.fold_right (+) (enumerate n) 0

(* テスト *)
let test1 = one_to_n 0 = 0
let test2 = one_to_n 1 = 1
let test3 = one_to_n 2 = 3
let test4 = one_to_n 3 = 6
let test5 = one_to_n 4 = 10
let test6 = one_to_n 5 = 15
let test7 = one_to_n 6 = 21
let test8 = one_to_n 7 = 28
let test9 = one_to_n 8 = 36
let test10 = one_to_n 9 = 45
let test11 = one_to_n 10 = 55
let test12 = one_to_n 11 = 66
let test13 = one_to_n 12 = 78
let test14 = one_to_n 13 = 91
let test15 = one_to_n 14 = 105

