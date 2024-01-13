(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {namae : string; tensuu : int; seiseki : string}

(* 目的 : first と rest_result を加える *)
(* add_gakusei_t_tensuu : gakusei_t -> int -> int *)
let add_gakusei_t_tensuu first rest_result = match first with {namae = n; tensuu = t; seiseki = s}
  -> t + rest_result

(* テスト *)
let test1 = add_gakusei_t_tensuu {namae = "asai"; tensuu = 70; seiseki = "B"} 70 = 140

(* 目的 : gakusei_t 型のリストを受け取ったら、全員の得点の合計を返す *)
(* gakusei_sum : gakusei_t list -> int *)
let gakusei_sum lst = List.fold_right add_gakusei_t_tensuu lst 0

(* テスト *)
let test2 = gakusei_sum [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "asai"; tensuu = 70; seiseki = "B"}] = 140
