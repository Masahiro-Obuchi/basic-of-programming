(* 目的 : 2次方程式の係数 a, b, c が与えられた時に、判別式の値を計算する *)
(* hanbetsusiki : int -> int -> int -> int *)
let hanbetsusiki a b c = (b * b) - (4 * a * c)
let test1 = hanbetsusiki 5 2 4 = -76
let test2 = hanbetsusiki 3 1 1 = -11
let test3 = hanbetsusiki 7 8 0 = 64

(* 目的 : 2次方程式の係数 a, b, cが与えられた時に、解の個数を計算する *)
(* kai_no_kosuu : int -> int -> int -> int *)
let kai_no_kosuu a b c =
  if hanbetsusiki a b c > 0 then 2 else if hanbetsusiki a b c = 0 then 1 else 0

let test1 = kai_no_kosuu 5 2 4 = 0
let test2 = kai_no_kosuu 1 2 1 = 1
let test3 = kai_no_kosuu 7 8 0 = 2
