(* 'a -> 'a *)
let answer1 x = x

(* 'a -> 'b -> 'a *)
let answer2 x y = x

(* 'a -> 'b -> 'b *)
let answer3 x y = y

(* 'a -> ('a -> 'b) -> 'b *)
let answer4 x func1 = func1 x

(* ('a -> 'b) -> ('b -> 'c) -> 'a -> 'c *)
let answer5 func1 func2 x = func2 (func1 x)
