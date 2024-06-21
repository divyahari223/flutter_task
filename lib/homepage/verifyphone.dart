import 'package:flutter/material.dart';
import 'package:live_easy/color/color.dart';
import 'package:live_easy/homepage/profile1.dart';
class verify extends StatefulWidget {
  const verify({super.key});

  @override
  State<verify> createState() => _verifyState();
}

class _verifyState extends State<verify> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Verify Phone",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "Code is sent to 8078113356",
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(height: 20), // Add some spacing between text and list
            SizedBox(
              height: size.height * 0.1, // Fixed height for the horizontal list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height * 0.04,
                      width: size.width * 0.09,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 85, 156, 213),
                        
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Text("Didn't receive the code?"),
                TextButton(onPressed: (){}, child: Text("Request Again",style: TextStyle(color: Colors.black),)),
                
              ],
            ),
             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile1()));
              },
               child: Container(
                height: size.height*0.1,
                width: size.width*0.9,
                decoration: BoxDecoration(color: color),
                child:Center(child: Text("VERIFY and CONTINUE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),)) ,
                           ),
             )
          ],
        ),
      ),
    );
  }
}