(* int list は
   - []             空リスト、あるいは
   - first :: rest  最初の要素が first で残りのリストが rest
                    (rest が自己参照のケース)
   という形 *)
(* 目的 : 整数のリスト lst を受け取り、その中の偶数の要素のみを含むリストを返す *)
(* even : int list -> int list *)
let rec even lst =
  match lst with
  | [] -> []
  | first :: rest ->
      if first mod 2 = 0 then first :: even rest else even rest (* even rest*)

(* テスト *)
let test1 = even [] = []
let test2 = even [ 2 ] = [ 2 ]
let test3 = even [ 1 ] = []
let test4 = even [ 1; 2 ] = [ 2 ]
let test5 = even [ 1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 12 ] = [ 2; 4; 6; 8; 10; 12 ]

(* 目的 : 整数 n が偶数かどうかを調べる *)
(* is_even : int -> bool *)
let is_even n = n mod 2 = 0
(* 目的 : 整数のリスト lst を受け取り、その中の偶数の要素のみを含むリストを返す (List.filterを用いる) *)
(* filter_even : int list -> int list *)
let filter_even lst = List.filter is_even lst

(* テスト *)
let test1 = filter_even [] = []
let test2 = filter_even [ 2 ] = [ 2 ]
let test3 = filter_even [ 1 ] = []
let test4 = filter_even [ 1; 2 ] = [ 2 ]
let test5 = filter_even [ 1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 12 ] = [ 2; 4; 6; 8; 10; 12 ]

