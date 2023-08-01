type person_t = {
  name : string;
  height : float;
  weight : float;
  birthday : int * int;
  blood_type : string;
}

let taro =
  {
    name = "taro";
    height = 1.88;
    weight = 78.1;
    birthday = (1, 1);
    blood_type = "A";
  }

let jiro =
  {
    name = "jiro";
    height = 1.45;
    weight = 30.4;
    birthday = (2, 2);
    blood_type = "O";
  }

let saburo =
  {
    name = "saburo";
    height = 1.00;
    weight = 20.4;
    birthday = (3, 3);
    blood_type = "AB";
  }

(* 目的 : person_t 型のデータのリストを受け取ったら、
   各血液型の人が何人いるかを集計して組にして返す *)
(* ketsueki_shukei : person_t list -> int * int * int * int *)
let rec ketsueki_shukei lst =
  match lst with
  | [] -> (0, 0, 0, 0)
  | { name = n; height = h; weight = w; birthday = bd; blood_type = bt } :: rest
    ->
      let a, b, c, d = ketsueki_shukei rest in
      if bt = "A" then (a + 1, b, c, d)
      else if bt = "B" then (a, b + 1, c, d)
      else if bt = "O" then (a, b, c + 1, d)
      else (a, b, c, d + 1)
(* ketsueki_shukei rest *)

(* テスト *)
let lst1 = []
let lst2 = [ taro ]
let lst3 = [ taro; jiro ]
let lst4 = [ taro; jiro; saburo ]
let lst5 = [ taro; taro; taro; taro; taro ]
let test1 = ketsueki_shukei lst1 = (0, 0, 0, 0)
let test2 = ketsueki_shukei lst2 = (1, 0, 0, 0)
let test3 = ketsueki_shukei lst3 = (1, 0, 1, 0)
let test4 = ketsueki_shukei lst4 = (1, 0, 1, 1)
let test5 = ketsueki_shukei lst5 = (5, 0, 0, 0)

(* 目的 : person_t 型のデータのリストを受け取ったら、4つの血液型のうち最も人数の多かった血液型を返す *)
(* saita_ketsueki : list person_t -> string *)
let saita_ketsueki lst =
  let a, b, c, d = ketsueki_shukei lst in
  let max_value = max d (max c (max a b)) in
  if max_value = a && a != b && a != c && a != d then "A"
  else if max_value = b && b != a && b != c && b != d then "B"
  else if max_value = c && c != a && c != b && c != d then "O"
  else if max_value = d && d != a && d != b && d != c then "AB"
  else "invalid input"

(* テスト *)
let test6 = saita_ketsueki lst1 = "invalid input"
let test7 = saita_ketsueki lst2 = "A"
let test8 = saita_ketsueki lst3 = "invalid input"
let test9 = saita_ketsueki lst4 = "invalid input"
let test10 = saita_ketsueki lst5 = "A"
