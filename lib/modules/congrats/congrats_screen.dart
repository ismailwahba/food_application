// ignore_for_file: depend_on_referenced_packages, unnecessary_import, implementation_imports, prefer_const_constructors, unused_import

import 'package:flutter/src/widgets/container.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:ecommerce_app/modules/login/login_screen.dart';
import 'package:food_app/modules/home/home_screen.dart';

import '../../shared/hexcolor/hexcolor.dart';
import '../component/components.dart';
// import 'package:flutter_projectone/main.dart';
// import 'package:page_transition/page_transition.dart';

// import '../../models/bottomnav/bottomnav_screen.dart';

class Congrats extends StatefulWidget {
  const Congrats({super.key});

  @override
  State<Congrats> createState() => _CongratsState();
}

class _CongratsState extends State<Congrats> {
  // var gradient;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/Pattern.png"),
          fit: BoxFit.cover,
        )),
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "images/congrats.png",
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [HexColor('#53E88B'), HexColor('#15BE77')],
                      ).createShader(bounds);
                    },
                    child: Text(
                      'Congrats!',
                      style: TextStyle(
                        fontSize: 30.0.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Your Profile Ready To Use",
                    style: TextStyle(
                        fontSize: 23.sp,
                        letterSpacing: 1.0.w,
                        fontFamily: 'Flu',
                        color: HexColor('#09051C'),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 200.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  defaultButton(
                      text: "Try Order",
                      width: ScreenUtil().setWidth(157),
                      height: ScreenUtil().setHeight(57))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
