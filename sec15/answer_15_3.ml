(* 目的: 自然数nを受け取ったら、2からnまでの自然数のリストを昇順で作る *)
(* enumerate : int -> int list *)
let rec enumerate n = if n <= 1 then [] else enumerate (n - 1) @ [n]

(* テスト *)
let test1 = enumerate 1 = []
let test2 = enumerate 2 = [2;]
let test3 = enumerate 3 = [2; 3;]
let test4 = enumerate 4 = [2; 3; 4;]
let test5 = enumerate 5 = [2; 3; 4; 5;]
let test6 = enumerate 6 = [2; 3; 4; 5; 6;]
let test7 = enumerate 7 = [2; 3; 4; 5; 6; 7;]
let test8 = enumerate 8 = [2; 3; 4; 5; 6; 7; 8;]
let test9 = enumerate 9 = [2; 3; 4; 5; 6; 7; 8; 9;]
let test10 = enumerate 10 = [2; 3; 4; 5; 6; 7; 8; 9; 10;]

(* 目的: 2以上n以下の自然数のリストを受け取ったら、2以上n以下の素数のリストを返す *)
(* sieve : int list -> int list *)
let rec sieve lst = match lst with
    [] -> []
  | first :: rest -> first :: sieve (List.filter (fun n -> n mod first <> 0) rest)

(* テスト *)
let test11 = sieve [] = []
let test12 = sieve [2;] = [2;]
let test13 = sieve [2; 3;] = [2; 3;]
let test14 = sieve [2; 3; 4;] = [2; 3;]
let test15 = sieve [2; 3; 4; 5;] = [2; 3; 5;]
let test16 = sieve [2; 3; 4; 5; 6;] = [2; 3; 5;]
let test17 = sieve [2; 3; 4; 5; 6; 7;] = [2; 3; 5; 7;]
let test18 = sieve [2; 3; 4; 5; 6; 7; 8;] = [2; 3; 5; 7;]
let test19 = sieve [2; 3; 4; 5; 6; 7; 8; 9;] = [2; 3; 5; 7;]
let test20 = sieve [2; 3; 4; 5; 6; 7; 8; 9; 10;] = [2; 3; 5; 7;]
let test21 = sieve [3; 5; 2; 9; 8; 8; 12; 11; 4] = [3; 5; 2; 11;]

(* 目的: 自然数nまでの素数のリストを作る *)
(* prime : int -> int list *)
let prime n = sieve (enumerate n)

(* テスト *)
let test21 = prime 1 = []
let test22 = prime 2 = [2;]
let test23 = prime 3 = [2; 3;]
let test24 = prime 4 = [2; 3;]
let test25 = prime 5 = [2; 3; 5;]
let test26 = prime 6 = [2; 3; 5;]
let test27 = prime 7 = [2; 3; 5; 7;]
let test28 = prime 8 = [2; 3; 5; 7;]
let test29 = prime 9 = [2; 3; 5; 7;]
let test30 = prime 10 = [2; 3; 5; 7;]

