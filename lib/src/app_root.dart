// ignore_for_file: prefer_const_constructors, unnecessary_import, duplicate_ignore, use_key_in_widget_constructors, unused_import, duplicate_import

// import 'package:app_notes/modules/home/note_screen.dart';
// import 'package:app_notes/modules/home/note.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../modules/bio/bio_screen.dart';
import '../modules/home/home_screen.dart';
import '../modules/homedelivery/delivery_screen.dart';
import '../modules/login/login_screen.dart';
import '../modules/payment/payment_screen.dart';
import '../modules/photoprofile/photoprofile_screen.dart';
import '../modules/signup/signup_screen.dart';
import '../modules/splach/splach_screen.dart';
import '../modules/upload/upload_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // theme: ThemeData(brightness: Brightness.light),
          // darkTheme: ThemeData(brightness: Brightness.dark),
          // themeMode: ThemeMode.dark,

          // You can use the library anywhere in the app even in theme

          home: ProfilePhoto(),
        );
      },
    );
  }
}
