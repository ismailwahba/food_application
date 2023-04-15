import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.topRight,
          image: AssetImage("images/Patternbio.png"),
          fit: BoxFit.contain,
        )),
        child: SafeArea(
            child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            child: Column(
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
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Text("Chat",
                        style: TextStyle(
                            color: HexColor('#09051C'),
                            fontSize: 25.sp,
                            fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                    // width: ScreenUtil().setWidth(323),
                    // height: ScreenUtil().setHeight(82),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(

                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(22.r),

                        // color: HexColor('#FFFFFF'),
                        color: HexColor('#FFFFFF'),
                        boxShadow: [
                          BoxShadow(
                            color: HexColor('#125A6CEA'),
                            spreadRadius: 9,
                            blurRadius: 9,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'images/Photo Profile.png',
                              height: 80.h,
                              fit: BoxFit.fitHeight,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Anawmp",
                                  style: TextStyle(
                                      color: HexColor('#09051C'),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(
                                  "Your Order Just Arrived!",
                                  style: TextStyle(
                                      letterSpacing: 1.1,
                                      color:
                                          HexColor('#3B3B3B').withOpacity(.30),
                                      fontSize: 14.sp),
                                ),
                              ],
                            )
                          ],
                        ),
                        Text(
                          "20:00",
                          style: TextStyle(
                            color: HexColor('#3B3B3B').withOpacity(.30),
                            fontSize: 15.sp,
                            letterSpacing: 1.2,
                            // fontWeight: FontWeight.w400
                            // fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                    // width: ScreenUtil().setWidth(323),
                    // height: ScreenUtil().setHeight(82),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(

                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(22.r),

                        // color: HexColor('#FFFFFF'),
                        color: HexColor('#FFFFFF'),
                        boxShadow: [
                          BoxShadow(
                            color: HexColor('#125A6CEA'),
                            spreadRadius: 9,
                            blurRadius: 9,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'images/guy.png',
                              height: 80.h,
                              fit: BoxFit.fitHeight,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Anawmp",
                                  style: TextStyle(
                                      color: HexColor('#09051C'),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(
                                  "Your Order Just Arrived!",
                                  style: TextStyle(
                                      letterSpacing: 1.1,
                                      color:
                                          HexColor('#3B3B3B').withOpacity(.30),
                                      fontSize: 14.sp),
                                ),
                              ],
                            )
                          ],
                        ),
                        Text(
                          "20:00",
                          style: TextStyle(
                            color: HexColor('#3B3B3B').withOpacity(.30),
                            fontSize: 15.sp,
                            letterSpacing: 1.2,
                            // fontWeight: FontWeight.w400
                            // fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                    // width: ScreenUtil().setWidth(323),
                    // height: ScreenUtil().setHeight(82),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(

                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(22.r),

                        // color: HexColor('#FFFFFF'),
                        color: HexColor('#FFFFFF'),
                        boxShadow: [
                          BoxShadow(
                            color: HexColor('#125A6CEA'),
                            spreadRadius: 9,
                            blurRadius: 9,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'images/leslie.png',
                              height: 80.h,
                              fit: BoxFit.fitHeight,
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Anawmp",
                                  style: TextStyle(
                                      color: HexColor('#09051C'),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(
                                  "Your Order Just Arrived!",
                                  style: TextStyle(
                                      letterSpacing: 1.1,
                                      color:
                                          HexColor('#3B3B3B').withOpacity(.30),
                                      fontSize: 14.sp),
                                ),
                              ],
                            )
                          ],
                        ),
                        Text(
                          "20:00",
                          style: TextStyle(
                            color: HexColor('#3B3B3B').withOpacity(.30),
                            fontSize: 15.sp,
                            letterSpacing: 1.2,
                            // fontWeight: FontWeight.w400
                            // fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
