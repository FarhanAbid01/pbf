import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pbf_app/utils/routes_name.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

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
                          decoration: InputDecoration(
                              hintText: 'name',
                              contentPadding: EdgeInsets.only(left: width * 0.24),
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
                          decoration: InputDecoration(
                              hintText: 'username',
                              contentPadding: EdgeInsets.only(left: width * 0.21),
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
                          decoration: InputDecoration(
                              hintText: 'email',
                              contentPadding: EdgeInsets.only(left: width * 0.24),
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
                          decoration: InputDecoration(
                              hintText: 'password',
                              contentPadding: EdgeInsets.only(left: width * 0.21),
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
                          decoration: InputDecoration(
                              hintText: 're-enter password',
                              contentPadding: EdgeInsets.only(left: width * 0.14),
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
