// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';
import '../component/components.dart';

class PaymentTwo extends StatefulWidget {
  const PaymentTwo({super.key});

  @override
  State<PaymentTwo> createState() => _PaymentTwoState();
}

class _PaymentTwoState extends State<PaymentTwo> {
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
                        "Payment Method",
                        style: TextStyle(
                            fontSize: 25.0.sp,
                            color: HexColor('#09051C'),
                            fontWeight: FontWeight.bold),

                        // textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  SizedBox(
                    width: ScreenUtil().setWidth(335),
                    height: ScreenUtil().setHeight(73),
                    child: Container(
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "images/paypal.png",
                            // width: ScreenUtil().setWidth(100),
                          ),
                          Text('2121 6352 8465 ****')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(335),
                    height: ScreenUtil().setHeight(73),
                    child: Container(
                      decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(20.r),
                          color: HexColor('#F6F6F6'),
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "images/visa.png",
                            // width: ScreenUtil().setWidth(100),
                            height: 60.h,
                            fit: BoxFit.fitHeight,
                          ),
                          Text('2121 6352 8465 ****')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(335),
                    height: ScreenUtil().setHeight(73),
                    child: Container(
                      decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(20.r),
                          color: HexColor('#F6F6F6'),
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "images/Payoneer.png",
                            height: 32.h,
                            fit: BoxFit.fitHeight,
                            // width: ScreenUtil().setWidth(100),
                          ),
                          Text('2121 6352 8465 ****')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
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
