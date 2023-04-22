// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';

class Wijie extends StatefulWidget {
  const Wijie({super.key});

  @override
  State<Wijie> createState() => _WijieState();
}

class _WijieState extends State<Wijie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage("images/Photo Restaurant.png"),
          fit: BoxFit.fitWidth,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
              // width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .65,
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
                        Text("Wijie Bar and Resto",
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
                            Image.asset("images/Icon map-pin.png"),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              '19 Km',
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
                            Image.asset("images/Icon Star.png"),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text("4,8 Rating",
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
                      "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Menu",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: HexColor("#09051C"),
                              fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "View All",
                              style: TextStyle(
                                  color: HexColor("#FF7C32"), fontSize: 12.sp),
                            ))
                      ],
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 10.w),
                      scrollDirection: Axis.horizontal,
                      // physics: NeverScrollableScrollPhysics(),
                      // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: ScreenUtil().setWidth(147),
                            height: ScreenUtil().setHeight(171),
                            decoration: BoxDecoration(
                    
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(20.r),
                                color: HexColor('#FFFFFF'),
                    
                                // color: HexColor('#FFFFFF'),
                    
                                boxShadow: [
                                  BoxShadow(
                                    color: HexColor('#125A6CEA'),
                                    spreadRadius: 5,
                                    blurRadius: 9,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ]),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "images/pizza.png",
                                    // fit: BoxFit.fitWidth,
                                    // width: 100.w,
                                    // height: 100.h,
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    "Spacy fresh crab",
                                    style: TextStyle(
                                        color: HexColor('#000000'),
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "12 \$",
                                    style: TextStyle(
                                      color:
                                          HexColor('#000000').withOpacity(.5),
                                      fontSize: 13.sp,
                                      // fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ]),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: ScreenUtil().setWidth(147),
                            height: ScreenUtil().setHeight(171),
                            decoration: BoxDecoration(
                    
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(20.r),
                                color: HexColor('#FFFFFF'),
                    
                                // color: HexColor('#FFFFFF'),
                    
                                boxShadow: [
                                  BoxShadow(
                                    blurStyle: BlurStyle.inner,
                                    color: HexColor('#125A6CEA'),
                                    spreadRadius: 5,
                                    blurRadius: 9,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ]),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "images/image 32.png",
                                    // fit: BoxFit.fitWidth,
                                    // width: 100.w,
                                    // height: 100.h,
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    "Spacy fresh crab",
                                    style: TextStyle(
                                        color: HexColor('#000000'),
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "16 \$",
                                    style: TextStyle(
                                      color:
                                          HexColor('#000000').withOpacity(.5),
                                      fontSize: 13.sp,
                                      // fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ]),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: ScreenUtil().setWidth(147),
                            height: ScreenUtil().setHeight(171),
                            decoration: BoxDecoration(
                    
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(20.r),
                                color: HexColor('#FFFFFF'),
                    
                                // color: HexColor('#FFFFFF'),
                    
                                boxShadow: [
                                  BoxShadow(
                                    color: HexColor('#125A6CEA'),
                                    spreadRadius: 5,
                                    blurRadius: 9,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ]),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "images/Resturant Image.png",
                                    // fit: BoxFit.fitWidth,
                                    // width: 100.w,
                                    // height: 100.h,
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    "Vegan Resto",
                                    style: TextStyle(
                                        color: HexColor('#000000'),
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "12 Mins",
                                    style: TextStyle(
                                      color:
                                          HexColor('#000000').withOpacity(.5),
                                      fontSize: 12.sp,
                                      // fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ]),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                        ],
                      ),
                    ),SizedBox(
                      height: 30.h,
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
            )
          ],
        ),
      )),
    );
  }
}
