import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  toastMessage(String message) {
    Fluttertoast.showToast(msg: message);
  }

  static void FlushBar(String message, BuildContext context) {
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          duration: Duration(seconds: 1),
          message: message,
          messageColor: Colors.red,
        )..show(context));
  }
}
