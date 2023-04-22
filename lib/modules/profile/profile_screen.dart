// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage("images/Rectangle 584.png"),
          fit: BoxFit.fitWidth,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
              // width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.r),
                    topLeft: Radius.circular(40.r)),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: ScreenUtil().setWidth(108),
                          height: ScreenUtil().setHeight(44),
                          decoration: BoxDecoration(
                              // shape: BoxShape.circle,
                              borderRadius: BorderRadius.circular(15.r),
                              color: HexColor("#FEAD1D").withOpacity(.30)

                              // color: HexColor('#FFFFFF'),
                              ),
                          child: Text(
                            'Member Gold',
                            style: TextStyle(
                              fontSize: 12.0.sp,
                              letterSpacing: .5,
                              fontWeight: FontWeight.bold,
                              color: HexColor("#FEAD1D"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Anam Wusono",
                            style: TextStyle(
                                fontSize: 27.sp,
                                color: HexColor('#09051C'),
                                fontWeight: FontWeight.bold)),
                        Image.asset("images/Edit Icon profile.png")
                      ],
                    ),
                    Row(
                      children: [
                        Text("anamwp66@gmail.com",
                            style: TextStyle(
                                color: HexColor("#3B3B3B").withOpacity(.30),
                                fontSize: 15.sp))
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      // alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 15.h),
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/Voucher Icon.png',
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
                            "You Have 3 Voucher",
                            style: TextStyle(
                                fontSize: 15.0.sp,
                                letterSpacing: .5.w,
                                color: HexColor('#09051C'),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Favorite",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: HexColor("#09051C"),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 15.h),
                      // width: ScreenUtil().setWidth(347),
                      // height: ScreenUtil().setHeight(103),
                      decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(20.r),
                          color: HexColor('#FFFFFF'),
                          boxShadow: [
                            BoxShadow(
                              color: HexColor('#125A6CEA'),
                              spreadRadius: 9,
                              blurRadius: 9,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/Menu Photo1.png',
                            // width: 70.w,
                            height: 62.h,
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
                                "Spacy fresh crab",
                                style: TextStyle(
                                    fontSize: 15.0.sp,
                                    color: HexColor('#09051C'),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              // SizedBox(
                              //   height: 7.h,
                              // ),
                              Text(
                                "Waroenk kita",
                                style: TextStyle(
                                    fontSize: 14.0.sp,
                                    color: HexColor('#3B3B3B').withOpacity(.30),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    colors: [
                                      HexColor('#53E88B'),
                                      HexColor('#15BE77')
                                    ],
                                  ).createShader(bounds);
                                },
                                child: Text(
                                  '\$ 35',
                                  style: TextStyle(
                                    fontSize: 19.0.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Container(
                            width: ScreenUtil().setWidth(85),
                            height: ScreenUtil().setHeight(29),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  HexColor('#53E88B'),
                                  HexColor('#15BE77')
                                ],
                              ),
                            ),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                "Buy Again",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0.sp),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 15.h),
                      // width: ScreenUtil().setWidth(347),
                      // height: ScreenUtil().setHeight(103),
                      decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(20.r),
                          color: HexColor('#FFFFFF'),
                          boxShadow: [
                            BoxShadow(
                              color: HexColor('#125A6CEA'),
                              spreadRadius: 9,
                              blurRadius: 9,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/Menu details.png',
                            // width: 70.w,
                            height: 62.h,
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
                                "Spacy fresh crab",
                                style: TextStyle(
                                    fontSize: 15.0.sp,
                                    color: HexColor('#09051C'),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              // SizedBox(
                              //   height: 7.h,
                              // ),
                              Text(
                                "Waroenk kita",
                                style: TextStyle(
                                    fontSize: 14.0.sp,
                                    color: HexColor('#3B3B3B').withOpacity(.30),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    colors: [
                                      HexColor('#53E88B'),
                                      HexColor('#15BE77')
                                    ],
                                  ).createShader(bounds);
                                },
                                child: Text(
                                  '\$ 35',
                                  style: TextStyle(
                                    fontSize: 19.0.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Container(
                            width: ScreenUtil().setWidth(85),
                            height: ScreenUtil().setHeight(29),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  HexColor('#53E88B'),
                                  HexColor('#15BE77')
                                ],
                              ),
                            ),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                "Buy Again",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0.sp),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 15.h),
                      // width: ScreenUtil().setWidth(347),
                      // height: ScreenUtil().setHeight(103),
                      decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(20.r),
                          color: HexColor('#FFFFFF'),
                          boxShadow: [
                            BoxShadow(
                              color: HexColor('#125A6CEA'),
                              spreadRadius: 9,
                              blurRadius: 9,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/Photo Menu profile.png',
                            // width: 70.w,
                            height: 62.h,
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
                                "Spacy fresh crab",
                                style: TextStyle(
                                    fontSize: 15.0.sp,
                                    color: HexColor('#09051C'),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              // SizedBox(
                              //   height: 7.h,
                              // ),
                              Text(
                                "Waroenk kita",
                                style: TextStyle(
                                    fontSize: 14.0.sp,
                                    color: HexColor('#3B3B3B').withOpacity(.30),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    colors: [
                                      HexColor('#53E88B'),
                                      HexColor('#15BE77')
                                    ],
                                  ).createShader(bounds);
                                },
                                child: Text(
                                  '\$ 35',
                                  style: TextStyle(
                                    fontSize: 19.0.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Container(
                            width: ScreenUtil().setWidth(85),
                            height: ScreenUtil().setHeight(29),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  HexColor('#53E88B'),
                                  HexColor('#15BE77')
                                ],
                              ),
                            ),
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                "Buy Again",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0.sp),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
