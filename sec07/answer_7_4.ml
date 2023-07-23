(* 目的 : x座標とy座標の組で表された平面座標をふたつ受け取ったら、その中点の座標を返す *)
(* chuten : float * float -> float * float -> float * float *)
let chuten pair1 pair2 =
  match (pair1, pair2) with
  | (x1, y1), (x2, y2) -> ((x1 +. x2) /. 2., (y1 +. y2) /. 2.)

let test1 = chuten (0., 3.) (5., 2.) = (2.5, 2.5)
let test2 = chuten (2., 8.) (10., 4.) = (6., 6.)
let test3 = chuten (-3., 10.) (2., -5.) = (-0.5, 2.5)
