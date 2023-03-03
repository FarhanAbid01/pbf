import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pbf_app/view/squad_settings_screen.dart';

import 'home_search_screen.dart';

class CreateSquadScreen extends StatefulWidget {
  const CreateSquadScreen({Key? key}) : super(key: key);

  @override
  State<CreateSquadScreen> createState() => _CreateSquadScreenState();
}

class _CreateSquadScreenState extends State<CreateSquadScreen> {
   TextEditingController txt = TextEditingController();

  @override
  void dispose() {
    txt.dispose();
    super.dispose();
  }
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
             const Center(child: Text("Create a squad name")),  
             const SizedBox(height: 10,),
             Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          controller: txt,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "squad name",
                            
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),    
                      // const SizedBox(height: 20,),
                       const SizedBox(height: 10,),
             
             const Center(child: Text("Upload squad logo")),
             SizedBox(height: 20,),
             Center(
                        child: GestureDetector(
                        onTap: (){
                          // Navigator.pop(context);
                        },
                        child: Container(
                          width: 150,
                          height: 120,
                          // padding: const EdgeInsets.symmetric( horizontal: 10,vertical: 10),
                          decoration: BoxDecoration(
                            // color: const Color(0xff1964A6),
                            border: Border.all(color: Colors.white,width: 0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          // child: const Center(
                          //   child: Text(
                          //     "Join Squad",
                          //     style: TextStyle(color: Colors.white, fontSize: 20),
                          //   ),
                          // ),
                        ),
                      ),
                      ),
             SizedBox(height: 30,),
              const Center(child: Text("Upload squad banner")),
             SizedBox(height: 10,),
             Expanded(
               child: Center(
                          child: GestureDetector(
                          onTap: (){
                            // Navigator.pop(context);
                            
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            //height: 120,
                            // padding: const EdgeInsets.symmetric( horizontal: 10,vertical: 10),
                            decoration: BoxDecoration(
                              // color: const Color(0xff1964A6),
                              border: Border.all(color: Colors.white,width: 0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // child: const Center(
                            //   child: Text(
                            //     "Join Squad",
                            //     style: TextStyle(color: Colors.white, fontSize: 20),
                            //   ),
                            // ),
                          ),
                        ),
                        ),
             ),

            SizedBox(height: 20,),          

             Center(
                        child: GestureDetector(
                        onTap: (){
                          // Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SquadSettingsScreen() ));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.50,
                          padding: const EdgeInsets.symmetric( horizontal: 20,vertical: 10),
                          decoration: BoxDecoration(
                            color: const Color(0xff1964A6),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              "Continue",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      ),     
            ],
          ),
        ), 
        ),
    );
  }
}
