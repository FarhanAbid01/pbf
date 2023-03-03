import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_search_screen.dart';

class SquadSettingsScreen extends StatefulWidget {
  const SquadSettingsScreen({Key? key}) : super(key: key);

  @override
  State<SquadSettingsScreen> createState() => _SquadSettingsScreenState();
}

class _SquadSettingsScreenState extends State<SquadSettingsScreen> {
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
             const Center(child: Text("Squad Settings")),  
             const SizedBox(height: 20,),
               GestureDetector(
               onTap: (){
                 // Navigator.pop(context);
                 showModalBottomSheet(
                   isScrollControlled: true,
                  context: context, builder: (context){
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.70,
                      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                      child: Column(
                        children: [
                            const Center(child: Text("Invite contacts to your squad",style: TextStyle(
                              color: Colors.white,
                            ),)),  
                            const SizedBox(height: 20,),
                            Expanded(child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 20,
                              itemBuilder: (context,index){
                                return Row(
                                  children: [
                                    SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset('assets/profile_pic.png'),
                              
                              // Image.network(
                              //   userVm.user?.profileImage ?? '',
                              //   fit: BoxFit.fill,
                              // ),
                            ), const SizedBox(width: 10,),
                            const Text("Francis Longo",style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),), 
                                  ],
                                );
                              })),
                              const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: (){},
                                  child: const Text("Add",style: TextStyle(
                                                              color: Colors.white,
                                                              fontSize: 16,
                                                            ),),
                                ), 
                             GestureDetector(
                              onTap: (){},
                               child: const Text("Cancel",style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                                         ),),
                             ), 
                              ],
                            ),
                        ],
                      ),
                    );
                 });
               },
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 padding: const EdgeInsets.symmetric( horizontal: 20,vertical: 10),
                 decoration: BoxDecoration(
                  //  color:  Colors.white,
                  border: Border.all(color: Colors.white,width: 0.5),
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child: const Center(
                   child: Text(
                     "Invite player",
                     style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w300),
                   ),
                 ),
               ),
                      ),     
               const SizedBox(height: 20,),
               GestureDetector(
               onTap: (){
                 // Navigator.pop(context);
                 showModalBottomSheet(
                   isScrollControlled: true,
                  context: context, builder: (context){
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.70,
                      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                      child: Column(
                        children: [
                            const Center(child: Text("Remove player from your squad",style: TextStyle(
                              color: Colors.white,
                            ),)),  
                            const SizedBox(height: 20,),
                            Expanded(child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 20,
                              itemBuilder: (context,index){
                                return Row(
                                  children: [
                                    SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset('assets/profile_pic.png'),
                              
                              // Image.network(
                              //   userVm.user?.profileImage ?? '',
                              //   fit: BoxFit.fill,
                              // ),
                            ), const SizedBox(width: 10,),
                            const Text("Francis Longo",style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),), 
                                  ],
                                );
                              })),
                              const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: (){},
                                  child: const Text("Remove",style: TextStyle(
                                                              color: Colors.white,
                                                              fontSize: 16,
                                                            ),),
                                ), 
                             GestureDetector(
                              onTap: (){},
                               child: const Text("Cancel",style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                                         ),),
                             ), 
                              ],
                            ),
                        ],
                      ),
                    );
                 });
               },
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 padding: const EdgeInsets.symmetric( horizontal: 20,vertical: 10),
                 decoration: BoxDecoration(
                  //  color:  Colors.white,
                  border: Border.all(color: Colors.white,width: 0.5),
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child: const Center(
                   child: Text(
                     "Remove player",
                     style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w300),
                   ),
                 ),
               ),
                      ),  
                      const SizedBox(height: 20,),
               GestureDetector(
               onTap: (){
                 // Navigator.pop(context);
               },
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 padding: const EdgeInsets.symmetric( horizontal: 20,vertical: 10),
                 decoration: BoxDecoration(
                  //  color:  Colors.white,
                  border: Border.all(color: Colors.white,width: 0.5),
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child: const Center(
                   child: Text(
                     "Change squad style",
                     style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w300),
                   ),
                 ),
               ),
                      ), 
                      const SizedBox(height: 20,),
               GestureDetector(
               onTap: (){
                 // Navigator.pop(context);
               },
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 padding: const EdgeInsets.symmetric( horizontal: 20,vertical: 10),
                 decoration: BoxDecoration(
                  //  color:  Colors.white,
                   border: Border.all(color: Colors.white,width: 0.5),
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child: const Center(
                   child: Text(
                     "Delete squad",
                     style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.w300),
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
