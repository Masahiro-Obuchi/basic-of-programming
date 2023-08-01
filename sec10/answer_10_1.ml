(* 目的 : あらかじめ昇順に並んでいる整数 lst と整数 n を受け取ったら、lst を前から順番に見ていき、昇順となる位置に n を挿入したリストを返す *)
(* insert : int list -> int -> int list *)
let rec insert lst n =
  match lst with
  | [] -> n :: []
  | first :: rest ->
      if n > first then first :: insert rest n
      else n :: first :: rest (* insert rest n *)

let test1 = insert [ 1; 3; 4; 7; 8 ] 5 = [ 1; 3; 4; 5; 7; 8 ]
let test2 = insert [ 1; 2; 5; 8; 10 ] 9 = [ 1; 2; 5; 8; 9; 10 ]
let test3 = insert [ 1; 2 ] 3 = [ 1; 2; 3 ]
let test4 = insert [] 1 = [ 1 ]
