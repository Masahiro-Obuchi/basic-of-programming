(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {
  namae : string; (* 名前 *)
  tensuu : int; (* 点数 *)
  seiseki : string; (* 成績 *)
}

(* gakusei_t list は
   - []             空リスト、あるいは
   - first :: rest  最初の要素が first で残りのリストが rest
                    （first は gakusei_t 型、
                     rest が自己参照のケース）
    という形 *)

(* gakusei_t list 型のデータの例 *)
let lst1 = []
let lst2 = [ { namae = "asai"; tensuu = 70; seiseki = "B" } ]

let lst3 =
  [
    { namae = "asai"; tensuu = 70; seiseki = "B" };
    { namae = "kaneko"; tensuu = 85; seiseki = "A" };
  ]

let lst4 =
  [
    { namae = "yoshida"; tensuu = 80; seiseki = "A" };
    { namae = "asai"; tensuu = 70; seiseki = "B" };
    { namae = "kaneko"; tensuu = 85; seiseki = "A" };
  ]

(* 目的 : gakusei_t 型のリスト lst を受け取ったら、その中から最高得点を取った人の
   レコードを返す *)
(* gakusei_max : gakusei_t list -> gakusei_t *)
let rec gakusei_max lst =
  match lst with
  | [] -> { namae = ""; tensuu = min_int; seiseki = "" }
  | ({ namae = n; tensuu = t; seiseki = s } as first) :: rest -> (
      match gakusei_max rest with
      | { namae = n1; tensuu = t1; seiseki = s1 } ->
          if t >= t1 then first else gakusei_max rest)
(* gakusei_max rest *)

(* テスト *)
let test1 = gakusei_max lst1 = { namae = ""; tensuu = min_int; seiseki = "" }
let test2 = gakusei_max lst2 = { namae = "asai"; tensuu = 70; seiseki = "B" }
let test3 = gakusei_max lst3 = { namae = "kaneko"; tensuu = 85; seiseki = "A" }
let test4 = gakusei_max lst4 = { namae = "kaneko"; tensuu = 85; seiseki = "A" }
