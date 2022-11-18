import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../auth/login.dart';
import '../auth/registration.dart';
import '../homepage/home_page.dart';


class AnimatedSplashScreen extends StatefulWidget {
  const AnimatedSplashScreen({Key? key}) : super(key: key);

  @override
  AnimatedSplashScreenState createState() => AnimatedSplashScreenState();
}

class AnimatedSplashScreenState extends State<AnimatedSplashScreen>
    with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<double> animation;
  var token, phone, password, type;


  startTime() async {
    var duration = const Duration(milliseconds: 3000);
    return Timer(duration, _loadUserInfo);
  }

  _loadUserInfo() async {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const RegistrationScreen()), (route) => false);
  }


  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(seconds: 1));
    animation = CurvedAnimation(parent: animationController, curve: Curves.easeOut);
    animation.addListener(() => setState(() {}));
    animationController.forward();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.center,
            colors: [
              Color(0xffFF1C62),
              Color(0xff040268),
            ],
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child:Text.rich(
                      TextSpan(
                        text: 'A product of ',
                        style: GoogleFonts.ubuntu(
                          fontSize: 15,
                          // fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                            text: " GrowTech",
                            style: GoogleFonts.ubuntu(
                              // color: Color(0xffddd),
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.pinkAccent,

                              // fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                ),

              ],),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/splash.jpg",
                  height: animation.value * 250,
                  width: animation.value * 250,
                ),
                Text(
                  "Welcome to Treding",
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}