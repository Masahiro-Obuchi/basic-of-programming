(* 目的 : nから1までのリストを作る *)
(* enumerate : int -> int list *)
let rec enumerate n = if n = 0 then [] else n :: enumerate (n - 1)

(* テスト *)
let test1 = enumerate 0 = []
let test2 = enumerate 1 = [1]
let test3 = enumerate 2 = [2; 1]
let test4 = enumerate 3 = [3; 2; 1]

(* 目的 : nの約数のリストを返す *)
(* divisor : int -> int list *)
let divisor n = List.filter (fun x -> n mod x = 0) (enumerate n)

(* テスト *)
let test5 = divisor 0 = []
let test6 = divisor 1 = [1]
let test7 = divisor 2 = [2; 1]
let test8 = divisor 3 = [3; 1]
let test9 = divisor 4 = [4; 2; 1]
let test10 = divisor 5 = [5; 1]
let test11 = divisor 6 = [6; 3; 2; 1]
let test12 = divisor 7 = [7; 1]
let test13 = divisor 8 = [8; 4; 2; 1]
let test14 = divisor 9 = [9; 3; 1]
let test15 = divisor 10 = [10; 5; 2; 1]
let test16 = divisor 11 = [11; 1]
let test17 = divisor 12 = [12; 6; 4; 3; 2; 1]
let test18 = divisor 13 = [13; 1]
let test19 = divisor 14 = [14; 7; 2; 1]
let test20 = divisor 15 = [15; 5; 3; 1]

(* 目的 : m以下の完全数のリストを返す *)
(* perfect : int -> int list *)
let perfect m = List.filter (fun n -> List.fold_right (+) (divisor n) 0 - n = n) (enumerate m)

(* テスト *)
let test21 = perfect 0 = []
let test22 = perfect 1 = []
let test23 = perfect 2 = []
let test24 = perfect 3 = []
let test25 = perfect 4 = []
let test26 = perfect 5 = []
let test27 = perfect 6 = [6]
let test28 = perfect 7 = [6]
let test30 = perfect 10000 = [8128; 496; 28; 6]
