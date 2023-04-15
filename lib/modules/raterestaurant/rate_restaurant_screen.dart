// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/modules/component/components.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../shared/hexcolor/hexcolor.dart';

class RateRestaurant extends StatefulWidget {
  const RateRestaurant({super.key});

  @override
  State<RateRestaurant> createState() => _RateRestaurantState();
}

class _RateRestaurantState extends State<RateRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage("images/Pattern messaging.png"),
          fit: BoxFit.fitWidth,
        )),
        child: SafeArea(
            child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: ScreenUtil().setWidth(50),
                    height: ScreenUtil().setHeight(50),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: HexColor('#F9A84D').withOpacity(.20)),
                    child: IconButton(
                        // iconSize: 30,
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios_sharp,
                          color: HexColor('#DA6317'),
                        )),
                  ),

                  // Image.asset("images/Patternbio.png")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Image.asset('images/raterestaurant.png')],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Column(
                    children: [
                      Text("Thank You!\nEnjoy Your Meal",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: HexColor('#09051C'),
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text("Please rate your Restaurant",
                          style: TextStyle(
                              color: HexColor('#3B3B3B').withOpacity(.30),
                              fontSize: 14.sp,
                              letterSpacing: .5
                              // fontWeight: FontWeight.bold
                              )),
                      SizedBox(
                        height: 20.h,
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star_rounded,
                          // size: 31.sp,
                          color: HexColor('#FEAD1D'),
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: ScreenUtil().setWidth(335),
                        height: ScreenUtil().setHeight(55),
                        child: TextFormField(
                          // controller: emailController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            // border: BorderRadius.circular(20),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 20.h),
                            filled: true,
                            fillColor: HexColor('#ffffff'),
                            hintText: "Leave feedback",
                            hintStyle: TextStyle(
                                color: HexColor('#3B3B3B').withOpacity(.30),
                                fontSize: 14.sp,
                                letterSpacing: .5.w),
                            prefixIcon: Image.asset("images/edit Icon.png"),
                            focusColor: Colors.green,
                            iconColor: Colors.green,

                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                    // style: BorderStyle.none,
                                    color: HexColor('#E8E8E8'),
                                    width: 1.5)),
                            // focusedBorder: OutlineInputBorder(
                            //   borderRadius: BorderRadius.circular(5),
                            //   borderSide: BorderSide(
                            //     color: Colors.blue,
                            //   ),
                            // )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          defaultButton(
                              text: 'Submit',
                              width: ScreenUtil().setWidth(233),
                              height: ScreenUtil().setHeight(57)),
                          SizedBox(
                            width: 7.w,
                          ),
                          Container(
                            width: ScreenUtil().setWidth(82),
                            height: ScreenUtil().setHeight(57),
                            decoration: BoxDecoration(
                              border: Border.all(color: HexColor('#125A6CEA')),
                              borderRadius: BorderRadius.circular(15),
                            ),
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
                                  "Skip",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16.0.sp),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
