(* 目的 : 誕生日（月と日）を受け取り、星座を返す *)
(* seiza : int -> int -> string *)
let seiza month day =
  if month = 1 then
    if day >= 1 && day <= 19 then "山羊座"
    else if day <= 31 then "水瓶座"
    else "dayが無効な値です"
  else if month = 2 then
    if day >= 1 && day <= 18 then "水瓶座"
    else if day <= 29 then "魚座"
    else "dayが無効な値です"
  else if month = 3 then
    if day >= 1 && day <= 20 then "魚座"
    else if day <= 31 then "牡羊座"
    else "dayが無効な値です"
  else if month = 4 then
    if day >= 1 && day <= 19 then "牡羊座"
    else if day <= 30 then "牡牛座"
    else "dayが無効な値です"
  else if month = 5 then
    if day >= 1 && day <= 20 then "牡牛座"
    else if day <= 31 then "双子座"
    else "dayが無効な値です"
  else if month = 6 then
    if day >= 1 && day <= 21 then "双子座"
    else if day <= 30 then "蟹座"
    else "dayが無効な値です"
  else if month = 7 then
    if day >= 1 && day <= 22 then "蟹座"
    else if day <= 31 then "獅子座"
    else "dayが無効な値です"
  else if month = 8 then
    if day >= 1 && day <= 22 then "獅子座"
    else if day <= 31 then "乙女座"
    else "dayが無効な値です"
  else if month = 9 then
    if day >= 1 && day <= 22 then "乙女座"
    else if day <= 30 then "天秤座"
    else "dayが無効な値です"
  else if month = 10 then
    if day >= 1 && day <= 23 then "天秤座"
    else if day <= 31 then "蠍座"
    else "dayが無効な値です"
  else if month = 11 then
    if day >= 1 && day <= 22 then "蠍座"
    else if day <= 30 then "射手座"
    else "dayが無効な値です"
  else if month = 12 then
    if day >= 1 && day <= 21 then "射手座"
    else if day <= 31 then "山羊座"
    else "dayが無効な値です"
  else "monthの有効範囲は 1 <= month <= 12 です"

let test1 = seiza 3 28 = "牡羊座"
let test2 = seiza 4 25 = "牡牛座"
let test3 = seiza 6 6 = "双子座"
let test4 = seiza 7 15 = "蟹座"
let test5 = seiza 8 22 = "獅子座"
let test6 = seiza 9 1 = "乙女座"
let test7 = seiza 9 30 = "天秤座"
let test8 = seiza 10 28 = "蠍座"
let test9 = seiza 12 15 = "射手座"
let test10 = seiza 1 1 = "山羊座"
let test11 = seiza 1 31 = "水瓶座"
let test12 = seiza 3 16 = "魚座"
