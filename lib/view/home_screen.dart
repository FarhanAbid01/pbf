import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pbf_app/utils/zbot_toast.dart';
import 'package:pbf_app/view/map.dart';

import 'package:pbf_app/view_Model/user_viewModel.dart';
import 'package:pbf_app/widgets/menu_bottomsheet.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      pageController = PageController();
      var userVm = Provider.of<UserViewModel>(context, listen: false);
      ZBotToast.loadingShow();
      await userVm.setUserData();
      ZBotToast.loadingClose();
    });
  }

  PageController? pageController;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Consumer<UserViewModel>(builder: (context, userVm, child) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Row(
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
                      SizedBox(
                        height: 5.h,
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(vertical: 1.h,horizontal: 7.w),
                            child:
                                 Row(crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(flex:3,
                                        child: Padding(
                                          padding:  EdgeInsets.symmetric(vertical: 7.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'SOLDRZ',
                                                  style: TextStyle(
                                                    fontSize: 32.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Text(
                                                userVm.user?.name ?? 'User name',
                                                style: TextStyle(
                                                  fontSize: 15.sp,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                     Container(
                                       color: Colors.white,
                                       width: 2,
                                     ),
                                      Expanded(
                                        child:  Padding(
                                          padding:  EdgeInsets.symmetric(vertical: 7.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'GP',
                                                  style: TextStyle(
                                                    fontSize: 32.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Text(
                                                "192",
                                                style: TextStyle(
                                                  fontSize: 15.sp,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                      Expanded(
                                        child:  Padding(
                                          padding:  EdgeInsets.symmetric(vertical: 7.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'W',
                                                  style: TextStyle(
                                                    fontSize: 32.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Text(
                                                "78",
                                                style: TextStyle(
                                                  fontSize: 15.sp,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                      Expanded(
                                        child:  Padding(
                                          padding:  EdgeInsets.symmetric(vertical: 7.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                  child:  Padding(
                                                    padding:  EdgeInsets.only(bottom: 20.h),
                                                    child: Icon(Icons.lock,color:Colors.white,size: 32.sp,),
                                                  )),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Text(
                                                "78",
                                                style: TextStyle(
                                                  fontSize: 15.sp,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),

                          ),
                        ),
                      )
                    ],
                  ),
                )),
            SizedBox(height: 5.h,),
            Expanded(
              flex: 15,
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  currentindex = index;
                  setState(() {});
                },
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          'RECENT GAMES',
                          style: TextStyle(
                            fontSize: 40.sp,
                            fontFamily: 'BebasNeue',
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                         ListView.builder(
                              physics: ScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: 12,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: height * 0.11,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                     ),
                                  child: Stack(alignment: Alignment.center,
                                    children: [
                                      Container(
                                        child: Image.asset(
                                          'assets/wallpaper.png',
                                          fit: BoxFit.cover,
                                          height: 80,
                                        ),
                                      ),
                                    Row(
                                          children: [
                                            Spacer(flex: 1,),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'Center flag -castle '
                                                        .toUpperCase(),
                                                    textAlign:
                                                        TextAlign.center,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22.sp,
                                                      fontFamily: 'BebasNeue',
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Cousins Paintball, NJ',
                                                  style: TextStyle(
                                                    fontSize: 12.sp,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Expanded(
                                              child: Image.asset(
                                                  'assets/window.png'),
                                            )
                                          ],
                                        ),

                                    ],
                                  ),
                                );
                              }),

                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          'MISSIONS',
                          style: TextStyle(
                            fontSize: 40.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'BebasNeue',
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ListView.builder(
                            physics: ScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: 12,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 8.0, left: 16, right: 16),
                                child: Container(
                                  height: height * 0.05,
                                  width: width * 0.9,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: Stack(
                                    children: [
                                      Opacity(
                                        opacity: 0.5,
                                        child: Container(
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border:
                                                Border.all(color: Colors.white),
                                          ),
                                          child: LinearProgressIndicator(
                                            value: 5 / 10,
                                            color: Colors.yellow,
                                            minHeight: height * 0.05,
                                            backgroundColor: Colors.transparent,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12.0),
                                        child: Center(
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Win 10 games on Castle',
                                                style: TextStyle(
                                                  fontFamily: 'Segoe UI',
                                                ),
                                              ),
                                              Text('5/10'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'LEADERBOARD',
                              style: TextStyle(
                                fontSize: 40.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'BebasNeue',
                              ),
                            ),
                            Icon(
                              Icons.leaderboard,
                              size: 30,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        ListView.builder(
                            physics: ScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: 12,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 8.0, left: 16, right: 16),
                                child: Container(
                                    height: height * 0.05,
                                    width: width * 0.9,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Text(
                                                  '37.',
                                                  style: TextStyle(
                                                      fontSize: 20.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Image.asset(
                                                    'assets/profile_pic.png'),
                                                Text(
                                                  'FRANCIS LONGO',
                                                  style: TextStyle(
                                                    fontSize: 16.sp,
                                                    fontFamily: 'BebasNeue',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'wins',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w200,
                                                    fontSize: 10.sp,
                                                    fontFamily: 'Segoe UI',
                                                  ),
                                                ),
                                                Text(
                                                  '179',
                                                  style: TextStyle(
                                                    fontSize: 14.sp,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'BebasNeue',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                              );
                            })
                      ],
                    ),
                  ),
                  mapScreen()
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 4; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: buildIndicator(currentindex == i),
                    )
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: width * 0.2,
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                pageController?.jumpToPage(0);
                              },
                              icon: Icon(
                                Icons.home,
                                size: 30,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Text(
                              'Home',
                              style: TextStyle(fontSize: 11.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.2,
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                pageController?.jumpToPage(1);
                              },
                              icon: Icon(
                                Icons.shopping_bag,
                                size: 30,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Text(
                              'Stats',
                              style: TextStyle(fontSize: 11.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.2,
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                menubottomSheet(context: context);
                              },
                              icon: Icon(
                                Icons.menu,
                                size: 30,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Text(
                              'Menu',
                              style: TextStyle(fontSize: 11.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.2,
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                pageController?.jumpToPage(2);
                              },
                              icon: Icon(
                                Icons.leaderboard,
                                size: 30,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Text(
                              'LeaderBoard',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.2,
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                pageController?.jumpToPage(3);
                              },
                              icon: Icon(
                                Icons.public,
                                size: 30,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Text(
                              'Map',
                              style: TextStyle(fontSize: 11.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )),
        //   bottomNavigationBar: new Theme(
        // data: Theme.of(context).copyWith(
        // canvasColor: Colors.transparent,
        //       textTheme: Theme
        //           .of(context)
        //           .textTheme
        //           .copyWith(caption: new TextStyle(color: Colors.white))),
        // child: new BottomNavigationBar(
        //   currentIndex: currentindex,
        //   onTap: (int index){
        //     currentindex= index;
        //     pageController?.jumpToPage(currentindex);
        //     setState(() {
        //
        //     });
        //   },
        //   iconSize: 30,
        //       items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.home , color: Colors.white,), label: 'Home',),
        //     BottomNavigationBarItem(icon: Icon(Icons.shopping_bag, color: Colors.white,), label: 'Stats'),
        //     BottomNavigationBarItem(icon: Icon(Icons.menu_outlined, color: Colors.white), label: 'Menu'),
        //     BottomNavigationBarItem(icon: Icon(Icons.leaderboard, color: Colors.white), label: 'LeaderBoard'),
        //     BottomNavigationBarItem(icon: Icon(Icons.public, color: Colors.white), label: 'Map'),
        //   ]),
        //   )
      );
    });
  }

  Widget buildIndicator(bool isSelected) {
    return Container(
      height: isSelected ? 10.h : 10.h,
      width: isSelected ? 10.w : 10.w,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: isSelected ? Colors.white : Colors.grey),
    );
  }
}
