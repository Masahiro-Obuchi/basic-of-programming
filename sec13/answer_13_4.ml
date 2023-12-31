(* 目的 : 関数を2つ受け取ったら、その２つの関数を合成した関数を返す *)
(* compose : ('a -> 'b) -> ('c -> 'a) -> 'c -> 'b *)
let compose f g = let h x = f (g x) in h

(* テスト *)
let time2 x = x * 2
let add3 x = x + 3
let test1 = (compose time2 add3) 4 = 14
