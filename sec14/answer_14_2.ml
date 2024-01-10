(* 学生ひとり分のデータ（名前、点数、成績）を表す型 *)
type gakusei_t = {namae : string; tensuu : int; seiseki : string}

(* gakusei_t list は
    - [] 空リスト、あるいは
    - first :: rest 最初の要素が first で残りのリストが rest
    （first は gakusei_t 型、rest が自己参照のケース）
    という形 *)

(* 目的 : 学生リスト lst のうち成績が A の人の数を返す *)
(* count_A : gakusei_t list -> int *)
let rec count_A lst = match lst with [] -> 0 | {namae = n; tensuu = t; seiseki = s} :: rest -> if s = "A" then 1 + count_A rest else count_A rest

(* テスト *)
let test1 = count_A [] = 0
let test2 = count_A [{namae = "asai"; tensuu = 70; seiseki = "B"}] = 0
let test3 = count_A [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "kaneko"; tensuu = 85; seiseki = "A"}] = 1
let test4 = count_A [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "kaneko"; tensuu = 85; seiseki = "A"}; {namae = "yoshida"; tensuu = 80; seiseki = "A"}] = 2
let test5 = count_A [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "kaneko"; tensuu = 85; seiseki = "A"}; {namae = "yoshida"; tensuu = 80; seiseki = "A"}; {namae = "kato"; tensuu = 60; seiseki = "C"}] = 2

(* 目的 : 学生 p が成績 A かどうかを返す *)
(* is_A : gakusei_t -> bool *)
let is_A p = match p with {namae = n; tensuu = t; seiseki = s} -> s = "A"

(* 目的 : 学生リスト lst のうち成績が A の人の数を返す (filter と length を用いる) *)
(* filter_count_A : gakusei_t list -> int *)
let filter_count_A lst = List.length (List.filter is_A lst)

(* テスト *)
let test1 = filter_count_A [] = 0
let test2 = filter_count_A [{namae = "asai"; tensuu = 70; seiseki = "B"}] = 0
let test3 = filter_count_A [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "kaneko"; tensuu = 85; seiseki = "A"}] = 1
let test4 = filter_count_A [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "kaneko"; tensuu = 85; seiseki = "A"}; {namae = "yoshida"; tensuu = 80; seiseki = "A"}] = 2
let test5 = filter_count_A [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "kaneko"; tensuu = 85; seiseki = "A"}; {namae = "yoshida"; tensuu = 80; seiseki = "A"}; {namae = "kato"; tensuu = 60; seiseki = "C"}] = 2

