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

(* 目的 : person_t 型のデータを受け取ってきたら、その名前フィールドを取り出す(名前のない関数) *)
(* person_name : person_t -> string *)
let person_name_fun = fun person -> match person with {name = n; height = h; weight = w} -> n

let test1 = person_name_fun taro = "taro"
let test2 = person_name_fun jiro = "jiro"
let test3 = person_name_fun saburo = "saburo"

