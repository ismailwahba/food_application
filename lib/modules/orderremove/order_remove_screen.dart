// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:food_app/models/order_model.dart';

import '../../shared/hexcolor/hexcolor.dart';
import '../component/components.dart';

class OrederRemove extends StatefulWidget {
  const OrederRemove({super.key});

  @override
  State<OrederRemove> createState() => _OrederRemoveState();
}

class _OrederRemoveState extends State<OrederRemove> {
  @override
  List<OrderModel> ordermodel = [
    OrderModel(
        image: "images/Menu details.png",
        spacy: "Spacy fresh crab",
        waroenk: "Waroenk kita",
        dollar: "\$ 35"),
    OrderModel(
        image: "images/Menu Photo (2).png",
        spacy: "Spacy fresh crab",
        waroenk: "Waroenk kita",
        dollar: "\$ 35"),
    OrderModel(
        image: "images/Menu Photo1.png",
        spacy: "Spacy fresh crab",
        waroenk: "Waroenk kita",
        dollar: "\$ 35"),
  ];
  // List<String> item=[];
  // int index = 0;
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
                  SizedBox(height: 25.h),
                  Row(
                    children: [
                      Text(
                        "Notification",
                        style: TextStyle(
                            fontSize: 25.0.sp,
                            color: HexColor('#09051C'),
                            fontWeight: FontWeight.bold),

                        // textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: ordermodel.length,
                    itemBuilder: (context, index) => Slidable(
                      // background: buildSwipeA,
                      key: ValueKey<OrderModel>(ordermodel[index]),
                      startActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        dismissible: DismissiblePane(onDismissed: () {}),
                        children: [
                          SlidableAction(
                            borderRadius: BorderRadius.circular(22),
                            // onPressed: (){},
                            backgroundColor: HexColor("#FEAD1D"),
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                            onPressed: (BuildContext context) {},
                          ),
                        ],
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 20.h),
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
                          children: [
                            Image.asset(
                              '${ordermodel[index].image}',
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
                                  "${ordermodel[index].spacy}",
                                  style: TextStyle(
                                      fontSize: 15.0.sp,
                                      color: HexColor('#09051C'),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(
                                  "${ordermodel[index].waroenk}",
                                  style: TextStyle(
                                      fontSize: 14.0.sp,
                                      color:
                                          HexColor('#3B3B3B').withOpacity(.30),
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
                                    '${ordermodel[index].dollar}',
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
                            Row(
                              children: [
                                Container(
                                  // width: ScreenUtil().setWidth(40),
                                  // height: ScreenUtil().setHeight(40),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          index--;
                                        });
                                      },
                                      icon: Image.asset('images/Icon Minus.png',
                                          height: 26.h,
                                          // width: 30.w,
                                          fit: BoxFit.fitHeight)),
                                ),
                                Text(
                                  "$index",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: HexColor('#181818')),
                                ),
                                Container(
                                  // width: ScreenUtil().setWidth(40),
                                  // height: ScreenUtil().setHeight(40),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          index++;
                                        });
                                      },
                                      icon: Image.asset('images/Icon Plus.png',
                                          height: 26.h,
                                          // width: 30.w,
                                          fit: BoxFit.fitHeight)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(
                      height: 10.h,
                    ),
                  ),
                  SizedBox(height: 15.h),

                  // SizedBox(
                  //   height: 15.h,
                  // ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                decoration: BoxDecoration(

                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(20.r),
                    image: DecorationImage(
                        opacity: .3,
                        image: AssetImage("images/BACKGROUNDorder.png"),
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sub-Total",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#FEFEFF'))),
                        Text("120 \$",
                            style: TextStyle(
                                fontSize: 14.sp, color: HexColor('#FEFEFF'))),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Charge",
                            style: TextStyle(
                                fontSize: 14.sp,
                                letterSpacing: .5,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#FEFEFF'))),
                        Text("10 \$",
                            style: TextStyle(
                                fontSize: 14.sp,
                                letterSpacing: .5,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#FEFEFF'))),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discount",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              color: HexColor('#FEFEFF')),
                        ),
                        Text(
                          "20 \$",
                          style: TextStyle(
                              fontSize: 14.sp,
                              letterSpacing: .5,
                              fontWeight: FontWeight.bold,
                              color: HexColor('#FEFEFF')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: HexColor('#FEFEFF')),
                        ),
                        Text(
                          "150 \$",
                          style: TextStyle(
                              fontSize: 18.sp,
                              letterSpacing: .5,
                              fontWeight: FontWeight.bold,
                              color: HexColor('#FEFEFF')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: ScreenUtil().setWidth(325),
                      // height: ScreenUtil().setHeight(57),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: HexColor('#FEFEFF')),
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
                            'Place My Order',
                            style: TextStyle(
                              fontSize: 14.0.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                    // defaultButton(
                    //     text: "Search",
                    //     width: ScreenUtil().setWidth(325),
                    //     height: ScreenUtil().setHeight(57))
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
