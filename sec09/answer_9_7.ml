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
      birthday = (1, 1);
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
      birthday = (1, 1);
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
      birthday = (3, 3);
      blood_type = "A";
    };
  ]

(* 目的 : 人物リスト lst のうち血液型が A型の人の数を返す *)
(* count_ketsueki_A : person_t list -> int *)
let rec count_ketsueki_A lst =
  match lst with
  | [] -> 0
  | { name = n; height = h; weight = w; birthday = bd; blood_type = bt } :: rest
    ->
      if bt = "A" then 1 + count_ketsueki_A rest else count_ketsueki_A rest
(* count_ketsueki_A rest *)

(* テスト *)
let test1 = count_ketsueki_A lst1 = 0
let test2 = count_ketsueki_A lst2 = 1
let test3 = count_ketsueki_A lst3 = 1
let test4 = count_ketsueki_A lst4 = 2
