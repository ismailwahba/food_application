// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';
import '../component/components.dart';

class Upload extends StatefulWidget {
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
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
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          "images/Icon Back.png",
                          // height: ScreenUtil().setHeight(100),
                          // width: 50,
                          // height: 50,
                        ),
                      )
                      // Image.asset("images/Patternbio.png")
                    ],
                  ),
                  SizedBox(height: 25.h),
                  Row(
                    children: [
                      Text(
                        "Upload Your Photo Profile",
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
                        "This data will be displayed in your account  \n profile  for security",
                        style: TextStyle(
                          fontSize: 12.0.sp,
                          color: HexColor('#09051C'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  defaultPayment(
                      url: "images/Gallery Icon.png",
                      width: ScreenUtil().setWidth(325),
                      height: ScreenUtil().setHeight(129)),
                  SizedBox(
                    height: 15.h,
                  ),
                  defaultPayment(
                      url: "images/Camera Icon.png",
                      width: ScreenUtil().setWidth(325),
                      height: ScreenUtil().setHeight(129))
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
