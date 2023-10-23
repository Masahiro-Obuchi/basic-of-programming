(* twice : ('a -> 'a) -> 'a -> 'a *)
let twice f = let g x = f (f x) in g

let square x = x * x 

let res1 = twice square 2
let ans = twice twice
let res2 = ans square 2

(* どんな関数 : 引数として受け取った関数を4回行う関数 *)
