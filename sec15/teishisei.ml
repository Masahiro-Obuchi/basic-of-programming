(* 目的 : 級数の第n項の値を求める *)
(* dai_n_kou : int -> float *)
let rec dai_n_kou n = 
  if n = 0 then 1.0
  else dai_n_kou (n - 1) /. float_of_int n

(* 目的 : eの近似値を求める *)
(* e : int -> float *)
let rec e n =
  let d = dai_n_kou n in
  if d < 0.000001
  then d
  else d +. e (n + 1)

(*
let test1 = e 0 = 1.0
let test2 = e 1 = 2.0
let test3 = e 2 = 2.5
let test4 = e 3 = 2.66666666666666652
let test5 = e 4 = 2.70833333333333304
let test6 = e 5 = 2.71666666666666634
let test7 = e 6 = 2.7180555555555554
let test8 = e 7 = 2.71825396825396842
let test9 = e 8 = 2.7182787698412698
let test10 = e 9 = 2.7182815255731922
let test11 = e 10 = 2.7182818011463845
let test12 = e 11 = 2.7182818261984929
*)

let test1 = e 0
let test2 = e 1
let test3 = e 2
let test4 = e 3
let test5 = e 4
let test6 = e 5
let test7 = e 6
let test8 = e 7
let test9 = e 8
let test10 = e 9
let test11 = e 10
let test12 = e 11

(* n = 0の時以外は結果がかけ離れていく、教科書の誤り? *)
