import 'dart:developer';

import 'package:pbf_app/data/network/BaseApi_Services.dart';
import 'package:pbf_app/data/network/NetworkApi_Services.dart';
import 'package:pbf_app/utils/routes.dart';

class AuthRepository {
  BaseApiServices apiServices = NetworkApiService();

  Future<dynamic> registerAccount(dynamic data) async {
    try {
      dynamic response = await apiServices.getPostApiResponse(
          '${Routes.base_url}/api/account/register', data);
      return response;
    } catch (e) {
      log(e.toString());
      throw e;
    }
  }

  Future<dynamic> loginAccount(dynamic data) async {
    try {
      dynamic response = await apiServices.getPostApiResponse(
          Routes.base_url + '/Token', data);
      return response;
    } catch (e) {
      log(e.toString());
      throw e;
    }
  }
}
