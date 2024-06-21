import'package:flutter/material.dart';
import 'package:live_easy/color/color.dart';
import 'package:live_easy/homepage/verifyphone.dart';
class mobile extends StatefulWidget {
  const mobile({super.key});

  @override
  State<mobile> createState() => _mobileState();
}

class _mobileState extends State<mobile> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Please enter your mobile number",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text("You'll receive a 6 digit code ",style: TextStyle(color: Colors.grey[700]),),
            Text("to verify next",style: TextStyle(color: Colors.grey[700])),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              hintText: " mobile Number",
              prefixText:"+91  -" ,
              prefixIcon: Image.asset('assets/indian.png',height: size.height*0.02,width: size.width*0.03,)
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: size.height*0.02,),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>verify()));
              },
              child: Container(
                height: size.height*0.1,
                width: size.width*0.9,
                decoration: BoxDecoration(color: color),
                child:Center(child: Text("CONTINUE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),)) ,
              ),
            )
          ],
        ),
      ),
    );
  }
}