// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';
import '../component/components.dart';

class FindFavoriteFood extends StatefulWidget {
  const FindFavoriteFood({super.key});

  @override
  State<FindFavoriteFood> createState() => _FindFavoriteFoodState();
}

class _FindFavoriteFoodState extends State<FindFavoriteFood> {
  @override
  int indexOne = 0;
  int indexTwo = 0;
  int indexThree = 0;
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
              Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Find Your\nFavorite Food",
                    style: TextStyle(
                        fontSize: 30.0.sp,
                        color: HexColor('#09051C'),
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    // iconSize: 70.w,
                    onPressed: () {},
                    icon: Image.asset(
                      "images/Icon Notifiaction.png",
                      // height: ScreenUtil().setHeight(100),
                      // width: 150.w,
                      height: 130.h,
                      fit: BoxFit.fitHeight,
                      // height: 150,
                    ),
                  )
                ],
              ),
              // SizedBox(
              //   height: 10.h,
              // ),
              defaultSearchForm(),
              // SizedBox(height: 15.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                // width: ScreenUtil().setWidth(347),
                // height: ScreenUtil().setHeight(103),
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
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/Menu Photo1.png',
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
                              color: HexColor('#3B3B3B').withOpacity(.30),
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
                    Container(
                      width: ScreenUtil().setWidth(79),
                      height: ScreenUtil().setHeight(29),
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
                          "Proccess",
                          style:
                              TextStyle(color: Colors.white, fontSize: 12.0.sp),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // SizedBox(
              //   height: 10.h,
              // ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
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
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/green Menu.png',
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
                              color: HexColor('#3B3B3B').withOpacity(.30),
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
                    Container(
                      width: ScreenUtil().setWidth(79),
                      height: ScreenUtil().setHeight(29),
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
                          "Proccess",
                          style:
                              TextStyle(color: Colors.white, fontSize: 12.0.sp),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // SizedBox(
              //   height: 10.h,
              // ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                // width: ScreenUtil().setWidth(350),
                // height: ScreenUtil().setHeight(105),
                decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(20.r),
                    color: HexColor('#F6F6F6'),
                    boxShadow: [
                      BoxShadow(
                        color: HexColor('#125A6CEA'),
                        spreadRadius: 9,
                        blurRadius: 9,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/Menu Photo fav.png',
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
                              color: HexColor('#3B3B3B').withOpacity(.30),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          '\$ 35',
                          style: TextStyle(
                            fontSize: 19.0.sp,
                            fontWeight: FontWeight.bold,
                            color: HexColor('#BEBEBE'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Container(
                      width: ScreenUtil().setWidth(79),
                      height: ScreenUtil().setHeight(29),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('#D9D9D9')),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "Proccess",
                          style:
                              TextStyle(color: Colors.white, fontSize: 12.0.sp),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // SizedBox(
              //   height: 10.h,
              // ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                // width: ScreenUtil().setWidth(350),
                // height: ScreenUtil().setHeight(105),
                decoration: BoxDecoration(
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(20.r),
                    color: HexColor('#F6F6F6'),
                    boxShadow: [
                      BoxShadow(
                        color: HexColor('#125A6CEA'),
                        spreadRadius: 9,
                        blurRadius: 9,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/Menu Photo fav1.png',
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
                              color: HexColor('#3B3B3B').withOpacity(.30),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          '\$ 35',
                          style: TextStyle(
                            fontSize: 19.0.sp,
                            fontWeight: FontWeight.bold,
                            color: HexColor('#BEBEBE'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Container(
                      width: ScreenUtil().setWidth(79),
                      height: ScreenUtil().setHeight(29),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('#D9D9D9')),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "Proccess",
                          style:
                              TextStyle(color: Colors.white, fontSize: 12.0.sp),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  defaultButton(
                    text: "Check Out",
                    width: ScreenUtil().setWidth(325),
                    height: ScreenUtil().setHeight(57),
                  )
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
