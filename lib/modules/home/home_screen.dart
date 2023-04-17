// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';
import '../component/components.dart';
import '../popularmenu/popularmenu_screen.dart';
import '../popularrestaurant/popular_restaurant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
            child: Container(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              alignment: Alignment.topRight,
              image: AssetImage("images/Patternbio.png"),
              fit: BoxFit.fitWidth,
            )),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
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
                  SizedBox(
                    height: 10.h,
                  ),
                  defaultSearchForm(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    // height: ScreenUtil().setHeight(150),
                    // width: MediaQuery.of(context).size.width * .9,
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    decoration: BoxDecoration(

                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(20.r),
                        image: DecorationImage(
                            opacity: .3,
                            image: AssetImage("images/BACKGROUND 2.png"),
                            fit: BoxFit.cover),
                        // color: HexColor('#FFFFFF'),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [HexColor('#53E88B'), HexColor('#15BE77')],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: HexColor('#125A6CEA'),
                            spreadRadius: 9,
                            blurRadius: 9,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.asset(
                              alignment: Alignment.centerRight,
                              "images/Image.png",
                              // height: 135,
                              // width: 200.w,
                              // fit: BoxFit.fitHeight,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Special Deal For\nOctober",
                                  style: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  width: ScreenUtil().setWidth(82),
                                  height: ScreenUtil().setHeight(32),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.white),
                                  child: MaterialButton(
                                    onPressed: () {},
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
                                        'Buy Now',
                                        style: TextStyle(
                                          fontSize: 11.0.sp,
                                          // height: .50.h,
                                          fontWeight: FontWeight.bold,
                                          // fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nearest Restaurant",
                          style: TextStyle(
                              color: HexColor('#09051C'),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold)),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PopularRestaurant()));
                          },
                          child: Text("View More",
                              style: TextStyle(
                                  color: HexColor('#FF7C32').withOpacity(.8),
                                  fontSize: 11.sp))),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: ScreenUtil().setWidth(147),
                        height: ScreenUtil().setHeight(184),
                        decoration: BoxDecoration(

                            // shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(20.r),
                            color: HexColor('#FFFFFF'),

                            // color: HexColor('#FFFFFF'),

                            boxShadow: [
                              BoxShadow(
                                color: HexColor('#125A6CEA'),
                                spreadRadius: 9,
                                blurRadius: 9,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "images/Resturant Image.png",
                                    // fit: BoxFit.fitWidth,
                                    // width: 100.w,
                                    // height: 100.h,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
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
                                  )
                                ],
                              ),
                            ]),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: ScreenUtil().setWidth(147),
                        height: ScreenUtil().setHeight(184),
                        decoration: BoxDecoration(

                            // shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(20.r),
                            color: HexColor('#FFFFFF'),

                            // color: HexColor('#FFFFFF'),

                            boxShadow: [
                              BoxShadow(
                                color: HexColor('#125A6CEA'),
                                spreadRadius: 9,
                                blurRadius: 9,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "images/healthy Image.png",
                                    // fit: BoxFit.fitWidth,
                                    // width: 100.w,
                                    // height: 100.h,
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Healthy Food",
                                    style: TextStyle(
                                        color: HexColor('#000000'),
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "8 Mins",
                                    style: TextStyle(
                                      color:
                                          HexColor('#000000').withOpacity(.5),
                                      fontSize: 12.sp,
                                      // fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                            ]),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular Menu",
                          style: TextStyle(
                              color: HexColor('#09051C'),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold)),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PopularMenu()));
                          },
                          child: Text("View More",
                              style: TextStyle(
                                  color: HexColor('#FF7C32').withOpacity(.8),
                                  fontSize: 11.sp))),
                    ],
                  ),
                  Container(
                    width: ScreenUtil().setWidth(323),
                    height: ScreenUtil().setHeight(82),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    decoration: BoxDecoration(

                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(22.r),

                        // color: HexColor('#FFFFFF'),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'images/green Menu.png',
                              height: 120.h,
                              fit: BoxFit.fitHeight,
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Green Noddle",
                                  style: TextStyle(
                                      color: HexColor('#09051C'),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.sp),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(
                                  "Warung Herbal",
                                  style: TextStyle(
                                      color:
                                          HexColor('#3B3B3B').withOpacity(.50),
                                      fontSize: 14.sp),
                                ),
                              ],
                            )
                          ],
                        ),
                        Text(
                          "\$15",
                          style: TextStyle(
                              color: HexColor('#FEAD1D'),
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
