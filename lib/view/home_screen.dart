import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    pageController = PageController();
  }

  PageController? pageController;
  @override
  Widget build(BuildContext context) {
    final height= MediaQuery.of(context).size.height;
    final width= MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                flex: 5,
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
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Row(
                            children: [
                              Image.asset('assets/QRcode.png'),
                              SizedBox(
                                width:
                                15.w,
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Francis Longo', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30
                                      ),),
                                      Row(
                                        children: [
                                          Text('SOLDRZ', style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.grey.shade500
                                          ),),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Text('#', style: TextStyle(
                                              fontSize: 30
                                          ),),
                                          Text('12', style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.grey.shade500
                                          ),),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Text('WINS:179', style: TextStyle(
                                              fontSize: 23
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
                )),
            Expanded(
              flex: 13,
              child: PageView(
                onPageChanged: (index) {
                  currentindex = index;
                  setState(() {

                  });
                },
                children: [
                  Column(
                    children: [
                      Text('RECENT GAMES', style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: height * 0.1,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white)
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.18,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text('Center flag -castle '.toUpperCase(), style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19
                                  ),),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text('Cousins Paintball, NJ',style: TextStyle(
                                  fontSize: 17
                                ),)
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Image.asset('assets/window.png')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: height * 0.1,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white)
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.18,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text('Center flag -castle '.toUpperCase(), style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19
                                  ),),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text('Cousins Paintball, NJ',style: TextStyle(
                                    fontSize: 17
                                ),)
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Image.asset('assets/window.png')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: height * 0.1,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white)
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.18,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text('Center flag -castle '.toUpperCase(), style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19
                                  ),),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text('Cousins Paintball, NJ',style: TextStyle(
                                    fontSize: 17
                                ),)
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Image.asset('assets/window.png')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: height * 0.1,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white)
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.18,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: Text('Center flag -castle '.toUpperCase(), style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19
                                  ),),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text('Cousins Paintball, NJ',style: TextStyle(
                                    fontSize: 17
                                ),)
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Image.asset('assets/window.png')
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.blue,
                  )
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
                  for(int i = 0; i <3 ; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: buildIndicator(currentindex == i),
                    )
                ],
              ),),
            Spacer(flex: 1
              ,)
          ],
        ),
      )),
      bottomNavigationBar: new Theme(
    data: Theme.of(context).copyWith(
    canvasColor: Colors.transparent,
          textTheme: Theme
              .of(context)
              .textTheme
              .copyWith(caption: new TextStyle(color: Colors.white))),
    child: new BottomNavigationBar(
      iconSize: 30,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home , color: Colors.white,), label: 'Home',),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag, color: Colors.white,), label: 'Stats'),
        BottomNavigationBarItem(icon: Icon(Icons.menu_outlined, color: Colors.white), label: 'Menu'),
        BottomNavigationBarItem(icon: Icon(Icons.leaderboard, color: Colors.white), label: 'LeaderBoard'),
        BottomNavigationBarItem(icon: Icon(Icons.public, color: Colors.white), label: 'Map'),
      ]),
      ));
  }
  Widget buildIndicator(bool isSelected) {
    return Container(
      height: isSelected ? 10.h : 10.h,
      width: isSelected ? 10.w : 10.w,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: isSelected ? Colors.white : Colors.grey
      ),
    );
  }
}
