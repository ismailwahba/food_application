// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';
import '../component/components.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                        "Notification",
                        style: TextStyle(
                            fontSize: 25.0.sp,
                            color: HexColor('#09051C'),
                            fontWeight: FontWeight.bold),

                        // textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    // width: ScreenUtil().setWidth(347),
                    // height: ScreenUtil().setHeight(105),
                    decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(20.r),
                        color: HexColor('#FFFFFF'),
                        boxShadow: [
                          BoxShadow(
                            color: HexColor('#125A6CEA'),
                            spreadRadius: 9,
                            blurRadius: 9,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/checked (1) 1.png',
                          // width: 50.w,
                          height: 50.h,
                          fit: BoxFit.fitHeight,
                          // width: ScreenUtil().setWidth(100),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your order has been taken by\nthe driver",
                              style: TextStyle(
                                  fontSize: 15.0.sp,
                                  color: HexColor('#09051C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Text(
                              "Recently",
                              style: TextStyle(
                                  fontSize: 15.0.sp,
                                  color: HexColor('#3B3B3B').withOpacity(.30),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    // width: ScreenUtil().setWidth(347),
                    // height: ScreenUtil().setHeight(105),
                    decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(20.r),
                        color: HexColor('#FFFFFF'),
                        boxShadow: [
                          BoxShadow(
                            color: HexColor('#125A6CEA'),
                            spreadRadius: 9,
                            blurRadius: 9,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/money 1 (1).png',
                          // width: 50.w,
                          height: 50.h,
                          fit: BoxFit.fitHeight,
                          // width: ScreenUtil().setWidth(100),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Topup for \$100 was successful",
                              style: TextStyle(
                                  fontSize: 15.0.sp,
                                  color: HexColor('#09051C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Text(
                              "10.00 Am",
                              style: TextStyle(
                                  fontSize: 15.0.sp,
                                  color: HexColor('#3B3B3B').withOpacity(.30),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    // width: ScreenUtil().setWidth(347),
                    // height: ScreenUtil().setHeight(105),
                    decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(20.r),
                        color: HexColor('#FFFFFF'),
                        boxShadow: [
                          BoxShadow(
                            color: HexColor('#125A6CEA'),
                            spreadRadius: 9,
                            blurRadius: 9,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/x-button 1.png',
                          // width: 50.w,
                          height: 50.h,
                          fit: BoxFit.fitHeight,
                          // width: ScreenUtil().setWidth(100),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your order has been canceled",
                              style: TextStyle(
                                  fontSize: 15.0.sp,
                                  color: HexColor('#09051C'),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Text(
                              "22 Juny 2021",
                              style: TextStyle(
                                  fontSize: 15.0.sp,
                                  color: HexColor('#3B3B3B').withOpacity(.30),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),

                  // SizedBox(
                  //   height: 15.h,
                  // ),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
