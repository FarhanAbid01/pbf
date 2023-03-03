import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_search_screen.dart';

class JoinSquadScreen extends StatefulWidget {
  const JoinSquadScreen({Key? key}) : super(key: key);

  @override
  State<JoinSquadScreen> createState() => _JoinSquadScreenState();
}

class _JoinSquadScreenState extends State<JoinSquadScreen> {
  //  TextEditingController txt = TextEditingController();

 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          child: Column(
            children: [
              // ///////////////////////////////////////////////
              Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeSearchScreen(),));
                          },
                          child: const Icon(Icons.search,color:Colors.white,size:40)),
                          Image.asset("assets/pb_text_logo.png"),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox(
                              height: 50,
                              width: 65,
                              child: Image.asset('assets/profile_pic.png'),
                              
                              // Image.network(
                              //   userVm.user?.profileImage ?? '',
                              //   fit: BoxFit.fill,
                              // ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: const Icon(Icons.arrow_back,color: Colors.white,size: 30,)),
                            Expanded(
                              flex: 4,
                              child: Center(child: Text(
                      'SQUADS',
                      style: TextStyle(
                        fontSize: 35.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BebasNeue',
                      ),
                    ),)),
                    const Expanded(
                      child: SizedBox(width: 20,)),
                        ],
                      ),

             //////////////////////////////////////////////////////  
             const SizedBox(height: 10,),
             const Center(child: Text("You  have (3) squad invites")),  
             const SizedBox(height: 20,),
               
                 Expanded(child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context,index){
                    return  GestureDetector(
               onTap: (){
                 // Navigator.pop(context);
               },
               child: Container(
                margin: const EdgeInsets.only(bottom: 16),
                 width: MediaQuery.of(context).size.width,
                 padding: const EdgeInsets.symmetric( horizontal: 10,vertical: 10),
                 decoration: BoxDecoration(
                  //  color:  Colors.white,
                   border: Border.all(color: Colors.white,width: 0.5),
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Row(
                  children: [
                    SizedBox(
                              height: 60,
                              width: 60,
                              child: Image.asset('assets/profile_pic.png'),
                              
                              // Image.network(
                              //   userVm.user?.profileImage ?? '',
                              //   fit: BoxFit.fill,
                              // ),
                            ),
                    const Expanded(
                      child: Center(
                        child: Text(
                         "Squad_1",
                         style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w500),
                                         ),
                      ),
                    ),
                  ],
                 ),
               ),
                      );
                  }) ,),                
            ],
          ),
        ), 
        ),
    );
  }
}
