(* 目的 : 身長 height(m) と体重 weight(kg) が与えられた時に、BMI指数を計算する *)
(* bmi : float -> float -> float *)
let bmi height weight = weight /. (height ** 2.)

(* 目的 : 身長 height(m) と体重 weight(kg) が与えられた時に、BMIを計算し、その結果から体型を返す *)
(* taikei : float -> float -> string *)
let taikei height weight =
  if bmi height weight < 18.5 then "やせ"
  else if 18.5 <= bmi height weight && bmi height weight < 25. then "標準"
  else if 25. <= bmi height weight && bmi height weight < 30. then "肥満"
  else "重度肥満"

let test1 = taikei 1.67 50.2 = "やせ"
let test2 = taikei 1.88 90.9 = "肥満"
let test3 = taikei 1.53 45.1 = "標準"
