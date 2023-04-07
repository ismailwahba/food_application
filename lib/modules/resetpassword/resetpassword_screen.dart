// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/shared/hexcolor/hexcolor.dart';

import '../component/components.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  var NewPasswordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  // var mobileController = TextEditingController();
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
                        "Reset Your Password\nhere",
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
                        "Select Which Contact details should We\nuseto reset your Password ",
                        style: TextStyle(
                          fontSize: 12.0.sp,
                          height: 1.5,

                          color: HexColor('#09051C'),
                          // fontWeight: FontWeight.bold
                        ),

                        // textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  defaultForm(
                    width: ScreenUtil().setWidth(347),
                    height: ScreenUtil().setHeight(61),
                    controller: NewPasswordController,
                    hintText: 'New Password',
                    hintStyle: TextStyle(
                        fontSize: 14.sp,
                        color: HexColor('#3B3B3B').withOpacity(.4)),
                    suffix: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/Eye Icon.png",
                        // width: ScreenUtil().setWidth(100),
                      ),
                      // iconSize: 50,
                    ),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Name Must Not Be Empty";
                      }
                    },
                  ),
                  SizedBox(
                    height: 15.0.h,
                  ),
                  defaultForm(
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                        fontSize: 14.sp,
                        color: HexColor('#3B3B3B').withOpacity(.4)),
                    suffix: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/Eye Icon.png",
                        // width: ScreenUtil().setWidth(100),
                      ),
                      // iconSize: 50,
                    ),
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Email Must Not Be Empty";
                      }
                    },
                  ),
                  SizedBox(
                    height: 15.0.h,
                  ),
                ],
              ),
              SizedBox(
                height: 15.0.h,
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
