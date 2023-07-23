(* 目的 : x座標とy座標の組で表された平面座標を受け取ったら、x軸について対象な点の座標を返す *)
(* taisho_x : int * int -> int * int *)
let taisho_x pair = match pair with x, y -> (x, -y)
let test1 = taisho_x (3, 5) = (3, -5)
let test2 = taisho_x (5, 0) = (5, 0)
let test3 = taisho_x (-2, -4) = (-2, 4)
