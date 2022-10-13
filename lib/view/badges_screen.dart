import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BadgeScreen extends StatefulWidget {
  const BadgeScreen({Key? key}) : super(key: key);

  @override
  State<BadgeScreen> createState() => _BadgeScreenState();
}

class _BadgeScreenState extends State<BadgeScreen> {
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return Scaffold(
    backgroundColor: Colors.black,
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
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 2,
                                child: Image.asset('assets/QRcode.png')),
                            Spacer(flex: 1,),
                            Expanded(
                              flex: 12,
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Francis Longo', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 35.sp,
                                        fontFamily: 'BebasNeue'
                                    ),),
                                    Row(
                                      children: [
                                        Text('SOLDRZ', style: TextStyle(
                                          fontSize: 32.sp,
                                          fontFamily: 'BebasNeue',
                                        ),),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text('#', style: TextStyle(
                                            fontSize: 28.sp
                                        ),),
                                        Text('12', style: TextStyle(
                                          fontSize: 32.sp,
                                          fontFamily: 'BebasNeue',
                                        ),),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Text('WINS:179', style: TextStyle(
                                          fontSize: 32.sp,
                                          fontFamily: 'BebasNeue',
                                        ),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
          Expanded(
            flex: 3,
            child:  SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('BADGES', style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BebasNeue',
                ),),
                SizedBox(
                  height: 10.h,
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white),
                      ),
                      child: GridView.builder(
                        physics: ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 24,
                        itemBuilder: (context , index){
                          return Container(child: Image.asset('assets/profile_pic.png'));
                        }, gridDelegate:   SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: 1.6,

                      ),),
                    ),
                  ),
                )
              ],
            ),
          ),)
    ]
              )
      )
    );
  }
}
