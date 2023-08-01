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

(* 目的 : あらかじめ昇順に並んている gakusei_t のリスト lst と学生の情報
   student を受け取ったら、lst を前から順に見ていき、昇順となる位置に student を挿入する *)
(* gakusei_insert : gakusei_t list -> gakusei_t -> gakusei_t list *)
let rec gakusei_insert lst student =
  match lst with
  | [] -> student :: []
  | ({ namae = n1; tensuu = t1; seiseki = s1 } as first) :: rest -> (
      match student with
      | { namae = n2; tensuu = t2; seiseki = s2 } ->
          if t2 > t1 then first :: gakusei_insert rest student
          else student :: first :: rest)

(* gakusei_t 型のリスト lst を受け取ったら、それを tensuu フィールドの順に整列したリストを返す *)
(* gakusei_sort : gakusei_t list -> gakusei_t list *)
let rec gakusei_sort lst =
  match lst with
  | [] -> []
  | first :: rest ->
      gakusei_insert (gakusei_sort rest) first (* gakusei_sort rest *)

let test1 = gakusei_sort lst1 = []

let test2 =
  gakusei_sort lst2 = [ { namae = "asai"; tensuu = 70; seiseki = "B" } ]

let test3 =
  gakusei_sort lst3
  = [
      { namae = "asai"; tensuu = 70; seiseki = "B" };
      { namae = "kaneko"; tensuu = 85; seiseki = "A" };
    ]

let test4 =
  gakusei_sort lst4
  = [
      { namae = "asai"; tensuu = 70; seiseki = "B" };
      { namae = "yoshida"; tensuu = 80; seiseki = "A" };
      { namae = "kaneko"; tensuu = 85; seiseki = "A" };
    ]
