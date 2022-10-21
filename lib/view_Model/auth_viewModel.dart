// ignore: file_names
import 'dart:convert';
import 'dart:developer' as msg;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pbf_app/models/token.dart';
import 'package:pbf_app/repository/auth_repository.dart';

import 'package:pbf_app/utils/routes_name.dart';
import 'package:pbf_app/utils/ultis.dart';
import 'package:pbf_app/view_Model/token_viewModel.dart';
import 'package:provider/provider.dart';

class AuthViewModel with ChangeNotifier {
  final myRepo = AuthRepository();

  Future<void> registerApi(dynamic data, BuildContext context) async {
    myRepo.registerAccount(data).then((value) {
      Navigator.pushNamed(context, RoutesName.SignIn2);
    }).onError((error, stackTrace) {
      {
        Utils.FlushBar(error.toString(), context);
      }
    });
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    myRepo.loginAccount(data).then((value) async {

      var data = json.decode(value);
      Token token = Token.fromJson(data);
      final userPreferences =
          Provider.of<TokenViewModel>(context, listen: false);
      userPreferences.saveUserToken(token);

      Navigator.pushNamed(context, RoutesName.onBording);
    }).onError((error, stackTrace) {

        Utils.FlushBar(error.toString(), context);

    });
    // .then((value) => {

    //       if (kDebugMode) {log('succedd' + value.toString())},

    //       log('this is token: ${value['access_token']}'),
    //       // Navigator.pushNamed(context, RoutesName.Home)
    //     })
    // .onError((error, stackTrace) => {
    //
    //     });
  }
}
