(* 駅名（漢字の駅名、ひらがなの駅名、ローマ字の駅名、その駅が所属する路線名）を表す型 *)
type ekimei_t = {
  kanji : string;
  kana : string;
  romaji : string;
  shozoku : string;
}

(* 目的 : 駅名 ekimei を受け取り「路線名、駅名（かな）」を返す *)
(* hyoji : ekimei_t -> string *)
let hyoji ekimei =
  match ekimei with
  | { kanji = k1; kana = k2; romaji = r; shozoku = s } ->
      s ^ "、" ^ k1 ^ "（" ^ k2 ^ "）"

let test1 =
  hyoji
    { kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku = "丸ノ内線" }
  = "丸ノ内線、茗荷谷（みょうがだに）"
