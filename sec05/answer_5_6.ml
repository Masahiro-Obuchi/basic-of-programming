(* 目的 : 2次方程式の係数 a, b, c が与えられた時に、判別式の値を計算する *)
(* hanbetsusiki : int -> int -> int -> int *)
let hanbetsusiki a b c = (b * b) - (4 * a * c)
let test1 = hanbetsusiki 5 2 4 = -76
let test2 = hanbetsusiki 3 1 1 = -11
let test3 = hanbetsusiki 7 8 0 = 64

(* 目的 : 2次方程式の係数 a, b, c が与えられた時に、虚数解を持つかどうかを判定する *)
(* kyosuukai : int -> int -> int -> bool *)
let kyosuukai a b c = if hanbetsusiki a b c < 0 then true else false
let test1 = kyosuukai 5 2 4 = true
let test2 = kyosuukai 1 2 1 = false
let test3 = kyosuukai 7 8 0 = false
