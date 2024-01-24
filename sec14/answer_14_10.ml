type gakusei_t = {namae : string; tensuu : int; seiseki : string}

(* 問題 14.1 *)
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

(* 目的 : 整数 n が偶数かどうかを調べる *)
(* is_even : int -> bool *)
let is_even n = n mod 2 = 0
(* 目的 : 整数のリスト lst を受け取り、その中の偶数の要素のみを含むリストを返す (List.filterを用いる) *)
(* filter_even : int list -> int list *)
let filter_even lst = List.filter is_even lst

(* 目的 : filter_even を局所関数定義を使って書き直す *)
(* filter_even_local_func : int list -> int list *)
let filter_even_local_func lst = let is_even n = n mod 2 = 0 in List.filter is_even lst

let filter_even_local_func_2 lst = List.filter (fun n -> n mod 2 = 0) lst

(* テスト *)
let test1 = filter_even_local_func_2 [] = []
let test2 = filter_even_local_func_2 [1; 2; 3; 4; 5] = [2; 4]

(* 問題 14.2 *)
(* 目的 : 学生リスト lst のうち成績が A の人の数を返す *)
(* count_A : gakusei_t list -> int *)
let rec count_A lst = match lst with [] -> 0 | {namae = n; tensuu = t; seiseki = s} :: rest -> if s = "A" then 1 + count_A rest else count_A rest

(* 目的 : 学生 p が成績 A かどうかを返す *)
(* is_A : gakusei_t -> bool *)
let is_A p = match p with {namae = n; tensuu = t; seiseki = s} -> s = "A"

(* 目的 : 学生リスト lst のうち成績が A の人の数を返す (filter と length を用いる) *)
(* filter_count_A : gakusei_t list -> int *)
let filter_count_A lst = List.length (List.filter is_A lst)

(* 目的 : filter_count_A を局所関数定義を使って書き直す *)
(* filter_count_A_local_func : gakusei_t list -> int *)
let filter_count_A_local_func lst = let is_A p = match p with {namae = n; tensuu = t; seiseki = s} -> s = "A" in List.length (List.filter is_A lst)

let filter_count_A_local_func_2 lst = List.length (List.filter (fun p -> match p with {namae = n; tensuu = t; seiseki = s} -> s = "A") lst)

(* テスト *)
let test3 = filter_count_A_local_func_2 [] = 0
let test4 = filter_count_A_local_func_2 [{namae = "asai"; tensuu = 70; seiseki = "B"}] = 0
let test5 = filter_count_A_local_func_2 [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "kaneko"; tensuu = 85; seiseki = "A"}] = 1
let test6 = filter_count_A_local_func_2 [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "kaneko"; tensuu = 85; seiseki = "A"}; {namae = "yoshida"; tensuu = 80; seiseki = "A"}] = 2

(* 問題 14.3 *)
(* string list は
   - []             空リスト、あるいは
   - first :: rest  最初の要素が first で残りのリストが rest
                    (rest が自己参照のケース)
   という形 *)
(* 目的 : 文字列のリスト lst を受け取ったら、その中の要素を前から順に全部くっつけた関数を返す *)
(* concat : string list -> string *)
let rec concat lst =
  match lst with
  | [] -> ""
  | first :: rest -> first ^ concat rest (* concat rest *)

(* 目的 : 文字列のリスト lst を受け取ったら、その中の要素を前から順に全部くっつけた関数を返す ford_right を使って書き直す *)
(* concat : string list -> string *)
let concat_fold_right lst = List.fold_right (^) lst ""

(* 目的 : concatを局所関数定義を使って書き直す *)
(* concat_local_func : string list -> string *)
let concat_local_func lst = let concat first rest_result = first ^ rest_result in List.fold_right concat lst ""

let concat_local_func_2 lst = List.fold_right (fun first rest_result -> first ^ rest_result) lst ""

 (* テスト *)
let test7 = concat_local_func_2 [] = ""
let test8 = concat_local_func_2 [ "テンプレート" ] = "テンプレート"
let test9 = concat_local_func_2 [ "テンプレート"; "の" ] = "テンプレートの"
let test10 = concat_local_func_2 [ "テンプレート"; "の"; "複合" ] = "テンプレートの複合"
let test11 = concat_local_func_2 [ "テンプレート"; "の"; "複合"; "データ" ] = "テンプレートの複合データ"

(* 問題 14.4 *)
(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *)

(* 目的 : first と rest_result を加える *)
(* add_gakusei_t_tensuu : gakusei_t -> int -> int *)
let add_gakusei_t_tensuu first rest_result = match first with {namae = n; tensuu = t; seiseki = s}
  -> t + rest_result

(* 目的 : gakusei_t 型のリストを受け取ったら、全員の得点の合計を返す *)
(* gakusei_sum : gakusei_t list -> int *)
let gakusei_sum lst = List.fold_right add_gakusei_t_tensuu lst 0

(* 目的 : gakusei_sum を局所関数定義を使って書き直す *)
(* gakusei_sum_local_func : gakusei_t list -> int *)
let gakusei_sum_local_func lst = let add_gakusei_t_tensuu first rest_result = match first with {namae = n; tensuu = t; seiseki = s}
  -> t + rest_result in List.fold_right add_gakusei_t_tensuu lst 0

let gakusei_sum_local_func_2 lst = List.fold_right (fun first rest_result -> match first with {namae = n; tensuu = t; seiseki = s}
  -> t + rest_result) lst 0

(* テスト *)
let test12 = gakusei_sum_local_func_2 [] = 0
let test13 = gakusei_sum_local_func_2 [{namae = "asai"; tensuu = 70; seiseki = "B"}] = 70
let test14 = gakusei_sum_local_func_2 [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "kaneko"; tensuu = 85; seiseki = "A"}] = 155
let test15 = gakusei_sum_local_func_2 [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "kaneko"; tensuu = 85; seiseki = "A"}; {namae = "yoshida"; tensuu = 80; seiseki = "A"}] = 235
