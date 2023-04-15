// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';
import '../component/components.dart';

class ConfirmOrder extends StatefulWidget {
  const ConfirmOrder({super.key});

  @override
  State<ConfirmOrder> createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
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
                        "Notification",
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                    // width: ScreenUtil().setWidth(350),
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Deliver To"),
                            TextButton(onPressed: () {}, child: Text("Edit"))
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/Icon Location.png',
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
                                      color:
                                          HexColor('#3B3B3B').withOpacity(.30),
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
              Container(
                // height: ScreenUtil().setHeight(150),
                // width: MediaQuery.of(context).size.width * .9,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                decoration: BoxDecoration(

                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(20.r),
                    image: DecorationImage(
                        opacity: .3,
                        image: AssetImage("images/BACKGROUNDorder.png"),
                        fit: BoxFit.cover),
                    // color: HexColor('#FFFFFF'),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [HexColor('#53E88B'), HexColor('#15BE77')],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: HexColor('#125A6CEA'),
                        spreadRadius: 9,
                        blurRadius: 9,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sub-Total",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#FEFEFF'))),
                        Text("120 \$",
                            style: TextStyle(
                                fontSize: 14.sp, color: HexColor('#FEFEFF'))),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Charge",
                            style: TextStyle(
                                fontSize: 14.sp,
                                letterSpacing: .5,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#FEFEFF'))),
                        Text("10 \$",
                            style: TextStyle(
                                fontSize: 14.sp,
                                letterSpacing: .5,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#FEFEFF'))),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discount",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: HexColor('#FEFEFF')),
                        ),
                        Text(
                          "20 \$",
                          style: TextStyle(
                              fontSize: 14.sp,
                              letterSpacing: .5,
                              fontWeight: FontWeight.bold,
                              color: HexColor('#FEFEFF')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: HexColor('#FEFEFF')),
                        ),
                        Text(
                          "150 \$",
                          style: TextStyle(
                              fontSize: 18.sp,
                              letterSpacing: .5,
                              fontWeight: FontWeight.bold,
                              color: HexColor('#FEFEFF')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: ScreenUtil().setWidth(325),
                      // height: ScreenUtil().setHeight(57),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('#FEFEFF')),
                      child: MaterialButton(
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
                            'Place My Order',
                            style: TextStyle(
                              fontSize: 14.0.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                    // defaultButton(
                    //     text: "Search",
                    //     width: ScreenUtil().setWidth(325),
                    //     height: ScreenUtil().setHeight(57))
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
