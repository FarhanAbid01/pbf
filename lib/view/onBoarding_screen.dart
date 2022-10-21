import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pbf_app/Constant/token.dart';
import 'package:pbf_app/data/network/image_api.dart';
import 'dart:io';

import 'package:pbf_app/utils/routes_name.dart';
import 'package:pbf_app/utils/zbot_toast.dart';
import 'package:pbf_app/view_Model/token_viewModel.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({Key? key}) : super(key: key);

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  int currentindex = 0;
  String? _getImage;

  saveImage() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (image == null) {
      return null;
    }
    setState(() {
      _getImage = image.path;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    GetToken().gettoken();
  }

  PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: PageView(
              onPageChanged: (index) {
                currentindex = index;
                setState(() {});
              },
              controller: pageController,
              children: [
                Column(
                  children: [
                    Spacer(
                      flex: 2,
                    ),
                    Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Text(
                              'WELCOME TO THE\nFEDERATION',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'How it works.',
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        )),
                  ],
                ),
                Column(
                  children: [
                    Spacer(
                      flex: 2,
                    ),
                    Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Text(
                              'Play at a paintball park affiliated with the\nPaintball Federation.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              'Complete missions to earn badges',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              'join a squad and complete missions\ntogether to earn exclusive rewards.',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                  ],
                ),
                Column(
                  children: [
                    Spacer(
                      flex: 2,
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(children: [
                        Text(
                          'Upload A Contact Photo to complete\nyour first mission',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        InkWell(
                          onTap: () {
                            saveImage();
                          },
                          child: Container(
                            height: 120.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.grey.shade500)),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.45,
                              child: _getImage != null
                                  ? Container(
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.file(
                                            File(
                                              _getImage!,
                                            ).absolute,
                                            fit: BoxFit.cover,
                                          )),
                                    )
                                  : Container(
                                      height: 120.h,
                                      width: 120.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              color: Colors.grey.shade500)),
                                    ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () async {
                            log('hit imgae api');
                            ZBotToast.loadingShow();
                            await ImageApi().upload(
                                File(
                                  _getImage!,
                                ).absolute,
                                context);
                            ZBotToast.loadingClose();
                          },
                          child: Container(
                            height: 40.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey.shade500),
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'UPLOAD',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        )
                      ]),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: buildIndicator(currentindex == i),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Container(
      height: isSelected ? 14.h : 8.h,
      width: isSelected ? 10.w : 8.w,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: isSelected ? Colors.white : Colors.grey),
    );
  }
}
