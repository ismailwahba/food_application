// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart' as localized;

import '../../shared/hexcolor/hexcolor.dart';
import '../component/components.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: MediaQuery.of(context).size.height,
        // height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/Pattern.png"),
          fit: BoxFit.cover,
        )),
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/Logo.png",
                    // width: ScreenUtil().setWidth(300),
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
                    "Login To Your Account",
                    style: TextStyle(
                        fontSize: 20.sp,
                        // letterSpacing: 1.0.w,
                        fontFamily: 'Flu',
                        color: HexColor('#09051C'),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        defaultForm(
                            hintText: "Email",
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Email address Must Not Be Empty";
                              }
                            },
                            controller: emailController),
                        SizedBox(
                          height: 20.0.h,
                        ),
                        defaultForm(
                            hintText: "Password",
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Password Must Not Be Empty";
                              }
                            },
                            controller: passwordController),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  Text(
                    "Or Continue With",
                    style: TextStyle(
                      fontSize: 12.0.sp,
                      color: HexColor('#09051C'),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  Row(
                    children: [
                      defaultButton(
                          url: ("images/facebook-3 1.png"), text: "Facebook"),
                      SizedBox(
                        width: 10.w,
                      ),
                      defaultButton(
                          url: ("images/google-icon 1.png"), text: "Google"),
                    ],
                  ),
                  SizedBox(
                    height: 20.0.h,
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
                        "Forget Your Password?",
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
                  Container(
                    width: ScreenUtil().setWidth(141),
                    height: ScreenUtil().setHeight(57),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [HexColor('#53E88B'), HexColor('#15BE77')],
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style:
                            TextStyle(color: Colors.white, fontSize: 16.0.sp),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
