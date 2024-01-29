(* string list は
   - []             空リスト、あるいは
   - first :: rest  最初の要素が first で残りのリストが rest
                    (rest が自己参照のケース)
   という形 *)
(* 目的 : 文字列のリスト lst を受け取ったら、その中の要素を前から順に全部くっつけた関数を返す→これを1行で書く *)
(* concat : string list -> string *)
let concat lst = List.fold_right (^) lst ""

(* テスト *)
let test1 = concat [] = ""
let test2 = concat ["春"] = "春"
let test3 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"
