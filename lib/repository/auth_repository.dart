import 'dart:developer';

import 'package:flutter/animation.dart';
import 'package:pbf_app/data/network/BaseApi_Services.dart';
import 'package:pbf_app/data/network/NetworkApi_Services.dart';
import 'package:pbf_app/utils/routes.dart';

class AuthRepository {
  BaseApiServices _apiServices = NetworkApiService();

  Future<dynamic> registerAccount(dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(
          Routes.base_url + '/api/account/register', data);
      return response;
    } catch (e) {
      log(e.toString());
      throw e;
    }
  }

  Future<dynamic> LoginAccount(dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(
          Routes.base_url + '/Token', data);
      return response;
    } catch (e) {
      log(e.toString());
      throw e;
    }
  }
}
