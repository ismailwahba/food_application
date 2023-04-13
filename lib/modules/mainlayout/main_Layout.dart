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
import '../popularrestaurant/popular_restaurant.dart';

class MainLayoutScreen extends StatefulWidget {
  const MainLayoutScreen({super.key});

  @override
  State<MainLayoutScreen> createState() => _MainLayoutScreenState();
}

class _MainLayoutScreenState extends State<MainLayoutScreen> {
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
              body: HomelayoutCubit.get(context).screens[cubit.currentIndex],
              bottomNavigationBar: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
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
                child: GNav(
                  onTabChange: (val) {
                    cubit.changeIndex(val);
                  },
                  // style: GnavStyle.,
                  textStyle: TextStyle(
                      color: HexColor('#09051C'), fontWeight: FontWeight.bold),
                  // tabBorder: Border.all(2),
                  // backgroundColor: Colors.red,
                  // tabMargin: EdgeInsets.symmetric(horizontal: 6.w),
                  tabBorderRadius: 15.r,
                  rippleColor:
                      Colors.grey, // tab button ripple color when pressed
                  hoverColor: Colors.grey, // tab button hover color
                  haptic: true, // haptic feedback
                  curve: Curves.easeOutExpo, // tab animation curves
                  duration:
                      Duration(milliseconds: 900), // tab animation duration
                  gap: 8.w,
                  iconSize: 22.w, // tab button icon size
                  tabBackgroundColor: HexColor('#15BE77')
                      .withOpacity(0.1), // selected tab background color
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                  tabs: [
                    GButton(
                      // gap: 8,
                      icon: Icons.home_filled,
                      iconActiveColor: HexColor('#53E88B'),
                      iconColor: HexColor('#53E88B'),
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.person,
                      iconColor: HexColor('#53E88B').withOpacity(.4),
                      iconActiveColor: HexColor('#53E88B'),
                      text: 'Profile',
                    ),
                    GButton(
                      icon: Icons.shopping_cart,
                      iconColor: HexColor('#53E88B').withOpacity(.4),
                      iconActiveColor: HexColor('#53E88B'),
                      text: 'Cart',
                    ),
                    GButton(
                      onPressed: () {},
                      icon: Icons.mark_chat_unread_rounded,
                      iconColor: HexColor('#53E88B').withOpacity(.4),
                      iconActiveColor: HexColor('#53E88B'),
                      text: 'Chat',
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
