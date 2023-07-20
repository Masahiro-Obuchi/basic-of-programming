(* 目的 : 時間 time を受け取り、午前か午後かを判定する *)
(* jikan : int -> string *)
let jikan time = if time < 12 then "morning" else "afternoon"
let test1 = jikan 0 = "morning"
let test2 = jikan 15 = "afternoon"
let test3 = jikan 12 = "afternoon"
