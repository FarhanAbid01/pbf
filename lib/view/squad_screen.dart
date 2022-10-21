import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SquadScreen extends StatefulWidget {
  const SquadScreen({Key? key}) : super(key: key);

  @override
  State<SquadScreen> createState() => _SquadScreenState();
}

class _SquadScreenState extends State<SquadScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          Flexible(
              fit: FlexFit.loose,
              flex: 3,
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
                                contentPadding:
                                    EdgeInsets.only(top: 3, left: 8),
                                hintText: 'search the federation',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Color(0xFF434343))),
                                suffixIcon: Icon(Icons.search)),
                          ),
                        ),
                        Image.asset('assets/profile_pic.png')
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'SQUADS',
                      style: TextStyle(
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BebasNeue',
                      ),
                    ),
                  ],
                ),
              )),
          Flexible(
            flex: 13,
            fit: FlexFit.loose,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white, width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Column(
                            children: [
                              Text(
                                'Manchester  Mayhem',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.sp,
                                  fontFamily: 'BebasNeue',
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 24.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '#123454',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25.sp,
                                        fontFamily: 'BebasNeue',
                                      ),
                                    ),
                                    Text(
                                      'wins:392',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25.sp,
                                        fontFamily: 'BebasNeue',
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 5,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: Colors.white, width: 2)),
                          child: Image.asset(
                            'assets/wallpaper.png',
                            fit: BoxFit.fill,
                          ),
                        )),
                    Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: Colors.white, width: 3)),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                child: Column(
                                  children: [
                                    Spacer(
                                      flex: 2,
                                    ),
                                    Expanded(
                                      flex: 10,
                                      child: Text(
                                        'squad mission completed',
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
                                          border: Border.all(
                                              color: Colors.white, width: 3),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              '22',
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
                                    Spacer(
                                      flex: 2,
                                    ),
                                    Expanded(
                                      flex: 10,
                                      child: Text(
                                        'sqaud\n ranking',
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.white, width: 3),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              '#13',
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
                                    Spacer(
                                      flex: 3,
                                    ),
                                    Expanded(
                                      flex: 10,
                                      child: Text(
                                        'members',
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
                                          border: Border.all(
                                              color: Colors.white, width: 3),
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
                                    Spacer(flex: 2)
                                  ],
                                ),
                              )),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 2,
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 6,
                              childAspectRatio: 1.6,
                            ),
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 12,
                            itemBuilder: (ctx, index) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Container(
                                    child: Image.asset(
                                  'assets/profile_pic.png',
                                  fit: BoxFit.fill,
                                )),
                              );
                            }))
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
