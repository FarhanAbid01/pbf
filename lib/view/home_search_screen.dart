import 'package:flutter/material.dart';

class HomeSearchScreen extends StatefulWidget {
  const HomeSearchScreen({super.key});

  @override
  State<HomeSearchScreen> createState() => _HomeSearchScreenState();
}

class _HomeSearchScreenState extends State<HomeSearchScreen> {
  TextEditingController txt = TextEditingController();

  @override
  void dispose() {
    txt.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey.shade200.withOpacity(0.5),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.close,color: Color(0xffC1C1C1),)),
              Spacer(),
             Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          controller: txt,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: "",
                            
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),
                      Spacer(),
                      Center(
                        child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.50,
                          padding: const EdgeInsets.symmetric( horizontal: 20,vertical: 10),
                          decoration: BoxDecoration(
                            color: const Color(0xff1964A6),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Text(
                              "Continue",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      ),
          ],
        ),
      ),
    );
  }
}