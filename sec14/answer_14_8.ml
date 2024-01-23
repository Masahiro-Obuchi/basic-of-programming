(* 目的 : 整数を受け取ってきたら、その2乗から1を引いた数を返す名前のない関数を作る *)
(* int -> int *)
fun x -> x * x - 1

(* テスト *)
let test1 = (fun x -> x * x - 1) 3 = 8
let test2 = (fun x -> x * x - 1) 4 = 15
let test3 = (fun x -> x * x - 1) 5 = 24

