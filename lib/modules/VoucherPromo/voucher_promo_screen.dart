// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../component/components.dart';
import '../../shared/hexcolor/hexcolor.dart';

class VoucherPromo extends StatefulWidget {
  const VoucherPromo({super.key});

  @override
  State<VoucherPromo> createState() => _VoucherPromoState();
}

class _VoucherPromoState extends State<VoucherPromo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.topRight,
          image: AssetImage("images/Patternbio.png"),
          fit: BoxFit.fitWidth,
        )),
        child: SafeArea(
            child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text("Voucher Promo",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: HexColor('#09051C'),
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    decoration: BoxDecoration(

                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(20.r),

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
                              "images/woman.png",
                              // height: 135,
                              // width: 200.w,
                              fit: BoxFit.fitHeight,
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
                                  height: 20.h,
                                ),
                                Container(
                                  width: ScreenUtil().setWidth(82),
                                  height: ScreenUtil().setHeight(32),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.white),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Order Now',
                                      style: TextStyle(
                                        fontSize: 11.0.sp,

                                        // height: .50.h,
                                        fontWeight: FontWeight.bold,
                                        // fontWeight: FontWeight.bold,
                                        color: HexColor('#009C51'),
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
                    height: 20.h,
                  ),
                  Container(
                    // width: ScreenUtil().setWidth(325),
                    // height: ScreenUtil().setHeight(122),
                    // alignment: Alignment.center,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    // margin: EdgeInsets.only(right: 20.w),
                    decoration: BoxDecoration(

                        // shape: BoxShape.circle,
                        borderRadius: BorderRadius.circular(20.r),
                        image: DecorationImage(
                            alignment: Alignment.bottomLeft,
                            // opacity: .3,
                            image: AssetImage("images/Framepromoo.png"),
                            fit: BoxFit.fitHeight),

                        // color: HexColor('#FFFFFF'),
                        color: HexColor('#E9F7BA').withOpacity(.80),
                        boxShadow: [
                          BoxShadow(
                            color: HexColor('#125A6CEA'),
                            spreadRadius: 9,
                            blurRadius: 9,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Special Deal For\nOctober",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor('#6B3A5B')),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Container(
                              width: ScreenUtil().setWidth(82),
                              height: ScreenUtil().setHeight(32),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  'Order Now',
                                  style: TextStyle(
                                    fontSize: 11.0.sp,

                                    // height: .50.h,
                                    fontWeight: FontWeight.bold,
                                    // fontWeight: FontWeight.bold,
                                    color: HexColor('#6B3A5B'),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  defaultButton(
                      text: "Check Out",
                      width: MediaQuery.of(context).size.width * .9)
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
