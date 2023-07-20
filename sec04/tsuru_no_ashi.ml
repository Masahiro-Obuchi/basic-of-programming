(* 鶴1羽の足の数 *)
let num_legs_tsuru = 2

(* 目的: 鶴の数 x が与えられた時、足の本数を計算する *)
(* truru_no_ashi: int -> int *)
let truru_no_ashi x = x * num_legs_tsuru

(* テスト *)
let test1 = truru_no_ashi 10 = 20
let test2 = truru_no_ashi 15 = 30
let test3 = truru_no_ashi 23 = 46

(* 亀1匹の足の数 *)
let num_legs_kame = 4

(* 目的: 亀の数 x が与えられた時、足の本数を計算する *)
(* kame_no_ashi: int -> int *)
let kame_no_ashi x = x * num_legs_kame

(* テスト *)
let test4 = kame_no_ashi 10 = 40
let test5 = kame_no_ashi 15 = 60
let test6 = kame_no_ashi 23 = 92

(* 目的: 鶴の数 x と亀の数 y が与えられた時、足の数の合計を計算する *)
(* tsurukame_no_ashi: int -> int -> int *)
let tsurukame_no_ashi x y = (x * num_legs_tsuru) + (y * num_legs_kame)

(* テスト *)
let test7 = tsurukame_no_ashi 1 1 = 6
let test8 = tsurukame_no_ashi 2 8 = 36
let test9 = tsurukame_no_ashi 10 20 = 100

(* 目的: 鶴と亀の数の合計 x と足の数の合計 y が与えられた時、鶴の数を計算する *)
(* tsurukame: int -> int -> int *)
let tsurukame x y = ((4 * x) - y) / 2

(* テスト *)
let test10 = tsurukame 2 6 = 1
let test11 = tsurukame 10 36 = 2
let test12 = tsurukame 30 100 = 10
