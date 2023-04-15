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

class TypeScreen extends StatefulWidget {
  const TypeScreen({super.key});

  @override
  State<TypeScreen> createState() => _TypeScreenState();
}

class _TypeScreenState extends State<TypeScreen> {
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
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        height: 20.h,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .9,
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
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Text("Type",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: HexColor('#09051C'),
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.center,
                              width: ScreenUtil().setWidth(108),
                              height: ScreenUtil().setHeight(44),
                              decoration: BoxDecoration(
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(15.r),
                                color: HexColor('#FEAD1D').withOpacity(.20),

                                // color: HexColor('#FFFFFF'),
                              ),
                              child: Text(
                                "Restaurant",
                                style: TextStyle(
                                  color: HexColor('#DA6317'),
                                  fontSize: 12.sp,
                                ),
                              )),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                              alignment: Alignment.center,
                              width: ScreenUtil().setWidth(74),
                              height: ScreenUtil().setHeight(44),
                              decoration: BoxDecoration(
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(15.r),
                                color: HexColor('#FEAD1D').withOpacity(.20),

                                // color: HexColor('#FFFFFF'),
                              ),
                              child: Text(
                                "Menu",
                                style: TextStyle(
                                  color: HexColor('#DA6317'),
                                  fontSize: 12.sp,
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Text("Location",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: HexColor('#09051C'),
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Container(
                              alignment: Alignment.center,
                              width: ScreenUtil().setWidth(70),
                              height: ScreenUtil().setHeight(44),
                              decoration: BoxDecoration(
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(15.r),
                                color: HexColor('#FEAD1D').withOpacity(.20),

                                // color: HexColor('#FFFFFF'),
                              ),
                              child: Text(
                                "1 Km",
                                style: TextStyle(
                                  color: HexColor('#DA6317'),
                                  fontSize: 12.sp,
                                ),
                              )),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                              alignment: Alignment.center,
                              width: ScreenUtil().setWidth(86),
                              height: ScreenUtil().setHeight(44),
                              decoration: BoxDecoration(
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(15.r),
                                color: HexColor('#FEAD1D').withOpacity(.20),

                                // color: HexColor('#FFFFFF'),
                              ),
                              child: Text(
                                ">10 Km",
                                style: TextStyle(
                                  color: HexColor('#DA6317'),
                                  fontSize: 12.sp,
                                ),
                              )),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                              alignment: Alignment.center,
                              width: ScreenUtil().setWidth(86),
                              height: ScreenUtil().setHeight(44),
                              decoration: BoxDecoration(
                                // shape: BoxShape.circle,
                                borderRadius: BorderRadius.circular(15.r),
                                color: HexColor('#FEAD1D').withOpacity(.20),

                                // color: HexColor('#FFFFFF'),
                              ),
                              child: Text(
                                ">10 Km",
                                style: TextStyle(
                                  color: HexColor('#DA6317'),
                                  fontSize: 12.sp,
                                ),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Text("Food",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: HexColor('#09051C'),
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  width: ScreenUtil().setWidth(70),
                                  height: ScreenUtil().setHeight(44),
                                  decoration: BoxDecoration(
                                    // shape: BoxShape.circle,
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: HexColor('#FEAD1D').withOpacity(.20),

                                    // color: HexColor('#FFFFFF'),
                                  ),
                                  child: Text(
                                    "Cake",
                                    style: TextStyle(
                                      color: HexColor('#DA6317'),
                                      fontSize: 12.sp,
                                    ),
                                  )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  width: ScreenUtil().setWidth(71),
                                  height: ScreenUtil().setHeight(44),
                                  decoration: BoxDecoration(
                                    // shape: BoxShape.circle,
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: HexColor('#FEAD1D').withOpacity(.20),

                                    // color: HexColor('#FFFFFF'),
                                  ),
                                  child: Text(
                                    "Soup",
                                    style: TextStyle(
                                      color: HexColor('#DA6317'),
                                      fontSize: 12.sp,
                                    ),
                                  )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  width: ScreenUtil().setWidth(120),
                                  height: ScreenUtil().setHeight(44),
                                  decoration: BoxDecoration(
                                    // shape: BoxShape.circle,
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: HexColor('#FEAD1D').withOpacity(.20),

                                    // color: HexColor('#FFFFFF'),
                                  ),
                                  child: Text(
                                    "Main Course",
                                    style: TextStyle(
                                      color: HexColor('#DA6317'),
                                      fontSize: 12.sp,
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  width: ScreenUtil().setWidth(99),
                                  height: ScreenUtil().setHeight(44),
                                  decoration: BoxDecoration(
                                    // shape: BoxShape.circle,
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: HexColor('#FEAD1D').withOpacity(.20),

                                    // color: HexColor('#FFFFFF'),
                                  ),
                                  child: Text(
                                    "Appetizer",
                                    style: TextStyle(
                                      color: HexColor('#DA6317'),
                                      fontSize: 12.sp,
                                    ),
                                  )),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                  alignment: Alignment.center,
                                  width: ScreenUtil().setWidth(87),
                                  height: ScreenUtil().setHeight(44),
                                  decoration: BoxDecoration(
                                    // shape: BoxShape.circle,
                                    borderRadius: BorderRadius.circular(15.r),
                                    color: HexColor('#FEAD1D').withOpacity(.20),

                                    // color: HexColor('#FFFFFF'),
                                  ),
                                  child: Text(
                                    "Dessert",
                                    style: TextStyle(
                                      color: HexColor('#DA6317'),
                                      fontSize: 12.sp,
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                      defaultButton(
                          text: "Search",
                          width: ScreenUtil().setWidth(325),
                          height: ScreenUtil().setHeight(57))
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
