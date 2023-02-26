import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../view_Model/user_viewModel.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserViewModel>(builder: (context, userVm, child) {
      return Scaffold(
          body: Padding(
            padding:
            const EdgeInsets.only(left: 12.0, right: 12, top: 20, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  ),
              child: Column(
                children: [
                  SizedBox(height: 2.h,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child:   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.search,color:Colors.white,size:40),
                        Image.asset("assets/pb_text_logo.png"),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            height: 50,
                            width: 65,
                            child: Image.network(
                              userVm.user?.profileImage ?? '',
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1.5,
                    color:Colors.white,
                    height: 2,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8.w,vertical: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back,color: Colors.grey,size: 32,),
                        Icon(Icons.person_add_alt_1_rounded,color:Colors.grey,size:32)
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff747579), width: 9)),
                          child: Center(
                            child: Stack(
                              children: [
                                Image.asset('assets/gaame.png'),
                                Transform(
                                    transform: Matrix4.translationValues(
                                        10.0, 10.0, 0.0),
                                    child: Image.asset(
                                      'assets/profile_pic.png',
                                      scale: 2,
                                    )),
                              ],
                            ),
                          ))),
                  Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 2)),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Text(
                                'WORLDWIDE\nRANKING',
                                style: TextStyle(
                                    fontFamily: 'BebasNeue',
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            Flexible(
                              flex: 6,
                              fit: FlexFit.loose,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border:
                                    Border.all(color: Colors.white, width: 2)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    '#289',
                                    style: TextStyle(
                                        fontFamily: 'BebasNeue',
                                        fontSize: 35.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 3)),
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 10,
                                        child: Text(
                                          'MISSION\N COMPLETED',
                                          style: TextStyle(
                                              fontFamily: 'BebasNeue',
                                              fontSize: 19.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Spacer(
                                        flex: 1,
                                      ),
                                      Expanded(
                                        flex: 13,
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border:
                                            Border.all(color: Colors.white, width: 3),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                '17',
                                                style: TextStyle(
                                                    fontFamily: 'BebasNeue',
                                                    fontSize: 38.sp,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 1,
                                      ),
                                    ],
                                  ),
                                )),
                            Expanded(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 10,
                                        child: Text(
                                          'win/loss\nratio',
                                          style: TextStyle(
                                              fontFamily: 'BebasNeue',
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Spacer(
                                        flex: 1,
                                      ),
                                      Expanded(
                                        flex: 13,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border:
                                            Border.all(color: Colors.white, width: 3),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                '1.13',
                                                style: TextStyle(
                                                    fontFamily: 'BebasNeue',
                                                    fontSize: 38.sp,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 1,
                                      ),
                                    ],
                                  ),
                                )),
                            Expanded(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 10,
                                        child: Text(
                                          'paintball\nparks visited',
                                          style: TextStyle(
                                              fontFamily: 'BebasNeue',
                                              fontSize: 19.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Spacer(
                                        flex: 1,
                                      ),
                                      Flexible(
                                        fit: FlexFit.tight,
                                        flex: 13,
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border:
                                            Border.all(color: Colors.white, width: 3),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                '4',
                                                style: TextStyle(
                                                    fontFamily: 'BebasNeue',
                                                    fontSize: 38.sp,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Spacer(
                                        flex: 1,
                                      ),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      )),
                  Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 2)),
                        child: Column(
                          children: [
                            Text(
                              'SQUAD',
                              style: TextStyle(
                                  fontFamily: 'BebasNeue',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Container(
                              child: Image.asset('assets/wallpaper.png'),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
