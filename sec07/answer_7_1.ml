(* 目的: 国語、数学、英語、理科、社会の5教科の点数を与えられたら、その合計点と平均点を組にして返す *)
(* goukei_to_heikin: float -> float -> float -> float -> float -> float * float *)
let sum kokugo suugaku eigo rika syakai =
  kokugo +. suugaku +. eigo +. rika +. syakai

let average kokugo suugaku eigo rika syakai =
  sum kokugo suugaku eigo rika syakai /. 5.

let goukei_to_heikin kokugo suugaku eigo rika syakai =
  (sum kokugo suugaku eigo rika syakai, average kokugo suugaku eigo rika syakai)

let test1 = goukei_to_heikin 100. 100. 100. 100. 100. = (500., 100.)
let test2 = goukei_to_heikin 80. 20. 60. 0. 90. = (250., 50.)
let test3 = goukei_to_heikin 0. 0. 0. 0. 10. = (10., 2.)
