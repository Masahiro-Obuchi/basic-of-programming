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

(* 目的 : 学生リスト lst のうち各成績の人数を集計する *)
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
