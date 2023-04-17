// ignore_for_file: prefer_const_constructors, unnecessary_import, duplicate_ignore, use_key_in_widget_constructors, unused_import, duplicate_import

// import 'package:app_notes/modules/home/note_screen.dart';
// import 'package:app_notes/modules/home/note.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../modules/Thank You! Order Completed/order _completed_screen.dart';
import '../modules/VoucherPromo/voucher_promo_screen.dart';
import '../modules/confirmorder/confirm_order_screen.dart';
import '../modules/enjoyyourmeal/your_meal_screen.dart';
import '../modules/messaging/messaging_screen.dart';
import '../modules/Courtney Henry/courtney _henry.dart';
import '../modules/bio/bio_screen.dart';
import '../modules/chat/chat_screen.dart';
import '../modules/congrats/congrats_screen.dart';
import '../modules/congratssucceful/congratssuccseful_screen.dart';
import '../modules/forgetpasswoed/forgetpassword_screen.dart';
import '../modules/comfort/comfort_screen.dart';
import '../modules/home/home_screen.dart';
import '../modules/homedelivery/delivery_screen.dart';
import '../modules/location/location_screen.dart';
import '../modules/login/login_screen.dart';
import '../modules/mainlayout/main_Layout.dart';
import '../modules/notification/notification_screen.dart';
import '../modules/orderdetails/orderdetails_screen.dart';
import '../modules/orderremove/order_remove_screen.dart';
import '../modules/payment/payment_screen.dart';
import '../modules/paymenttwo/payment_two_screen.dart';
import '../modules/raterestaurant/rate_restaurant_screen.dart';
import '../modules/ringing/ringing_screen.dart';
import '../modules/uploadphotoprofile/photoprofile_screen.dart';
import '../modules/popularmenu/popularmenu_screen.dart';
import '../modules/popularrestaurant/popular_restaurant.dart';
import '../modules/resetpassword/resetpassword_screen.dart';
import '../modules/signup/signup_screen.dart';
import '../modules/splach/splach_screen.dart';
import '../modules/typescreen/type_screen.dart';
import '../modules/upload/upload_screen.dart';
import '../modules/verification/verification_screen.dart';

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

          home: VoucherPromo(),
        );
      },
    );
  }
}
