// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/modules/component/components.dart';

import '../../shared/hexcolor/hexcolor.dart';

class CourtneyHenryScreen extends StatefulWidget {
  const CourtneyHenryScreen({super.key});

  @override
  State<CourtneyHenryScreen> createState() => _CourtneyHenryScreenState();
}

class _CourtneyHenryScreenState extends State<CourtneyHenryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage("images/Pattern messaging.png"),
          fit: BoxFit.fitWidth,
        )),
        child: SafeArea(
            child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.sp,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: ScreenUtil().setWidth(50),
                    height: ScreenUtil().setHeight(50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: HexColor('#F9A84D').withOpacity(.20)),
                    child: IconButton(
                        // iconSize: 30,
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: HexColor('#DA6317'),
                        )),
                  ),

                  // Image.asset("images/Patternbio.png")
                ],
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,

                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Image.asset('images/imageprofile.png')],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Country Henry",
                          style: TextStyle(
                              color: HexColor('#09051C'),
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("15.23 Min",
                          style: TextStyle(
                            color: HexColor('#3B3B3B').withOpacity(.30),
                            fontSize: 19.sp,
                            // fontWeight: FontWeight.bold
                          )),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: ScreenUtil().setWidth(78),
                    height: ScreenUtil().setHeight(78),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          HexColor('#53E88B').withOpacity(.10),
                          HexColor('#15BE77').withOpacity(.10)
                        ],
                      ),
                      image: DecorationImage(
                          image: AssetImage("images/Volume Off.png")),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    width: ScreenUtil().setWidth(78),
                    height: ScreenUtil().setHeight(78),
                    decoration: BoxDecoration(
                      color: HexColor('#FF4B4B'),
                      image: DecorationImage(image: AssetImage("images/x.png")),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
