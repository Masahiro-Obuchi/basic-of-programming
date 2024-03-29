(* 目的 : lstの中からnより小さい要素のみを取り出す *)
(* take_less : int -> int list -> int list *)
(* let rec take_less n lst = match lst with
  [] -> []
  | first :: rest -> if first < n then first :: take_less n rest
                     else take_less n rest *)
let take_less n lst = List.filter (fun item -> item < n) lst

(* 目的 : lstの中からnより大きい要素のみを取り出す *)
(* take_greater : int -> int list -> int list *)
(* let rec take_greater n lst = match lst with
  [] -> []
  | first :: rest -> if first > n then first :: take_greater n rest
                     else take_greater n rest *)
let take_greater n lst = List.filter (fun item -> item > n) lst

(* 目的 : lst の中からnよりpである要素のみを取り出す *)
(* take : int -> int list -> (int -> int -> bool) -> int list *)
let take n lst p = List.filter (fun item -> p item n) lst

(* 目的 : lstの中からnより小さい要素のみを取り出す *)
(* take_less : int -> int list -> int list *)
let take_less n lst = take n lst (<)
  
(* 目的 : lstの中からnより大きい要素のみを取り出す *)
(* take_greater : int -> int list -> int list *)
let take_greater n lst = take n lst (>)

(* 目的 : 受け取った lst をクイックソートを使って昇順に整列する *)
(* quick_sort : int list -> int list *)
let rec quick_sort lst = 
(* 目的 : lst の中からnよりpである要素のみを取り出す *)
(* take : int -> int list -> (int -> int -> bool) -> int list *)
let take n lst p = List.filter (fun item -> p item n) lst
(* 目的 : lstの中からn以下の要素のみを取り出す *)
(* take_less : int -> int list -> int list *)
    in let take_less n lst = take n lst (<=)
(* 目的 : lstの中からnより大きい要素のみを取り出す *)
(* take_greater : int -> int list -> int list *)
    in let take_greater n lst = take n lst (>)
    in match lst with
      [] -> [] (* 自明に答えが出るケース *)
      | first :: rest -> quick_sort (take_less first rest)
                       @ [first]
                       @ quick_sort (take_greater first rest)

(* テスト *)
let test1 = quick_sort [] = []
let test2 = quick_sort [1] = [1]
let test3 = quick_sort [1; 2] = [1; 2]
let test4 = quick_sort [2; 1] = [1; 2]
let test5 = quick_sort [5; 4; 9; 8; 2; 3] = [2; 3; 4; 5; 8; 9]

(* answer_15_1 : 本の例そのままだと等しい数字が複数個あった際に正しい答えを返さない *)
let test6 = quick_sort [1; 1; 1; 1; 1] = [1; 1; 1; 1; 1]
let test7 = quick_sort [1; 2; 1; 1; 1] = [1; 1; 1; 1; 2]
let test8 = quick_sort [1; 1; 1; 2; 1] = [1; 1; 1; 1; 2]
let test9 = quick_sort [1; 1; 2; 1; 1] = [1; 1; 1; 1; 2]
let test10 = quick_sort [1; 2; 1; 2; 1] = [1; 1; 1; 2; 2]
let test11 = quick_sort [1; 2; 2; 1; 1] = [1; 1; 1; 2; 2]
let test12 = quick_sort [2; 1; 1; 1; 1] = [1; 1; 1; 1; 2]
let test13 = quick_sort [2; 1; 1; 1; 2] = [1; 1; 1; 2; 2]
let test14 = quick_sort [2; 1; 1; 2; 1] = [1; 1; 1; 2; 2]
let test15 = quick_sort [2; 1; 2; 1; 1] = [1; 1; 1; 2; 2]
let test16 = quick_sort [2; 2; 1; 1; 1] = [1; 1; 1; 2; 2]
let test17 = quick_sort [1; 2; 2; 2; 1] = [1; 1; 2; 2; 2]
let test18 = quick_sort [2; 1; 2; 2; 1] = [1; 1; 2; 2; 2]
let test19 = quick_sort [2; 2; 1; 2; 1] = [1; 1; 2; 2; 2]
let test20 = quick_sort [2; 2; 2; 1; 1] = [1; 1; 2; 2; 2]


