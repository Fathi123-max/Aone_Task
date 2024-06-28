// To parse this JSON data, do
//
//     final tokenModel = tokenModelFromJson(jsonString);

import 'dart:convert';

TokenModel tokenModelFromJson(String str) =>
    TokenModel.fromJson(json.decode(str));

String tokenModelToJson(TokenModel data) => json.encode(data.toJson());

class TokenModel {
  String? token;
  int? hasAccessToMediaHub;

  TokenModel({
    this.token,
    this.hasAccessToMediaHub,
  });

  factory TokenModel.fromJson(Map<String, dynamic> json) => TokenModel(
        token: json["token"],
        hasAccessToMediaHub: json["has_access_to_media_hub"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "has_access_to_media_hub": hasAccessToMediaHub,
      };
}
