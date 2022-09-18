import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pbf_app/utils/routes_name.dart';
class LogInScreen2 extends StatefulWidget {
  const LogInScreen2({Key? key}) : super(key: key);

  @override
  State<LogInScreen2> createState() => _LogInScreen2State();
}

class _LogInScreen2State extends State<LogInScreen2> {
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
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, RoutesName.onBording);
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
                              onTap: (){
                                Navigator.of(context).pop();
                              },
                              child: Text('Sign up' ,style: TextStyle(
                                  decoration: TextDecoration.underline
                              ),
                              ),
                            ),
                          ],
                        ))

                  ],
                ),
              )),


        ],
      ),
    );
  }
}
