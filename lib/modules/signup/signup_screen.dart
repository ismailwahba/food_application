// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unnecessary_import, unused_import, implementation_imports, annotate_overrides, prefer_const_constructors, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/hexcolor/hexcolor.dart';
import '../component/components.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool keep = false;
  bool email = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          // height: ScreenUtil().setHeight(100),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/Pattern.png"),
            fit: BoxFit.cover,
          )),
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Image.asset(
                      "images/Logo.png",
                      width: ScreenUtil().setWidth(150),
                      height: ScreenUtil().setHeight(100),
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [HexColor('#53E88B'), HexColor('#15BE77')],
                        ).createShader(bounds);
                      },
                      child: Text(
                        'FoodNinja',
                        style: TextStyle(
                          fontSize: 35.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "Deliever Favorite Food",
                      style: TextStyle(
                          fontSize: 11.sp,
                          letterSpacing: 1.0.w,
                          fontFamily: 'Flu',
                          color: HexColor('#09051C'),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50.0.h,
                    ),
                    Text(
                      "Sign Up For Free",
                      style: TextStyle(
                          fontSize: 20.sp,
                          // letterSpacing: 1.0.w,
                          fontFamily: 'Flu',
                          color: HexColor('#09051C'),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25.0.h,
                    ),
                    defaultForm(
                      controller: nameController,
                      hintText: 'Anamwp..',
                      hintStyle: TextStyle(
                          fontSize: 14.sp,
                          color: HexColor('#3B3B3B').withOpacity(.4)),
                      prefix: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "images/Profile.png",
                            // width: ScreenUtil().setWidth(100),
                          )),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Name Must Not Be Empty";
                        }
                      },
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    defaultForm(
                      controller: nameController,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          fontSize: 14.sp,
                          color: HexColor('#3B3B3B').withOpacity(.4)),
                      prefix: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "images/Message.png",
                            // width: ScreenUtil().setWidth(100),
                          )),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Email Must Not Be Empty";
                        }
                      },
                    ),
                    SizedBox(
                      height: 15.0.h,
                    ),
                    defaultForm(
                      controller: nameController,
                      hintText: 'password',
                      hintStyle: TextStyle(
                          fontSize: 14.sp,
                          color: HexColor('#3B3B3B').withOpacity(.4)),
                      prefix: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "images/Lock.png",
                            // width: ScreenUtil().setWidth(100),
                          )),
                      suffix: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "images/Show.png",
                          // width: ScreenUtil().setWidth(100),
                        ),
                        // iconSize: 50,
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "password Must Not Be Empty";
                        }
                      },
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              keep = !keep;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  HexColor('#53E88B'),
                                  HexColor('#15BE77')
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: keep
                                  ? Icon(
                                      Icons.check,
                                      size: 30.0,
                                      color: Colors.white,
                                    )
                                  : Icon(
                                      Icons.check_box_outline_blank,
                                      size: 30.0,
                                      color: Colors.white.withOpacity(.0),
                                    ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0.w,
                        ),
                        Text(
                          "Email Me About Special Pricing",
                          style: TextStyle(
                              color: HexColor('#000000').withOpacity(.5),
                              fontSize: 12.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0.h,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              email = !email;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  HexColor('#53E88B'),
                                  HexColor('#15BE77')
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: email
                                  ? Icon(
                                      Icons.check,
                                      size: 30.0,
                                      color: Colors.white,
                                    )
                                  : Icon(
                                      Icons.check_box_outline_blank,
                                      size: 30.0,
                                      color: Colors.white.withOpacity(.0),
                                    ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0.w,
                        ),
                        Text(
                          "Keep Me Signed In",
                          style: TextStyle(
                              color: HexColor('#000000').withOpacity(.5),
                              fontSize: 12.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    defaultButton(
                      text: "Create Account",
                      textStyle: TextStyle(fontSize: 10.0.sp),
                      width: ScreenUtil().setWidth(175),
                      height: ScreenUtil().setHeight(57),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                            colors: [HexColor('#53E88B'), HexColor('#15BE77')],
                          ).createShader(bounds);
                        },
                        child: Text(
                          "already have an account?",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
                            // decorationColor: Colors.red,
                            decorationStyle: TextDecorationStyle.solid,
                            // fontSize: 40.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
