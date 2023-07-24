(* 駅間のデータ（起点の駅名、終点の駅名、その間の距離、経由する路線名、所要時間）を表すデータ *)
type ekikan_t = {
  kiten : string;
  shuten : string;
  keiyu : string;
  kyori : float;
  jikan : int;
}
