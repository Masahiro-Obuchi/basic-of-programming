(* string list は
   - []             空リスト、あるいは
   - first :: rest  最初の要素が first で残りのリストが rest
                    (rest が自己参照のケース)
   という形 *)
(* 目的 : 文字列のリスト lst を受け取ったら、その中の要素を前から順に全部くっつけた関数を返す *)
(* concat : string list -> string *)
let rec concat lst =
  match lst with
  | [] -> ""
  | first :: rest -> first ^ concat rest (* concat rest *)

(* テスト *)
let test1 = concat [] = ""
let test2 = concat [ "テンプレート" ] = "テンプレート"
let test3 = concat [ "テンプレート"; "の" ] = "テンプレートの"

let test4 = concat [ "テンプレート"; "の"; "複合" ] = "テンプレートの複合"

let test5 = concat [ "テンプレート"; "の"; "複合"; "データ" ] = "テンプレートの複合データ"

(* 目的 : 文字列のリスト lst を受け取ったら、その中の要素を前から順に全部くっつけた関数を返す ford_right を使って書き直す *)
(* concat : string list -> string *)

let concat_fold_right lst = List.fold_right (^) lst ""

(* テスト *)
let test1 = concat_fold_right [] = ""
let test2 = concat_fold_right [ "テンプレート" ] = "テンプレート"
let test3 = concat_fold_right [ "テンプレート"; "の" ] = "テンプレートの"

let test4 = concat_fold_right [ "テンプレート"; "の"; "複合" ] = "テンプレートの複合"

let test5 = concat_fold_right [ "テンプレート"; "の"; "複合"; "データ" ] = "テンプレートの複合データ"

