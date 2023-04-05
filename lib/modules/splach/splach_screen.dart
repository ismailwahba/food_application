// ignore_for_file: depend_on_referenced_packages, unnecessary_import, implementation_imports, prefer_const_constructors, unused_import

import 'package:flutter/src/widgets/container.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:ecommerce_app/modules/login/login_screen.dart';
import 'package:food_app/modules/home/home_screen.dart';

import '../../shared/hexcolor/hexcolor.dart';
// import 'package:flutter_projectone/main.dart';
// import 'package:page_transition/page_transition.dart';

// import '../../models/bottomnav/bottomnav_screen.dart';

class Splach extends StatefulWidget {
  const Splach({super.key});

  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  // var gradient;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 400,
      duration: 3000,
      splash: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/Pattern.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 120.0,
              backgroundImage: AssetImage(
                "images/Logo.png",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [HexColor('#53E88B'), HexColor('#15BE77')],
                      ).createShader(bounds);
                    },
                    child: Text(
                      'FoodNinja',
                      style: TextStyle(
                        fontSize: 40.0.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Deliever Favorite Food",
                    style: TextStyle(
                        fontSize: 11.sp,
                        letterSpacing: 1.0.w,
                        fontFamily: 'Flu',
                        color: HexColor('#09051C'),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      nextScreen: HomeScreen(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
