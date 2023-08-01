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

(* 目的 : あらかじめ昇順に並んでいるperson_t 型のリストlst と人物の情報 person
   を受け取ったら、lst を前から順番に見ていき、昇順となる位置に person を挿入したリストを返す *)
(* insert_person : person_t list -> person_t -> person_t list *)
let rec insert_person lst person =
  match person with
  | { name = n1; height = h1; weight = w1; birthday = m1, d1; blood_type = b1 }
    -> (
      match lst with
      | [] -> person :: []
      | ({
           name = n2;
           height = h2;
           weight = w2;
           birthday = m2, d2;
           blood_type = b2;
         } as first)
        :: rest ->
          if n1 > n2 then first :: insert_person rest person
          else person :: first :: rest)

(* 目的 : person_t 型のリストを受け取ったら、それを名前の順に整列したリストを返す *)
(* person_sort : list person_t -> list person_t *)
let rec person_sort lst =
  match lst with
  | [] -> []
  | first :: rest ->
      insert_person (person_sort rest) first (* person_sort rest *)

let test1 = person_sort [] = []
let test2 = person_sort [ taro; jiro; saburo ] = [ jiro; saburo; taro ]
let test3 = person_sort [ taro; saburo; jiro ] = [ jiro; saburo; taro ]
let test4 = person_sort [ taro; taro ] = [ taro; taro ]
let test5 = person_sort [ jiro; saburo; taro ] = [ jiro; saburo; taro ]
