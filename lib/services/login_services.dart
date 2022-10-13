import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:pbf_app/utils/routes.dart';
import 'package:http/http.dart' as http;

Future<void> signUP({
  required BuildContext context,
  required TextEditingController nameController,
  required TextEditingController usernameController,
  required TextEditingController emailController,
  required TextEditingController passwordController,
  required TextEditingController confirmPasswordController,

}) async {

  var data = {
    "Name": nameController.text,
    "UserName": usernameController.text,
    "Email": emailController.text,
    "Password": passwordController.text,
    'ConfirmPassword': confirmPasswordController.text,
  };
  print(data);
  var url = Uri.parse('https://pbf-api.azurewebsites.net/api/account/register');
  log('this us url '+url.toString());

  var response = await http.post(url, body: data);
  // print('Response body: ${response.body}');
    var user = jsonDecode(response.body);
    print('This is userrrr' + user);
}