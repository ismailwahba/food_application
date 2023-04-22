// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';
import '../component/components.dart';

class Shipping extends StatefulWidget {
  const Shipping({super.key});

  @override
  State<Shipping> createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
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
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
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
                        "Shipping",
                        style: TextStyle(
                            fontSize: 25.0.sp,
                            color: HexColor('#09051C'),
                            fontWeight: FontWeight.bold),

                        // textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    // alignment: Alignment.center,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                    // width: ScreenUtil().setWidth(335),
                    // height: ScreenUtil().setHeight(108),
                    decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(22.r),
                        color: HexColor('#FFFFFF'),
                        boxShadow: [
                          BoxShadow(
                            color: HexColor('#125A6CEA'),
                            spreadRadius: 9,
                            blurRadius: 9,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Deliver To",
                              style: TextStyle(
                                  color: HexColor('#3B3B3B').withOpacity(.30),
                                  fontSize: 14.sp,
                                  letterSpacing: .5),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    colors: [
                                      HexColor('#53E88B'),
                                      HexColor('#15BE77')
                                    ],
                                  ).createShader(bounds);
                                },
                                child: Text(
                                  'Edit',
                                  style: TextStyle(
                                    fontSize: 14.0.sp,
                                    letterSpacing: .5,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/Icon Location.png',
                              // width: 70.w,
                              height: 33.h,
                              width: 33.w,
                              fit: BoxFit.fitHeight,

                              // width: ScreenUtil().setWidth(100),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              "8502 Preston Rd. Inglewood,\nMaine 98380",
                              style: TextStyle(
                                  fontSize: 15.0.sp,
                                  letterSpacing: .5.w,
                                  color: HexColor('#09051C'),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    // alignment: Alignment.center,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                    // width: ScreenUtil().setWidth(335),
                    // height: ScreenUtil().setHeight(108),
                    decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(22.r),
                        color: HexColor('#FFFFFF'),
                        boxShadow: [
                          BoxShadow(
                            color: HexColor('#125A6CEA'),
                            spreadRadius: 9,
                            blurRadius: 9,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Deliver To",
                              style: TextStyle(
                                  color: HexColor('#3B3B3B').withOpacity(.30),
                                  fontSize: 14.sp,
                                  letterSpacing: .5),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'images/Icon Location.png',
                              height: 33.h,
                              fit: BoxFit.fitHeight,
                              // width: ScreenUtil().setWidth(100),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              "4517 Washington Ave. Manchester,\nKentucky 39495",
                              style: TextStyle(
                                  fontSize: 14.0.sp,
                                  color: HexColor('#3B3B3B'),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    colors: [
                                      HexColor('#53E88B'),
                                      HexColor('#15BE77')
                                    ],
                                  ).createShader(bounds);
                                },
                                child: Container(
                                  margin: EdgeInsets.only(left: 40.w),
                                  child: Text(
                                    'Set Location',
                                    // textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 14.0.sp,
                                      letterSpacing: .5,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
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
