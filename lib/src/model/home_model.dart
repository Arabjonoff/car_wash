class HomeModel {
  HomeModel({
    required this.income,
    required this.expend,
    required this.turn,
    required this.washing,
    required this.requestUser,
  });

  int income;
  int expend;
  int turn;
  int washing;
  int requestUser;

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
    income: json["income"] ?? 0 ,
    expend: json["expend"] ?? 0,
    turn: json["turn"] ?? 0,
    washing: json["washing"] ?? 0 ,
    requestUser: json["request_user"] ?? 0,
  );
}

