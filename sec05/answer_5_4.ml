(* 目的 : 2次方程式の係数 a, b, c が与えられた時に、判別式の値を計算する *)
(* hanbetsusiki : int -> int -> int -> int *)
let hanbetsusiki a b c = (b * b) - (4 * a * c)
let test1 = hanbetsusiki 5 2 4 = -76
let test2 = hanbetsusiki 3 1 1 = -11
let test3 = hanbetsusiki 7 8 0 = 64
