(* 人のデータ（名前、身長、体重、誕生日、血液型を表す型 *)
type person_t = {
  name : string; (* 名前 *)
  height : float; (* 身長 *)
  weight : float; (* 体重 *)
  birthday : int * int; (* 誕生日 *)
  blood_type : string; (* 血液型 *)
}

(* person_t list は
   - []             空リスト、あるいは
   - first :: rest  最初の要素が first で残りのリストが rest
                    （first は person_t 型、
                     rest が自己参照のケース）
    という形 *)

(* person_t list 型のデータの例 *)
let lst1 = []

let lst2 =
  [
    {
      name = "taro";
      height = 1.88;
      weight = 78.1;
      birthday = (1, 1);
      blood_type = "A";
    };
  ]

let lst3 =
  [
    {
      name = "taro";
      height = 1.88;
      weight = 78.1;
      birthday = (8, 30);
      blood_type = "A";
    };
    {
      name = "jiro";
      height = 1.45;
      weight = 30.4;
      birthday = (2, 2);
      blood_type = "O";
    };
  ]

let lst4 =
  [
    {
      name = "taro";
      height = 1.88;
      weight = 78.1;
      birthday = (8, 30);
      blood_type = "A";
    };
    {
      name = "jiro";
      height = 1.45;
      weight = 30.4;
      birthday = (2, 2);
      blood_type = "O";
    };
    {
      name = "saburo";
      height = 1.00;
      weight = 20.4;
      birthday = (9, 8);
      blood_type = "A";
    };
  ]

(* 目的 : 人物リスト lst を受け取ったら、乙女座の人の名前のみからなるリストを返す *)
(* otomeza : person_t list -> string list *)
let rec otomeza lst =
  match lst with
  | [] -> []
  | { name = n; height = h; weight = w; birthday = month, day; blood_type = bt }
    :: rest ->
      if
        (month = 8 && 23 <= day && day <= 30)
        || (month = 9 && 1 <= day && day <= 22)
      then n :: otomeza rest
      else otomeza rest
(* otomeza rest *)

(* テスト *)
let test1 = otomeza lst1 = []
let test2 = otomeza lst2 = []
let test3 = otomeza lst3 = [ "taro" ]
let test4 = otomeza lst4 = [ "taro"; "saburo" ]
