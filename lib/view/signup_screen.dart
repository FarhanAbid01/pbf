import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pbf_app/services/login_services.dart';
import 'package:pbf_app/utils/routes_name.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController =TextEditingController();
  TextEditingController usernameController =TextEditingController();
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  TextEditingController confirmPasswordController =TextEditingController();


  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
          children: [
            Spacer(
              flex: 2
            ),
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
                          decoration: InputDecoration(
                              hintText: 'name',
                              hintStyle: TextStyle(
                                color: Colors.white
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Color(0xFF434343))
                              )
                          ),
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
                          decoration: InputDecoration(
                              hintText: 'username',
                              hintStyle: TextStyle(
                                color: Colors.white
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Color(0xFF434343))
                              )
                          ),
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
                          decoration: InputDecoration(
                              hintText: 'email',
                              hintStyle: TextStyle(
                                  color: Colors.white
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Color(0xFF434343))
                              )
                          ),
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
                          decoration: InputDecoration(
                              hintText: 'password',
                              hintStyle: TextStyle(
                                  color: Colors.white
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Color(0xFF434343))
                              )
                          ),
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
                          decoration: InputDecoration(
                              hintText: 're-enter password',
                              hintStyle: TextStyle(
                                  color: Colors.white
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Color(0xFF434343))
                              )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      GestureDetector(
                        onTap: (){
                          signUP(context: context, nameController: nameController, usernameController: usernameController, emailController: emailController, passwordController: passwordController, confirmPasswordController: confirmPasswordController);
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
                                child: Text('CONTINUE', style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold
                                ),))
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text('Already have an account?'),
                      InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, RoutesName.SignIn);
                        },
                        child: Text('sign in' ,style: TextStyle(

                            decoration: TextDecoration.underline
                        ),
                        ),
                      ),
                    ],
                  ),
                )),


          ],
      ),
    );
  }
}
