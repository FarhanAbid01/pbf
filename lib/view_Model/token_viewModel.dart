import 'package:flutter/material.dart';
import 'package:pbf_app/models/token.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenViewModel with ChangeNotifier {
  Future<bool> saveUserToken(Token token) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();

    sp.setString('token', token.accessToken.toString());

    return true;
  }

  Future<String> getToken() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final String? token = sp.getString('token');
    return token.toString();
  }

  Future<bool> removeToken() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();

    return sp.clear();
  }
}
