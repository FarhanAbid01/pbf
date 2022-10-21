// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:path/path.dart';
import 'package:pbf_app/Constant/token.dart';

import '../../utils/routes_name.dart';

class ImageApi {
  Future upload(File? imageFile, BuildContext context) async {
    var stream = http.ByteStream(Stream.castFrom(imageFile!.openRead()));
    var length = await imageFile.length();

    var uri = Uri.parse(
        'https://pbf-api.azurewebsites.net/api/Account/UploadProfileImage');

    var request = http.MultipartRequest("POST", uri);
    var multipartFile = http.MultipartFile('file', stream, length,
        filename: basename(imageFile.path));
    //contentType: new MediaType('image', 'png'));

    Map<String, String> headers = {"Authorization": "Bearer ${GetToken.token}"};

    request.headers.addAll(headers);

    request.files.add(multipartFile);
    var response = await request.send();
    log(response.statusCode.toString());
    Get.offAllNamed(RoutesName.Home);
    response.stream.transform(utf8.decoder).listen((value) {
      log(value);
    });
  }
}
