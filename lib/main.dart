import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ptc_test/business_logic/cubits/beverages_cubit.dart';
import 'package:ptc_test/routes.dart';
import 'package:ptc_test/screens/authentication/splash_screen.dart';

import 'business_logic/cubits/app_cubit.dart';
import 'business_logic/cubits/app_states.dart';
import 'business_logic/cubits/cart_cubit.dart';
import 'business_logic/cubits/explore_cubit.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white.withAlpha(1))); // Set the status bar color
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  static String route = '/main';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit(),
        ),
        BlocProvider(
          create: (context) => ExploreCubit(),
        ),
        BlocProvider(
          create: (context) => BeveragesCubit(),
        ),
        BlocProvider(
          create: (context) => CartCubit(),
        ),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            initialRoute: SplashScreen.route,
            routes: routes,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
