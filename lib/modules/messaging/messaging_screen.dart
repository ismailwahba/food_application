import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/modules/component/components.dart';

import '../../shared/hexcolor/hexcolor.dart';

class Messaging extends StatefulWidget {
  const Messaging({super.key});

  @override
  State<Messaging> createState() => _MessagingState();
}

class _MessagingState extends State<Messaging> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage("images/Pattern messaging.png"),
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.h),
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
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'images/Photo Profile.png',
                                height: 87.h,
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
                                  Row(
                                    children: [
                                      Container(
                                        width: ScreenUtil().setWidth(6),
                                        height: ScreenUtil().setHeight(6),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              HexColor('#53E88B'),
                                              HexColor('#15BE77')
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Text(
                                        "Online",
                                        style: TextStyle(
                                            letterSpacing: 1.1,
                                            color: HexColor('#3B3B3B')
                                                .withOpacity(.30),
                                            fontSize: 14.sp),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                              width: ScreenUtil().setWidth(50),
                              height: ScreenUtil().setHeight(50),
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(20.r),
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    HexColor('#53E88B').withOpacity(.10),
                                    HexColor('#15BE77').withOpacity(.10)
                                  ],
                                ),
                              ),
                              child: Image.asset("images/Call logo.png"))
                        ],
                      )),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: ScreenUtil().setWidth(129),
                        height: ScreenUtil().setHeight(41),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(16.r),
                            boxShadow: [
                              BoxShadow(
                                color: HexColor('#125A6CEA'),
                                spreadRadius: 9,
                                blurRadius: 9,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                        child: Text(
                          "Just To Order",
                          style: TextStyle(
                              color: HexColor('#181818'), fontSize: 14.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: ScreenUtil().setWidth(265),
                        height: ScreenUtil().setHeight(41),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                HexColor('#53E88B'),
                                HexColor('#15BE77')
                              ],
                            ),
                            borderRadius: BorderRadius.circular(16.r),
                            boxShadow: [
                              BoxShadow(
                                color: HexColor('#125A6CEA'),
                                spreadRadius: 9,
                                blurRadius: 9,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                        child: Text(
                          "Okay,for what level of spiciness?",
                          style: TextStyle(
                              color: HexColor('#FFFFFF').withOpacity(.80),
                              fontSize: 14.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: ScreenUtil().setWidth(185),
                        height: ScreenUtil().setHeight(41),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(16.r),
                            boxShadow: [
                              BoxShadow(
                                color: HexColor('#125A6CEA'),
                                spreadRadius: 9,
                                blurRadius: 9,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                        child: Text(
                          "Okay, wait a minute 👍",
                          style: TextStyle(
                              color: HexColor('#181818'), fontSize: 14.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: ScreenUtil().setWidth(265),
                        height: ScreenUtil().setHeight(41),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                HexColor('#53E88B'),
                                HexColor('#15BE77')
                              ],
                            ),
                            borderRadius: BorderRadius.circular(16.r),
                            boxShadow: [
                              BoxShadow(
                                color: HexColor('#125A6CEA'),
                                spreadRadius: 9,
                                blurRadius: 9,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ]),
                        child: Text(
                          "Okay I'm waiting  👍",
                          style: TextStyle(
                              color: HexColor('#FFFFFF').withOpacity(.80),
                              fontSize: 14.sp),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                          child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          // border: BorderRadius.circular(20),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30.w, vertical: 30.h),
                          filled: true,
                          fillColor: HexColor('#ffffff'),
                          hintText: "Okay I'm waiting  👍",
                          hintStyle: TextStyle(
                              color: HexColor('#181818').withOpacity(.80),
                              fontSize: 14.sp),
                          suffixIcon: Image.asset('images/Icon Send.png'),
                          focusColor: Colors.green,
                          iconColor: Colors.green,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  // style: BorderStyle.none,
                                  color: Color.fromARGB(176, 168, 159, 159),
                                  width: .3)),
                          // focusedBorder: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(5),
                          //   borderSide: BorderSide(
                          //     color: Colors.blue,
                          //   ),
                          // )
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
