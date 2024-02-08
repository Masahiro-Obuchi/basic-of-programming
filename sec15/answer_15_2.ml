(* ふたつの自然数を受け取ったら、その最大公約数を返す *)
(* gcd : int -> int -> int *)
let rec gcd m n =
  if n = 0 then m
    else gcd n (m mod n)

(* テスト *)
let test1 = gcd 0 0 = 0
let test2 = gcd 0 1 = 1
let test3 = gcd 1 0 = 1
let test4 = gcd 1 1 = 1
let test5 = gcd 1 2 = 1
let test6 = gcd 2 1 = 1
let test7 = gcd 2 2 = 2
let test8 = gcd 2 3 = 1
let test9 = gcd 3 2 = 1
let test10 = gcd 3 3 = 3
let test11 = gcd 3 4 = 1
let test12 = gcd 4 3 = 1
let test13 = gcd 4 4 = 4
let test14 = gcd 4 5 = 1
let test15 = gcd 5 4 = 1
let test16 = gcd 5 5 = 5
let test17 = gcd 5 6 = 1
let test18 = gcd 6 5 = 1
let test19 = gcd 6 6 = 6
let test20 = gcd 6 7 = 1

