// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/modules/component/components.dart';

import '../../shared/hexcolor/hexcolor.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "images/Illustration2.png",
              // fit: BoxFit.cover,
            ),
            SizedBox(
              height: 50.0.h,
            ),
            Text(
              "Food Ninja is Where Your\n Comfort Food Lives",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0.sp,
                letterSpacing: 1.0.w,
                color: HexColor('#09051C'),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0.h,
            ),
            Text(
              "Enjoy a fast and smooth food delivery at \n your doorstep",
              textAlign: TextAlign.center,
              // maxLines: 3,
              // overflow: TextOverflow.ellipsis,
              // softWrap: false,
              style: TextStyle(
                color: HexColor('#000000'),
                fontSize: 12.0.sp,
                // fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 7.0.h,
            ),
            SizedBox(
              height: 30.0.h,
            ),
            defaultButton(
                text: "Next",
                width: ScreenUtil().setWidth(157),
                height: ScreenUtil().setHeight(57))
          ],
        ),
      )),
    );
  }
}
