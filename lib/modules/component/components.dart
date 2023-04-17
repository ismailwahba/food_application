// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, avoid_print, unnecessary_import, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';

Widget defaultForm(
        {required String hintText,
        Widget? prefix,
        Widget? suffix,
        required String? Function(String?)? validator,
        required var controller,
        EdgeInsetsGeometry? contentPadding,
        double? width,
        double? height,
        TextStyle? hintStyle}) =>
    Container(
      width: width,
      height: height,
      child: TextFormField(
          // controller: emailController,
          keyboardType: TextInputType.text,
          controller: controller,
          decoration: InputDecoration(
            // border: BorderRadius.circular(20),
            contentPadding: contentPadding,
            filled: true,
            fillColor: HexColor('#ffffff'),
            hintText: hintText,
            hintStyle: hintStyle,
            prefixIcon: prefix,
            focusColor: Colors.green,
            iconColor: Colors.green,
            suffixIcon: suffix,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
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
          onChanged: (String val) {
            print(val);
          },
          onFieldSubmitted: (String val) {
            print(val);
          },
          validator: validator),
    );

Widget defaultButtonSocial({required String url, required String text}) =>
    Container(
      width: ScreenUtil().setWidth(152),
      height: ScreenUtil().setHeight(57),
      decoration: BoxDecoration(
          color: HexColor('#FFFFFF'),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2.0, color: HexColor('#F4F4F4'))),
      child: MaterialButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(url),
              Text(
                text,
                style: TextStyle(
                  fontSize: 14.0.sp,
                  color: HexColor('#09051C'),
                ),
              )
            ],
          )),
    );

Widget defaultButton(
        {required String text,
        TextStyle? textStyle,
        double? width,
        double? height}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [HexColor('#53E88B'), HexColor('#15BE77')],
        ),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16.0.sp),
        ),
      ),
    );

Widget defaultPayment({
  required String url,
  double? width,
  double? height,
}) =>
    SizedBox(
      width: width,
      height: height,
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
                offset: Offset(0, 3), // changes position of shadow
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              url,
              // width: ScreenUtil().setWidth(100),
            ),
          ],
        ),
      ),
    );

Widget defaultSearchForm() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: ScreenUtil().setWidth(250),
          child: TextFormField(
            // controller: emailController,
            keyboardType: TextInputType.text,
            // controller: controller,
            decoration: InputDecoration(
                filled: true,
                fillColor: HexColor('#F9A84D').withOpacity(.05),
                hintText: "what do you want to order?",
                hintStyle: TextStyle(
                  color: HexColor('#DA6317').withOpacity(.40),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: HexColor('#F9A84D'),
                  size: 24.w,
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                        // style: BorderStyle.none,
                        color: Color.fromARGB(45, 168, 159, 159),
                        width: .3.w)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    color: HexColor('#F9A84D'),
                  ),
                )),
          ),
        ),
        // SizedBox(
        //   width: 5.w,
        // ),
        IconButton(
          iconSize: 50.w,
          onPressed: () {},
          icon: Image.asset(
            "images/Filter Icon.png",
            // height: ScreenUtil().setHeight(100),
            // width: 150.w,
            // height: 165.h,
            // fit: BoxFit.fitHeight,
            // height: 150,
          ),
        )
      ],
    );
