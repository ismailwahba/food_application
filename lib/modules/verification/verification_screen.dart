// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

import '../../shared/hexcolor/hexcolor.dart';
import '../component/components.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Enter 4-digit\nVerification code",
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
                        "Code send to +6282045**** This code will\nexpire in 01:30",
                        style: TextStyle(
                          fontSize: 11.0.sp,
                          color: HexColor('#09051C'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Container(
                      // width: ScreenUtil().setWidth(347),
                      // height: ScreenUtil().setHeight(103),
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          VerificationCode(
                            textStyle: TextStyle(
                                fontSize: 33.0.sp, color: HexColor('#09051C')),
                            keyboardType: TextInputType.number,
                            underlineColor: Colors
                                .amber, // If this is null it will use primaryColor: Colors.red from Theme
                            length: 4,
                            cursorColor: Colors
                                .blue, // If this is null it will default to the ambient
                            // clearAll is NOT required, you can delete it
                            // takes any widget, so you can implement your design
                            clearAll: Padding(
                              padding: const EdgeInsets.all(8.0),
                            ),
                            onCompleted: (String value) {
                              // setState(() {
                              //   _code = value;
                              // }
                              // );
                            },
                            onEditing: (bool value) {
                              // setState(() {
                              //   _onEditing = value;
                              // });
                              // if (!_onEditing) FocusScope.of(context).unfocus();
                            },
                          ),
                        ],
                      ))
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
