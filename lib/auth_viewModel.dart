import 'dart:convert';
import 'dart:developer' as msg;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pbf_app/repository/auth_repository.dart';
import 'package:pbf_app/utils/routes_name.dart';
import 'package:pbf_app/utils/ultis.dart';

class AuthViewModel with ChangeNotifier {
  final myRepo = AuthRepository();

  Future<void> registerApi(dynamic data, BuildContext context) async {
    var v;
    myRepo
        .registerAccount(data)
        .then((value) => {
              if (kDebugMode) {msg.log('succedd' + value.toString())},
              Navigator.pushNamed(context, RoutesName.SignIn2)
            })
        .onError((error, stackTrace) => {
              if (kDebugMode)
                {
                  Utils.FlushBar(error.toString(), context),
                  msg.log('this errror : ' + error.toString())
                }
            });
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    myRepo.LoginAccount(data).then((value) {
      if (kDebugMode) {
        msg.log('succedd' + value.toString());
      }
      var token = json.decode(value);

      msg.log('this is token: ${token['access_token']}');
      Navigator.pushNamed(context, RoutesName.Home);
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        Utils.FlushBar(error.toString(), context);
        msg.log('this errror : ' + error.toString());
      }
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
