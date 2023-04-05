// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "images/Illustartion.png",
              // fit: BoxFit.cover,
            ),
            SizedBox(
              height: 50.0.h,
            ),
            Text(
              "Find Your ComFort \n Food Here ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0.sp,
                letterSpacing: 1.0.w,
                color: HexColor('#09051C'),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0.h,
            ),
            Text(
              "Here You Can find a chef dish for every \n taste and color .Enjoy!",
              textAlign: TextAlign.center,
              // maxLines: 3,
              // overflow: TextOverflow.ellipsis,
              // softWrap: false,
              style: TextStyle(
                color: HexColor('#000000'),
                fontSize: 12.0.sp,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 7.0.h,
            ),
            SizedBox(
              height: 30.0.h,
            ),
            Container(
              width: ScreenUtil().setWidth(157),
              height: ScreenUtil().setHeight(57),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [HexColor('#53E88B'), HexColor('#15BE77')],
                ),
              ),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 16.0.sp),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
