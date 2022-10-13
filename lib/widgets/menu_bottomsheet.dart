import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pbf_app/view/badges_screen.dart';
import 'package:pbf_app/view/maps_screen.dart';
import 'package:pbf_app/view/squad_screen.dart';
import 'package:pbf_app/view/statistics_screen.dart';
import 'package:pbf_app/widgets/PROFILE_BOTTOMSHEET.dart';
void menubottomSheet(
{
  required BuildContext context,
}){
showModalBottomSheet(context: context, builder: (context){
  return Container(
    color: Color(0xFF1D1D1D),
    child: Column(
      children: [
        TextButton(onPressed: (){
          showprfileBottomsheet(context: context, onPressed: (){});
        }, child: Text('PROFILE', style: TextStyle(color: Colors.white , fontSize: 25.sp ,fontWeight: FontWeight.bold,
          fontFamily: 'BebasNeue',),)),
        SizedBox(
          height: 5.h,
        ),
        TextButton(onPressed: () {
        }, child: Text('MAP', style: TextStyle(color: Colors.white, fontSize: 25.sp ,fontWeight: FontWeight.bold,
            fontFamily: 'BebasNeue',))),
        SizedBox(
          height: 5.h,
        ),
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> SquadScreen()));
        }, child: Text('MY SQUAD', style: TextStyle(color: Colors.white,
            fontFamily: 'BebasNeue',fontSize: 25.sp ,fontWeight: FontWeight.bold))),
        SizedBox(
          height: 5.h,
        ),
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> StatsScreen()));
        }, child: Text('STATISTICS', style: TextStyle(color: Colors.white,
            fontFamily: 'BebasNeue',fontSize: 25.sp ,fontWeight: FontWeight.bold))),
        SizedBox(
          height: 5.h,
        ),
        TextButton(onPressed: (){}, child: Text('ABOUT', style: TextStyle(color: Colors.white,
            fontFamily: 'BebasNeue',fontSize: 25.sp ,fontWeight: FontWeight.bold))),
        SizedBox(
          height: 5.h,
        ),
        TextButton(onPressed: (){}, child: Text('MISSIONS', style: TextStyle(color: Colors.white,
            fontFamily: 'BebasNeue',fontSize: 25.sp ,fontWeight: FontWeight.bold))),
        SizedBox(
          height: 5.h,
        ),
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> BadgeScreen()));
        }, child: Text('BADGES', style: TextStyle(color: Colors.white, fontSize: 25.sp ,
            fontFamily: 'BebasNeue',fontWeight: FontWeight.bold))),
        SizedBox(
          height: 5.h,
        ),
        TextButton(onPressed: (){}, child: Text('CONTACTS', style: TextStyle(color: Colors.white, fontSize: 25.sp ,
            fontFamily: 'BebasNeue',fontWeight: FontWeight.bold))),
        SizedBox(
          height: 5.h,
        ),
        TextButton(onPressed: (){}, child: Text('SETTINGS', style: TextStyle(color: Colors.white, fontSize: 25.sp ,
            fontFamily: 'BebasNeue',
            fontWeight: FontWeight.bold))),
      ],
    ),
  );
});
}