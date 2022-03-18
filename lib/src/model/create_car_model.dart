
import 'dart:convert';

List<CreateCarModel> createCarModelFromJson(String str) => List<CreateCarModel>.from(json.decode(str).map((x) => CreateCarModel.fromJson(x)));

String createCarModelToJson(List<CreateCarModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CreateCarModel {
  CreateCarModel({
    required this.id,
    required this.model,
    required this.services,
    required this.color,
    required this.washingType,
    required this.washingWay,
    required this.worker,
    required this.created,
    required this.updated,
    required this.isWashing,
    required this.isActive,
    required this.number,
    required this.phone,
    required this.comment,
    required this.allPrice,
    required this.admin,
  });

  int id;
  Model model;
  List<Color> services;
  Color color;
  Color washingType;
  dynamic washingWay;
  dynamic worker;
  String created;
  String updated;
  bool isWashing;
  bool isActive;
  String number;
  int phone;
  String comment;
  int allPrice;
  int admin;

  factory CreateCarModel.fromJson(Map<String, dynamic> json) => CreateCarModel(
    id: json["id"]?? 0,
    model: json["model"] == null ?Model.fromJson({}):Model.fromJson(json["model"]),
    services: List<Color>.from(json["services"].map((x) => Color.fromJson(x))),
    color: Color.fromJson(json["color"]),
    washingType: Color.fromJson(json["washing_type"]),
    washingWay: json["washing_way"],
    worker: json["worker"],
    created: json["created"],
    updated: json["updated"],
    isWashing: json["is_washing"],
    isActive: json["is_active"],
    number: json["number"]?? "",
    phone: json["phone"]??0,
    comment: json["comment"]?? '',
    allPrice: json["all_price"]??0,
    admin: json["admin"]??0,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "model": model.toJson(),
    "services": List<dynamic>.from(services.map((x) => x.toJson())),
    "color": color.toJson(),
    "washing_type": washingType.toJson(),
    "washing_way": washingWay,
    "worker": worker,
    "created": created,
    "updated": updated,
    "is_washing": isWashing,
    "is_active": isActive,
    "number": number,
    "phone": phone,
    "comment": comment,
    "all_price": allPrice,
    "admin": admin,
  };
}

class Color {
  Color({
    required this.id,
    required this.name,
    required this.code,
    required this.admin,
    required this.price,
    required this.info,
  });

  int id;
  String name;
  String code;
  int admin;
  int price;
  String info;

  factory Color.fromJson(Map<String, dynamic> json) => Color(
    id: json["id"],
    name: json["name"],
    code: json["code"],
    admin: json["admin"],
    price: json["price"],
    info: json["info"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "code": code,
    "admin": admin,
    "price": price,
    "info": info,
  };
}

class Model {
  Model({
    required this.id,
    required this.modelName,
    required this.markName,
    required this.png,
    required this.admin,
  });

  int id;
  String modelName;
  String markName;
  String png;
  int admin;

  factory Model.fromJson(Map<String, dynamic> json) => Model(
    id: json["id"],
    modelName: json["model_name"],
    markName: json["mark_name"],
    png: json["png"],
    admin: json["admin"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "model_name": modelName,
    "mark_name": markName,
    "png": png,
    "admin": admin,
  };
}
