// import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/modules/cart/cart_screen.dart';
import 'package:food_app/modules/comfort/comfort_screen.dart';
import 'package:food_app/modules/profile/profile_screen.dart';
// import 'package:meta/meta.dart';

import '../../../modules/chat/chat_screen.dart';
import '../../../modules/home/home_screen.dart';
import '../../../modules/mainlayout/main_Layout.dart';
import '../../../modules/popularrestaurant/popular_restaurant.dart';
import 'HomeLayout_state.dart';
// import 'homelayout_cubit.dart';

// part 'homelayout_state.dart';

class HomelayoutCubit extends Cubit<HomelayoutState> {
  HomelayoutCubit() : super(HomelayoutInitial());
  static HomelayoutCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const ProfileScreen(),
    const Cart(),
    const ChatScreen(),
    // const PopularRestaurant()
    // const PopularRestaurant()
  ];
  // List<String> titles = ['Home', 'Profile', 'Cart', 'Chat'];

  void changeIndex(int index) {
    currentIndex = index;
    emit(HomelayoutChangeBottomNavBarState());
  }
}
