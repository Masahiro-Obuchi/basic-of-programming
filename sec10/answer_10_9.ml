(* 目的 : ２つのリスト lst1 lst2 を受け取ってきたら、それらの長さが同じかどうかを判定する *)
(* equal_length : 'a list -> 'a list -> bool *)
let rec equal_length lst1 lst2 =
  match (lst1, lst2) with
  | [], [] -> true
  | [], first2 :: rest2 -> false
  | first1 :: rest1, [] -> false
  | first1 :: rest1, first2 :: rest2 -> equal_length rest1 rest2

(* テスト *)
let test1 = equal_length [] [] = true
let test2 = equal_length [] [ 1; 2 ] = false
let test3 = equal_length [ 1; 2 ] [] = false
let test4 = equal_length [ 1; 3 ] [ 2; 4 ] = true
let test5 = equal_length [ 1; 2; 4 ] [ 1 ] = false
let test6 = equal_length [ 1; 2; 3; 4; 5 ] [ 1; 2; 3; 4; 5; 6 ] = false
let test7 = equal_length [ 1; 2; 3; 4 ] [ 1; 2; 3; 4 ] = true
