import 'dart:developer';

import 'package:flutter/animation.dart';
import 'package:pbf_app/data/network/BaseApi_Services.dart';
import 'package:pbf_app/data/network/NetworkApi_Services.dart';
import 'package:pbf_app/utils/routes.dart';

class UserRepository {
  BaseApiServices apiUserServices = NetworkApiService();

  Future<dynamic> getUserDetail() async {
    try {
      dynamic response = await apiUserServices
          .getGetApiResponse('${Routes.base_url}/api/account/userinfo');
      return response;
    } catch (e) {
      log(e.toString());
      throw e;
    }
  }
}
