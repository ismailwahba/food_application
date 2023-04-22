// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';
import '../component/components.dart';

class RainBow extends StatefulWidget {
  const RainBow({super.key});

  @override
  State<RainBow> createState() => _RainBowState();
}

class _RainBowState extends State<RainBow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage("images/Photo Menurain.png"),
          fit: BoxFit.fitWidth,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
              // width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.r),
                    topLeft: Radius.circular(40.r)),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: ScreenUtil().setWidth(108),
                          height: ScreenUtil().setHeight(44),
                          decoration: BoxDecoration(
                            // shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(15.r),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                HexColor('#53E88B').withOpacity(.10),
                                HexColor('#15BE77').withOpacity(.10)
                              ],
                            ),

                            // color: HexColor('#FFFFFF'),
                          ),
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
                              'Popular',
                              style: TextStyle(
                                fontSize: 12.0.sp,
                                letterSpacing: .5,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: ScreenUtil().setWidth(34),
                              height: ScreenUtil().setHeight(34),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    HexColor('#53E88B').withOpacity(.10),
                                    HexColor('#15BE77').withOpacity(.10)
                                  ],
                                ),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "images/Icon Location wijie.png")),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              width: ScreenUtil().setWidth(34),
                              height: ScreenUtil().setHeight(34),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    HexColor('#FF1D1D').withOpacity(.10),
                                    HexColor('#FF1D1D').withOpacity(.10)
                                  ],
                                ),
                                image: DecorationImage(
                                    image: AssetImage("images/Icon Love.png")),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Text("Rainbow Sandwich\nSugarless",
                            style: TextStyle(
                                fontSize: 27.sp,
                                color: HexColor('#09051C'),
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset("images/Icon Star.png"),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              '4.8 Rating',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor('#3B3B3B').withOpacity(.30)),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Row(
                          children: [
                            Image.asset("images/shopping-bag 1.png"),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text("2000+ Order",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        HexColor('#3B3B3B').withOpacity(.30)))
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.",
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: HexColor("#000000"),
                          height: 1.5.h),
                      // textAlign: TextAlign.start,
                      // textAlign: TextAlign.start,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.w),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "• ",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Strwoberry",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ))
                            ],
                          ),
                          // SizedBox(
                          //   height: 10.h,
                          // ),
                          Row(
                            children: [
                              Text(
                                "• ",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Strwoberry",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ))
                            ],
                          ),
                          // SizedBox(
                          //   height: 10.h,
                          // ),
                          Row(
                            children: [
                              Text(
                                "• ",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("Strwoberry",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                  ))
                            ],
                          ),
                          // SizedBox(
                          //   height: 10.h,
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                        "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt.",
                        style: TextStyle(
                            fontSize: 13.sp,
                            color: HexColor("#000000"),
                            height: 1.5.h)),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Text("Testimonials",
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: HexColor("#09051C"),
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 15.h),
                      // width: ScreenUtil().setWidth(336),
                      // height: ScreenUtil().setHeight(128),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/Photo Profilewiji.png',
                            // width: 70.w,
                            height: 62.h,
                            fit: BoxFit.fitHeight,
                            // width: ScreenUtil().setWidth(100),
                          ),
                          // SizedBox(
                          //   width: 20.w,
                          // ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                "12 April 2021",
                                style: TextStyle(
                                    fontSize: 12.0.sp,
                                    color: HexColor('#3B3B3B').withOpacity(.30),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'This Is great, So delicious! You\nMust Here, With Your family . . ',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12.0.sp,
                                  height: 1.5.h,
                                  // fontWeight: FontWeight.bold,
                                  color: HexColor("#000000"),
                                ),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   width: 30.w,
                          // ),
                          Container(
                            alignment: Alignment.center,
                            width: ScreenUtil().setWidth(53),
                            height: ScreenUtil().setHeight(33),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  HexColor('#53E88B').withOpacity(.10),
                                  HexColor('#15BE77').withOpacity(.10)
                                ],
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("images/starr.png"),
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
                                    '5',
                                    style: TextStyle(
                                      fontSize: 16.0.sp,
                                      // letterSpacing: .5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 15.h),
                      // width: ScreenUtil().setWidth(336),
                      // height: ScreenUtil().setHeight(128),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/Photo Profilewiji.png',
                            // width: 70.w,
                            height: 62.h,
                            fit: BoxFit.fitHeight,
                            // width: ScreenUtil().setWidth(100),
                          ),
                          // SizedBox(
                          //   width: 20.w,
                          // ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                "12 April 2021",
                                style: TextStyle(
                                    fontSize: 12.0.sp,
                                    color: HexColor('#3B3B3B').withOpacity(.30),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'This Is great, So delicious! You\nMust Here, With Your family . . ',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12.0.sp,
                                  height: 1.5.h,
                                  // fontWeight: FontWeight.bold,
                                  color: HexColor("#000000"),
                                ),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   width: 30.w,
                          // ),
                          Container(
                            alignment: Alignment.center,
                            width: ScreenUtil().setWidth(53),
                            height: ScreenUtil().setHeight(33),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  HexColor('#53E88B').withOpacity(.10),
                                  HexColor('#15BE77').withOpacity(.10)
                                ],
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("images/starr.png"),
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
                                    '5',
                                    style: TextStyle(
                                      fontSize: 16.0.sp,
                                      // letterSpacing: .5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 15.h),
                      // width: ScreenUtil().setWidth(336),
                      // height: ScreenUtil().setHeight(128),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'images/green Menu.png',
                            // width: 70.w,
                            height: 62.h,
                            fit: BoxFit.fitHeight,
                            // width: ScreenUtil().setWidth(100),
                          ),
                          // SizedBox(
                          //   width: 20.w,
                          // ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                "12 April 2021",
                                style: TextStyle(
                                    fontSize: 12.0.sp,
                                    color: HexColor('#3B3B3B').withOpacity(.30),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'This Is great, So delicious! You\nMust Here, With Your family . . ',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12.0.sp,
                                  height: 1.5.h,
                                  // fontWeight: FontWeight.bold,
                                  color: HexColor("#000000"),
                                ),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   width: 30.w,
                          // ),
                          Container(
                            alignment: Alignment.center,
                            width: ScreenUtil().setWidth(53),
                            height: ScreenUtil().setHeight(33),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  HexColor('#53E88B').withOpacity(.10),
                                  HexColor('#15BE77').withOpacity(.10)
                                ],
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("images/starr.png"),
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
                                    '5',
                                    style: TextStyle(
                                      fontSize: 16.0.sp,
                                      // letterSpacing: .5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
          // height: 50,
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: defaultButton(
            text: "Add To Chart",
            width: ScreenUtil().setWidth(326),
            height: ScreenUtil().setHeight(57),
          )),
    );
  }
}
