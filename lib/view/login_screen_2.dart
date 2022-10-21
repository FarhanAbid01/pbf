import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:pbf_app/view_Model/auth_viewModel.dart';
import 'package:pbf_app/utils/routes_name.dart';
import 'package:provider/provider.dart';

class LogInScreen2 extends StatefulWidget {
  const LogInScreen2({Key? key}) : super(key: key);

  @override
  State<LogInScreen2> createState() => _LogInScreen2State();
}

class _LogInScreen2State extends State<LogInScreen2> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _key = GlobalKey<FormState>();
  final requiredValidator =
      RequiredValidator(errorText: 'this field is required');
  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'Must be at least 8 digits long'),
    PatternValidator(r'^(?=.*?[!@#\$&*~]).{8,}$',
        errorText: 'Must have one special character'),
    PatternValidator(r'^(?=.*?[a-z]).{8,}$',
        errorText: 'Must have one Lower case Letter'),
    PatternValidator(r'^(?=.*[A-Z]).{8,}$',
        errorText: 'Must have one Upper case Letter'),
  ]);
  @override
  Widget build(BuildContext context) {
    final authViewMode = Provider.of<AuthViewModel>(context, listen: false);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Spacer(flex: 2),
          Expanded(
              flex: 5,
              child: Center(
                child: Form(
                  key: _key,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    children: [
                      Image.asset('assets/login_screen.png'),
                      SizedBox(
                        height: 5.h,
                      ),
                      Container(
                        height: height * 0.06,
                        width: width * 0.6,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          controller: usernameController,
                          validator: requiredValidator,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 10),
                              hintText: 'username',
                              hintStyle: TextStyle(color: Colors.white),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                  BorderSide(color: Color(0xFF434343))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      BorderSide(color: Color(0xFF434343)))),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: height * 0.06,
                        width: width * 0.6,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          controller: passwordController,
                          validator: passwordValidator,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 10),
                              hintText: 'password',
                              hintStyle: TextStyle(color: Colors.white),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                  BorderSide(color: Color(0xFF434343))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      BorderSide(color: Color(0xFF434343)))),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_key.currentState!.validate()) {
                            var data = {
                              "grant_type": "password",
                              "username": usernameController.text,
                              "password": passwordController.text,
                            };

                            authViewMode.loginApi(data, context);
                            log('have hit hte aPIiiii');
                          }
                        },
                        child: Container(
                            height: height * 0.06,
                            width: width * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'CONTINUE',
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text('Forgot your password?'),
                      Spacer(
                        flex: 3,
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Don\'t have an account?'),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
