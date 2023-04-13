// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';
import '../component/components.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.topRight,
          image: AssetImage("images/Patternbio.png"),
          fit: BoxFit.fitWidth,
        )),
        child: SafeArea(
            child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                  SizedBox(height: 25.h),
                  Row(
                    children: [
                      Text(
                        "Upload Your Photo Profile",
                        style: TextStyle(
                            fontSize: 25.0.sp,
                            color: HexColor('#09051C'),
                            fontWeight: FontWeight.bold),

                        // textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      Text(
                        "This data will be displayed in your account  \n profile  for security",
                        style: TextStyle(
                          fontSize: 12.0.sp,
                          color: HexColor('#09051C'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    width: ScreenUtil().setWidth(342),
                    height: ScreenUtil().setHeight(147),
                    // height: height,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 20.h),
                          decoration: BoxDecoration(
                              // shape: BoxShape.circle,
                              borderRadius: BorderRadius.circular(22.r),
                              color: HexColor('#FFFFFF'),
                              boxShadow: [
                                BoxShadow(
                                  color: HexColor('#125A6CEA'),
                                  spreadRadius: 9,
                                  blurRadius: 9,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "images/Pin Logo.png",
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Text("Your Location",
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          color: HexColor('#09051C')))
                                ],
                              ),
                              Container(
                                width: ScreenUtil().setWidth(322),
                                height: ScreenUtil().setHeight(57),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: HexColor('#F6F6F6')),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Set Location",
                                    style: TextStyle(
                                      color: HexColor('#09051C'),
                                      fontSize: 14.0.sp,
                                      letterSpacing: .4,
                                      // height: 16.95
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  defaultButton(
                      text: "Next",
                      width: ScreenUtil().setWidth(157),
                      height: ScreenUtil().setHeight(57))
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
