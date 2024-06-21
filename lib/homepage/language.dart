import'package:flutter/material.dart';
import 'package:live_easy/color/color.dart';
import 'package:live_easy/homepage/mobilenumber.dart';
class language extends StatefulWidget {
  const language({super.key});

  @override
  State<language> createState() => _languageState();
}

class _languageState extends State<language> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
       child: Column(
       
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images.png',height: size.height*0.5,width: size.width*0.5,)),
          Center(child: Text("Please select your language",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
          Center(child: Text("You can change the language at any time",maxLines: 2)),
          SizedBox(height: size.height*0.02,),
          SizedBox(
            width: size.width*0.6,
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                hintText: "English"
              ),
            ),
          ),
          SizedBox(height: size.height*0.02,),
          GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>mobile()));
            },
            child: Container(
              height: size.height*0.1,
              width: size.width*0.9,
              decoration: BoxDecoration(color: color,),
              child: Center(child: Text("NEXT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
            ),
          ),
          
        ],
       ),
     ), 
    );
  }
}