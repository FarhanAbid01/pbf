import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:pbf_app/utils/routes_name.dart';
import 'package:pbf_app/view_Model/token_viewModel.dart';

class UserSession {
  Future<String> getUserToken() => TokenViewModel().getToken();

  void checkAuthentication(BuildContext context) {
    getUserToken().then((value) {
      if (value == null || value == '') {
        Navigator.pushNamed(context, RoutesName.SignIn2);
      } else {
        Navigator.pushNamed(context, RoutesName.onBording);
      }
    }).onError((error, stackTrace) {
      log(error.toString());
    });
  }
}
