import 'dart:async';

import 'package:firebasedemo/homepage.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Homepage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Spare Mart",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 28,color: Colors.white,fontStyle: FontStyle.italic
            ),),
            Text("Ride Strong With",style: TextStyle(
              fontSize: 15,color: Colors.white54,fontWeight: FontWeight.bold,
            ),),
            Text("Quality Bike Parts",style: TextStyle(
              fontSize: 15,color: Colors.white54,fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ),

    );
  }
}
