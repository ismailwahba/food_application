// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, avoid_print, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';

Widget defaultForm({
  required String hintText,
  required String? Function(String?)? validator,
    required var controller,

}) =>
    Container(
      // width: ScreenUtil().setWidth(325),
      // height: ScreenUtil().setHeight(57),
      child: TextFormField(
          // controller: emailController,
          keyboardType: TextInputType.text,
          controller:controller ,
          decoration: InputDecoration(
            // border: BorderRadius.circular(20),
            contentPadding: EdgeInsets.all(20),
            filled: true,
            fillColor: HexColor('#ffffff'),
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 12.sp, color: HexColor('#3B3B3B')),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                    // style: BorderStyle.none,
                    color: Color.fromARGB(176, 168, 159, 159),
                    width: .5)),
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
          validator: validator ),
    );

Widget defaultButton({required String url, required String text}) => Container(
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
