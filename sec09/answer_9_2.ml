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

let person_list =
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
      blood_type = "AB";
    };
  ]
