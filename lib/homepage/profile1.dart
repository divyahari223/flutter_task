import 'package:flutter/material.dart';
class Profile1 extends StatefulWidget {
  const Profile1({super.key});

  @override
  State<Profile1> createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("PLEASE SELECT YOUR PROFILE",style: TextStyle(fontWeight: FontWeight.bold,),),
            Container(
              height: size.height*0.1,
              width: size.width*0.9,
              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 1.0, 
                                      ),
                                ),
                      ),),
                  ),
                ],
              ),),
          ],
        ),
      ),
    );
  }
}