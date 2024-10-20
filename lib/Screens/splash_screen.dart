import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';
import 'package:flutter_app/screens/onBoarding.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OnBoardingScreen() ,
            )));
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage('images/image2.jpg'), fit: BoxFit.cover)),
        child: const Column(
          children: [
            Icon(
              Icons.shopping_cart,
              size: 70,
              color: Colors.orange,
            ),
            Text('SHOPPING NOW!!!!!!!!', style: TextStyle(
                color: Color(0xffece1e1),
                fontSize: 20.8,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
            ),)
          ],
        ),

      ),
    );
  }
}
