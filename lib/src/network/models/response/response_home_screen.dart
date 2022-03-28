class ResponseHomeData {
  bool? winStatus;
  String? thaiLotteryReleaseDate;
  String? thaiLotteryFirstPrize;
  List<String>? thaiLotteryFirstThreeDigit;
  List<String>? thaiLotteryLastThreeDigit;
  String? thaiLotteryLastTwoDigit;
  String? threeDMonth;
  String? threeDYear;
  String? threeDTime;
  String? threeDFirstRelease;
  String? threeDSecRelease;
  String? twoDDate;
  String? twoDMorning;
  String? twoDEvening;

  ResponseHomeData(
      {this.winStatus,
      this.thaiLotteryReleaseDate,
      this.thaiLotteryFirstPrize,
      this.thaiLotteryFirstThreeDigit,
      this.thaiLotteryLastThreeDigit,
      this.thaiLotteryLastTwoDigit,
      this.threeDMonth,
      this.threeDYear,
      this.threeDTime,
      this.threeDFirstRelease,
      this.threeDSecRelease,
      this.twoDDate,
      this.twoDMorning,
      this.twoDEvening});

  ResponseHomeData.fromJson(Map<String, dynamic> json) {
    winStatus = json['win_status'];
    thaiLotteryReleaseDate = json['thai_lottery_release_date'];
    thaiLotteryFirstPrize = json['thai_lottery_first_prize'];
    thaiLotteryFirstThreeDigit =
        json['thai_lottery_first_three_digit'].cast<String>();
    thaiLotteryLastThreeDigit =
        json['thai_lottery_last_three_digit'].cast<String>();
    thaiLotteryLastTwoDigit = json['thai_lottery_last_two_digit'];
    threeDMonth = json['three_d_month'];
    threeDYear = json['three_d_year'];
    threeDTime = json['three_d_time'];
    threeDFirstRelease = json['three_d_first_release'];
    threeDSecRelease = json['three_d_sec_release'];
    twoDDate = json['two_d_date'];
    twoDMorning = json['two_d_morning'];
    twoDEvening = json['two_d_evening'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['win_status'] = this.winStatus;
    data['thai_lottery_release_date'] = this.thaiLotteryReleaseDate;
    data['thai_lottery_first_prize'] = this.thaiLotteryFirstPrize;
    data['thai_lottery_first_three_digit'] = this.thaiLotteryFirstThreeDigit;
    data['thai_lottery_last_three_digit'] = this.thaiLotteryLastThreeDigit;
    data['thai_lottery_last_two_digit'] = this.thaiLotteryLastTwoDigit;
    data['three_d_month'] = this.threeDMonth;
    data['three_d_year'] = this.threeDYear;
    data['three_d_time'] = this.threeDTime;
    data['three_d_first_release'] = this.threeDFirstRelease;
    data['three_d_sec_release'] = this.threeDSecRelease;
    data['two_d_date'] = this.twoDDate;
    data['two_d_morning'] = this.twoDMorning;
    data['two_d_evening'] = this.twoDEvening;
    return data;
  }
}
