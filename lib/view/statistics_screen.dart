import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class StatsScreen extends StatefulWidget {
  const StatsScreen({Key? key}) : super(key: key);

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height * 0.06,
                          width: width * 0.75,
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 3, left: 8),
                                hintText: 'search the federation',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(color: Color(0xFF434343))
                                ),
                                suffixIcon: Icon(Icons.search)
                            ),
                          ),
                        ),
                        Image.asset('assets/profile_pic.png')
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                Text('STATISTICS', style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BebasNeue',
                ),),
                SizedBox(
                  height: 10.h,
                ),
                  Expanded(
                    flex: 5,
                      child: Container(
                        width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white, width: 2)
                    ),
                    child: Column(
                      children: [
                        Text('Homefield',style: TextStyle(
                          fontFamily: 'Segoe UI',
                        ),),
                        Text('cousin paintball',style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'BebasNeue',
                          decoration: TextDecoration.underline
                        ),),
                        Text('manchester new jersey',style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'BebasNeue',
                        ),),
                      ],
                    ),
                  ),
                  ),
                    Spacer(flex: 1,),
                    Expanded(
                        flex: 13,
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white, width: 2)
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Text('Recent Games'),
                          Container(
                            height: height * 0.1,
                            width: width * 0.7,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.white)
                            ),
                            child: Row(
                              children: [
                                Spacer(flex: 1,),
                                Expanded(
                                  flex: 5,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.center
                                          ,child: Text('Center flag -castle '.toUpperCase(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25.sp,
                                            fontFamily: 'BebasNeue',
                                          ),),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text('Cousins Paintball, NJ',style: TextStyle(
                                          fontSize: 17.sp,
                                          fontFamily: 'Segoe UI',
                                        ),),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Image.asset('assets/window.png'))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: height * 0.1,
                            width: width * 0.7,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.white)
                            ),
                            child: Row(
                              children: [
                                Spacer(flex: 1,),
                                Expanded(
                                  flex: 5,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.center
                                          ,child: Text('Center flag -castle '.toUpperCase(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25.sp,
                                            fontFamily: 'BebasNeue',
                                          ),),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text('Cousins Paintball, NJ',style: TextStyle(
                                          fontSize: 17.sp,
                                          fontFamily: 'Segoe UI',
                                        ),),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Image.asset('assets/window.png'))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0,top: 5),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text('view more', style: TextStyle(
                                decoration: TextDecoration.underline
                              ),),
                            ),
                          )
                        ],
                      ),
                    )),
                    Spacer(flex: 1,),
                    Expanded(
                        flex: 14,
                        child: Row(
                      children: [
                        Expanded(
                          flex : 11,
                          child:  Container(
                            height: height * 0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white, width: 2)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Text('Best Data',
                                  style: TextStyle(
                                    fontSize: 21.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'BebasNeue',
                                  ),)),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: Stack(
                                      children: [
                                        Container(
                                        height: height * 0.17,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            border: Border.all(color: Colors.white)
                                        ),
                                        child: Row(
                                          children: [
                                            Spacer(flex: 1,),
                                            Expanded(
                                              flex: 5,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Align(
                                                      alignment: Alignment.center
                                                      ,child: Text('Center flag -castle '.toUpperCase(),
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18.sp,
                                                        fontFamily: 'BebasNeue',
                                                      ),),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text('Cousins Paintball, NJ',style: TextStyle(
                                                      fontSize: 12.sp,
                                                      fontFamily: 'Segoe UI',
                                                    ),),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                        ),

                                        Opacity(
                                          opacity: 0.9,
                                          child: Container(
                                            child: Image.asset('assets/wallpaper.png',fit: BoxFit.fill,),
                                          ),
                                        ),
                                      ]
                                    ),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 2,
                                      child: Text('Best Data', style: TextStyle(
                                    fontSize: 21.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'BebasNeue',
                                  ),)),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: Container(
                                      height: height * 0.17,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(color: Colors.white)
                                      ),
                                      child: Row(
                                        children: [
                                          Spacer(flex: 1,),
                                          Expanded(
                                            flex: 5,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text('Center flag -castle '.toUpperCase(),
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18.sp,
                                                      fontFamily: 'BebasNeue',
                                                    ),),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text('Cousins Paintball, NJ',style: TextStyle(
                                                    fontSize: 12.sp,
                                                    fontFamily: 'Segoe UI',
                                                  ),),
                                                )
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                ],
                              ),
                            ),

                          ),),
                        Spacer(flex: 1,),
                        Expanded(
                          flex: 11,
                          child:  Container(
                          height: height * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white)
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Spacer(flex: 1,),
                                      Expanded(
                                          flex: 4,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(color: Colors.white , width: 2)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text('win/loss ratio',style: TextStyle(
                                                  fontSize: 9.sp,
                                                  fontFamily: 'BebasNeue',
                                                ),),
                                                Text('1.13',style: TextStyle(
                                                  fontSize: 9.sp,
                                                  fontFamily: 'BebasNeue',
                                                ),),
                                              ],
                                            ),
                                          ),
                                        )
                                      ),
                                      Spacer(flex: 1,),
                                      Expanded(
                                          flex: 4,
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(color: Colors.white , width: 2)
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text('win/loss ratio',style: TextStyle(
                                                  fontSize: 9.sp,
                                                  fontFamily: 'BebasNeue',
                                                ),),
                                                Text('1.13',style: TextStyle(
                                                  fontSize: 9.sp,
                                                  fontFamily: 'BebasNeue',
                                                ),),
                                              ],
                                            ),
                                          )
                                      ),
                                      Spacer(flex: 1,),
                                      Expanded(
                                          flex: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(color: Colors.white , width: 2)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('win/loss ratio',style: TextStyle(
                                                    fontSize: 9.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),),
                                                  Text('1.13',style: TextStyle(
                                                    fontSize: 9.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),),
                                                ],
                                              ),
                                            ),
                                          )
                                      ),
                                      Spacer(flex: 1,),
                                      Expanded(
                                          flex: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(color: Colors.white , width: 2)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('win/loss ratio',style: TextStyle(
                                                    fontSize: 9.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),),
                                                  Text('1.13',style: TextStyle(
                                                    fontSize: 9.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),),
                                                ],
                                              ),
                                            ),
                                          )
                                      ),
                                      Spacer(flex: 1,),
                                      Expanded(
                                          flex: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(color: Colors.white , width: 2)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('win/loss ratio',style: TextStyle(
                                                    fontSize: 9.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),),
                                                  Text('1.13',style: TextStyle(
                                                    fontSize: 9.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),),
                                                ],
                                              ),
                                            ),
                                          )
                                      ),
                                      Spacer(flex: 1,),
                                      Expanded(
                                          flex: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(color: Colors.white , width: 2)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('win/loss ratio',style: TextStyle(
                                                    fontSize: 9.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),),
                                                  Text('1.13',style: TextStyle(
                                                    fontSize: 9.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),),
                                                ],
                                              ),
                                            ),
                                          )
                                      ),
                                      Spacer(flex: 1,),
                                      Expanded(
                                          flex: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(color: Colors.white , width: 2)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('win/loss ratio',style: TextStyle(
                                                    fontSize: 9.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),),
                                                  Text('1.13',style: TextStyle(
                                                    fontSize: 9.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),),
                                                ],
                                              ),
                                            ),
                                          )
                                      ),
                                      Spacer(flex: 1,),
                                      Expanded(
                                        flex: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(color: Colors.white , width: 2)
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('win/loss ratio',style: TextStyle(
                                                    fontSize: 9.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),),
                                                  Text('1.13',style: TextStyle(
                                                    fontSize: 9.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),),
                                                ],
                                              ),
                                            ),
                                          )
                                      ),
                                      Spacer(flex: 1,)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),)
                      ],
                    ))
                  ],
                ),
              )),
        ],
      )),
    );
  }
}

