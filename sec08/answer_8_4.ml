(* 人ひとり分のデータ（名前、身長（m）、体重（kg）、誕生日（月と日）、血液型）を表す型 *)
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
    birthday = (3, 4);
    blood_type = "O";
  }

let saburo =
  {
    name = "saburo";
    height = 1.00;
    weight = 20.4;
    birthday = (12, 25);
    blood_type = "AB";
  }

(* 目的 : 人のデータ person_t 型のデータを受け取ったら「〇〇さんの血液型は△△型です」という形の文字列を返す *)
(* ketsueki_hyoji : person_t -> string *)
let ketsueki_hyoji person =
  match person with
  | { name = n; height = h; weight = w; birthday = m, d; blood_type = b } ->
      if b = "A" then n ^ "さんの血液型はA型です"
      else if b = "B" then n ^ "さんの血液型はB型です"
      else if b = "O" then n ^ "さんの血液型はO型です"
      else n ^ "さんの血液型はAB型です"

let test1 =
  ketsueki_hyoji
    {
      name = "tanaka";
      height = 1.75;
      weight = 58.;
      birthday = (1, 1);
      blood_type = "A";
    }
  = "tanakaさんの血液型はA型です"

let test2 =
  ketsueki_hyoji
    {
      name = "tanaka";
      height = 1.75;
      weight = 58.;
      birthday = (1, 1);
      blood_type = "B";
    }
  = "tanakaさんの血液型はB型です"

let test3 =
  ketsueki_hyoji
    {
      name = "tanaka";
      height = 1.75;
      weight = 58.;
      birthday = (1, 1);
      blood_type = "O";
    }
  = "tanakaさんの血液型はO型です"

let test4 =
  ketsueki_hyoji
    {
      name = "tanaka";
      height = 1.75;
      weight = 58.;
      birthday = (1, 1);
      blood_type = "AB";
    }
  = "tanakaさんの血液型はAB型です"
