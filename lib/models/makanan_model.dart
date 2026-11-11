// To parse this JSON data, do
//
//     final makananModel = makananModelFromJson(jsonString);

import 'dart:convert';

MakananModel makananModelFromJson(String str) => MakananModel.fromJson(json.decode(str));

String makananModelToJson(MakananModel data) => json.encode(data.toJson());

class MakananModel {
    final List<Map<String, String?>> meals;

    MakananModel({
        required this.meals,
    });

    factory MakananModel.fromJson(Map<String, dynamic> json) => MakananModel(
        meals: List<Map<String, String?>>.from(json["meals"].map((x) => Map.from(x).map((k, v) => MapEntry<String, String?>(k, v)))),
    );

    Map<String, dynamic> toJson() => {
        "meals": List<dynamic>.from(meals.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v)))),
    };
}
