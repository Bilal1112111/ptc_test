import 'package:ptc_test/bottom_navigation_bar_view.dart';
import 'package:ptc_test/screens/authentication/on_boarding_screen.dart';
import 'package:ptc_test/screens/authentication/splash_screen.dart';
import 'package:ptc_test/screens/home/beverages_screen.dart';
import 'package:ptc_test/screens/home/cart_screen.dart';
import 'package:ptc_test/screens/home/explore.dart';
import 'package:ptc_test/screens/home/order_accept_screen.dart';

var routes = {
  SplashScreen.route: (context) => const SplashScreen(),
  OnBoardingScreen.route: (context) => const OnBoardingScreen(),
  ExploreScreen.route: (context) => const ExploreScreen(),
  BeveragesScreen.route: (context) => const BeveragesScreen(),
  CartScreen.route: (context) => const CartScreen(),
  SuccessfulViewBody.route: (context) => const SuccessfulViewBody(),
  BottomNavigationBarView.route: (context) => const BottomNavigationBarView(),
};
