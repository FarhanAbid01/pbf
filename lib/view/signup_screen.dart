import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pbf_app/utils/zbot_toast.dart';
import 'package:pbf_app/view_Model/auth_viewModel.dart';
import 'package:pbf_app/services/login_services.dart';
import 'package:pbf_app/utils/routes_name.dart';
import 'package:pbf_app/utils/ultis.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
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
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            Spacer(flex: 2),
            Expanded(
                flex: 5,
                child: Center(
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
                          controller: nameController,
                          validator: requiredValidator,
                          decoration: InputDecoration(
                              hintText: 'name',
                              hintStyle: TextStyle(color: Colors.white),
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
                          controller: usernameController,
                          validator: requiredValidator,
                          decoration: InputDecoration(
                              hintText: 'username',
                              hintStyle: TextStyle(color: Colors.white),
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
                          controller: emailController,
                          validator: MultiValidator([
                            requiredValidator,
                            EmailValidator(
                                errorText: 'enter a valid email address')
                          ]),
                          decoration: InputDecoration(
                              hintText: 'email',
                              hintStyle: TextStyle(color: Colors.white),
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
                              hintText: 'password',
                              hintStyle: TextStyle(color: Colors.white),
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
                        width: width * 0.7,
                        child: TextFormField(
                          controller: confirmPasswordController,
                          textAlign: TextAlign.center,
                          validator: MultiValidator([
                            requiredValidator,
                          ]),
                          decoration: InputDecoration(
                              hintText: 're-enter password',
                              hintStyle: TextStyle(color: Colors.white),
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
                        onTap: () async {
                          ZBotToast.loadingShow();
                          if (confirmPasswordController.text !=
                              passwordController.text) {
                            return Utils.FlushBar(
                                'confirm password does not match with password',
                                context);
                          } else {
                            if (_key.currentState!.validate()) {
                              var data = {
                                "Name": nameController.text,
                                "UserName": usernameController.text,
                                "Email": emailController.text,
                                "Password": passwordController.text,
                                'ConfirmPassword':
                                    confirmPasswordController.text,
                              };

                              await authViewMode.registerApi(data, context);
                            }
                          }
                          ZBotToast.loadingClose();
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
                      Text('Already have an account?'),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.SignIn);
                        },
                        child: Text(
                          'sign in',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
