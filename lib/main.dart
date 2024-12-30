import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebasedemo/B%20and%20C.dart';
import 'package:firebasedemo/Bajaj.dart';
import 'package:firebasedemo/Hero.dart';
import 'package:firebasedemo/Honda.dart';
import 'package:firebasedemo/Kawasaki.dart';
import 'package:firebasedemo/Royal%20enfield.dart';
import 'package:firebasedemo/Tvs.dart';
import 'package:firebasedemo/loginpage.dart';
import 'package:firebasedemo/signup.dart';
import 'package:firebasedemo/splash.dart';
import 'package:firebasedemo/yamaha.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(items: [
        TabItem(icon: Icon(Icons.home)),
        TabItem(icon: Icon(Icons.notifications)),
        TabItem(icon: Icon(Icons.favorite_border)),
        TabItem(icon: Icon(Icons.person_pin_sharp)),
      ],
      activeColor: Colors.blueGrey,
        backgroundColor: Colors.black87,
      ),
    );
  }
}
