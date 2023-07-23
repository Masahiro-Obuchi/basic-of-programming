(* 目的 : 名前と成績の組を受け取ったら「○○さんの評価は△です」という文字列を返す *)
(* seiseki : string * string -> string *)
let seiseki namae_seiseki =
  match namae_seiseki with
  | namae, seiseki -> namae ^ "さんの評価は" ^ seiseki ^ "です。"

let test1 = seiseki ("田中", "優") = "田中さんの評価は優です。"
let test2 = seiseki ("佐藤", "秀") = "佐藤さんの評価は秀です。"
let test3 = seiseki ("鈴木", "可") = "鈴木さんの評価は可です。"
