// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/shared/hexcolor/hexcolor.dart';

import '../component/components.dart';

class ForGetPassword extends StatefulWidget {
  const ForGetPassword({super.key});

  @override
  State<ForGetPassword> createState() => _ForGetPasswordState();
}

class _ForGetPasswordState extends State<ForGetPassword> {
  @override
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var mobileController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // alignment: Alignment.topRight,
        decoration: BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.topRight,
          image: AssetImage("images/Patternbio.png"),
          // fit: BoxFit.cover,
        )),
        child: SafeArea(
            child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          // iconSize: 30,
                          onPressed: () {},
                          icon: Image.asset(
                            "images/Icon Back.png",
                            // height: ScreenUtil().setHeight(100),
                            // width: 50,
                          )),
                      // Image.asset("images/Patternbio.png")
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      Text(
                        "Forget Password?",
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
                        "Select Which contact details should we\nUse to reset your password ",
                        style: TextStyle(
                          fontSize: 12.0.sp,
                          height: 1.8,

                          color: HexColor('#09051C'),
                          // fontWeight: FontWeight.bold
                        ),

                        // textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        width: ScreenUtil().setWidth(347),
                        height: ScreenUtil().setHeight(81),
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
                          children: [
                            Image.asset("images/sms.png"),
                            SizedBox(
                              width: 20.sp,
                            ),
                            Image.asset("images/Number.png")
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 15.0.h,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        width: ScreenUtil().setWidth(347),
                        height: ScreenUtil().setHeight(81),
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
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("images/Email.png"),
                            SizedBox(
                              width: 20.sp,
                            ),
                            Image.asset("images/mail.png")
                          ],
                        )),
                  ),
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
