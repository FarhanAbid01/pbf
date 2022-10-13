import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pbf_app/utils/routes_name.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return  Scaffold(
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
                  Text('Join the Federation',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    fontFamily: 'BebasNeue'
                  ),),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                        height: height * 0.06,
                        width: width * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade700
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('sign up with email', style: TextStyle(
                                fontSize: 19,
                            ),))
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                        height: height * 0.06,
                        width: width * 0.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('connect with facebook', style: TextStyle(
                              fontSize: 19,
                            ),))
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                        height: height * 0.06,
                        width: width * 0.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueAccent.shade100
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('connect with Twitter', style: TextStyle(
                              fontSize: 19,
                            ),))
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                        height: height * 0.06,
                        width: width * 0.6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red.shade400
                        ),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('connect with Google', style: TextStyle(
                              fontSize: 19,
                            ),))
                    ),
                    SizedBox(
                      height: 10.h,
                    ),

                    Text('Already have an account?'),
                    InkWell(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, RoutesName.SignIn2);
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
