type person_t = {
  name : string;
  height : float;
  weight : float;
  birthday : string;
  blood_type : string;
}

let taro =
  {
    name = "taro";
    height = 1.88;
    weight = 78.1;
    birthday = "2000/1/1";
    blood_type = "A";
  }

let jiro =
  {
    name = "jiro";
    height = 1.45;
    weight = 30.4;
    birthday = "2013/1/1";
    blood_type = "O";
  }

let saburo =
  {
    name = "saburo";
    height = 1.00;
    weight = 20.4;
    birthday = "2018/1/1";
    blood_type = "AB";
  }

(* 目的 : person_t 型のリストを受け取ったら、その中から指定された血液型の人の
   数を返す *)
(* count_ketsueki : person_t list -> string -> int *)
let rec count_ketsueki lst ketsueki_type =
  match lst with
  | [] -> 0
  | {
      name = name_;
      height = height_;
      weight = weight_;
      birthday = birthday_;
      blood_type = blood_type_;
    }
    :: rest ->
      if blood_type_ = ketsueki_type then 1 + count_ketsueki rest ketsueki_type
      else count_ketsueki rest ketsueki_type

let list0 = []
let list1 = [ taro ]
let list2 = [ taro; jiro; saburo ]

let list3 =
  [
    taro;
    taro;
    taro;
    taro;
    jiro;
    jiro;
    saburo;
    jiro;
    saburo;
    taro;
    saburo;
    taro;
    jiro;
  ]

let test1 = count_ketsueki list0 "A" = 0
let test2 = count_ketsueki list1 "B" = 0
let test3 = count_ketsueki list2 "A" = 1
let test4 = count_ketsueki list3 "O" = 4
