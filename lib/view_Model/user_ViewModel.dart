// ignore: file_names
import 'dart:convert';
import 'dart:developer' as msg;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pbf_app/models/user.dart';

import 'package:pbf_app/repository/user_repository.dart';

class UserViewModel with ChangeNotifier {
  final myRepo = UserRepository();
  User? user;

  Future<User> getUserDetailsApi(BuildContext context) async {
    var user;
    await myRepo.getUserDetail().then((value) {
      var data = json.decode(value);
      user = User.fromMap(data);
      msg.log(user.profileImage.toString());
    }).onError((error, stackTrace) {
      msg.log(error.toString());
    });
    return user;
  }

  Future<void> setUserData() async {
    var tempUser = await getUserDetailsApi(Get.context!);
    if (tempUser != null) {
      user = tempUser;
    } else {
      msg.log("this is errorrrrrrrr$tempUser");
    }
    notifyListeners();
  }
}
