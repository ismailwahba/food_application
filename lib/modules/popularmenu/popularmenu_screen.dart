// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/shared/hexcolor/hexcolor.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../shared/cubit/cubit/HomeLayout_cubit.dart';
import '../../shared/cubit/cubit/HomeLayout_state.dart';
import '../component/components.dart';

class PopularMenu extends StatefulWidget {
  const PopularMenu({super.key});

  @override
  State<PopularMenu> createState() => _PopularMenuState();
}

class _PopularMenuState extends State<PopularMenu> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomelayoutCubit(),
      child: BlocConsumer<HomelayoutCubit, HomelayoutState>(
        listener: (context, state) {},
        builder: (context, state) {
          HomelayoutCubit cubit = HomelayoutCubit.get(context);

          // var gradient = Gradient;
          return Scaffold(
            backgroundColor: HexColor('#FEFEFF'),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  alignment: Alignment.topRight,
                  image: AssetImage("images/Patternbio.png"),
                  fit: BoxFit.fitWidth,
                )),
                child: SafeArea(
                    child: Container(
                  // alignment: Alignment.center,
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
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
                      Row(
                        children: [
                          Text(
                            "Popular Menu",
                            style: TextStyle(
                                color: HexColor('#09051C'),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        // width: ScreenUtil().setWidth(323),
                        // height: ScreenUtil().setHeight(82),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'images/Menu Photo.png',
                                  height: 87.h,
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
                                      "Herbal Pancake",
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
                                          color: HexColor('#3B3B3B')
                                              .withOpacity(.30),
                                          fontSize: 14.sp),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text(
                              "\$7",
                              style: TextStyle(
                                  color: HexColor('#FEAD1D'),
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        // width: ScreenUtil().setWidth(323),
                        // height: ScreenUtil().setHeight(82),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'images/fruit Menu.png',
                                  height: 87.h,
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
                                      "Fruit Salad",
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
                                          color: HexColor('#3B3B3B')
                                              .withOpacity(.30),
                                          fontSize: 14.sp),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Text(
                              "\$5",
                              style: TextStyle(
                                  color: HexColor('#FEAD1D'),
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        // width: ScreenUtil().setWidth(323),
                        // height: ScreenUtil().setHeight(82),
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'images/green Menu.png',
                                  height: 87.h,
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
                                          color: HexColor('#3B3B3B')
                                              .withOpacity(.30),
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
                )),
              ),
            ),
          );
        },
      ),
    );
  }
}
