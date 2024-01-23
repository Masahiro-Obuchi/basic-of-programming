type gakusei_t = {namae : string; tensuu : int; seiseki : string}

(* 目的 : 学生リスト lst のうち成績が seiseki0 の人の数を返す *)
(* count : gakusei_t list -> string -> int *)
let rec count lst seiseki0 = match lst with [] -> 0 | {namae = n; tensuu = t; seiseki = s} :: rest -> if s = seiseki0 then 1 + count rest seiseki0 else count rest seiseki0

(* 目的 : count を filter と length を用いて定義する *)
(* count_filter_length : gakusei_t list -> string -> int *)
let count_filter_length lst seiseki0 = let is_seiseki0 gakusei = match gakusei with {namae = n; tensuu = t; seiseki = s} -> s = seiseki0 in List.length (List.filter is_seiseki0 lst)

(* テスト *)
let test1 = count_filter_length [] "A" = 0
let test2 = count_filter_length [{namae = "asai"; tensuu = 70; seiseki = "B"}] "A" = 0
let test3 = count_filter_length [{namae = "asai"; tensuu = 70; seiseki = "B"}] "B" = 1
let test4 = count_filter_length [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "kaneko"; tensuu = 85; seiseki = "A"}] "A" = 1
let test5 = count_filter_length [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "kaneko"; tensuu = 85; seiseki = "A"}] "B" = 1
let test6 = count_filter_length [{namae = "asai"; tensuu = 70; seiseki = "B"}; {namae = "kaneko"; tensuu = 85; seiseki = "A"}] "C" = 0

