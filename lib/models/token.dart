// To parse this JSON data, do
//
//     final token = tokenFromJson(jsonString);

import 'dart:convert';

Token tokenFromJson(String str) => Token.fromJson(json.decode(str));

String tokenToJson(Token data) => json.encode(data.toJson());

class Token {
  Token({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.userName,
    this.issued,
    this.expires,
  });

  String? accessToken;
  String? tokenType;
  int? expiresIn;
  String? userName;
  String? issued;
  String? expires;

  factory Token.fromJson(Map<String, dynamic> json) => Token(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        expiresIn: json["expires_in"],
        userName: json["userName"],
        issued: json[".issued"],
        expires: json[".expires"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "expires_in": expiresIn,
        "userName": userName,
        ".issued": issued,
        ".expires": expires,
      };
}
