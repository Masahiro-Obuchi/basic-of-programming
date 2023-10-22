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

(* 目的 : person_t 型のリストを受け取ったら、その中に出てくる人の名前のリストを返す *)
(* person_namae : person_t list -> string list *)
let rec person_namae lst =
  match lst with
  | [] -> []
  | {
      name = name_;
      height = height_;
      weight = weight_;
      birthday = birthday_;
      blood_type = blood_type_;
    }
    :: rest ->
      name_ :: person_namae rest

let list0 = []
let list1 = [ taro; jiro ]
let list2 = [ taro; jiro; saburo ]

let list3 =
  [ taro; taro; jiro; saburo; saburo; taro; jiro; jiro; jiro; taro; saburo ]

let test1 = person_namae list0 = []
let test2 = person_namae list1 = [ "taro"; "jiro" ]
let test3 = person_namae list2 = [ "taro"; "jiro"; "saburo" ]

let test4 =
  person_namae list3
  = [
      "taro";
      "taro";
      "jiro";
      "saburo";
      "saburo";
      "taro";
      "jiro";
      "jiro";
      "jiro";
      "taro";
      "saburo";
    ]
