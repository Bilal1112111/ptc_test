import 'package:flutter/material.dart';
import 'package:ptc_test/screens/authentication/on_boarding_screen.dart';
import 'package:ptc_test/widgets/constants.dart';
import 'package:svg_flutter/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static String route = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay using `Future.delayed` to control the duration of the splash screen
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: SvgPicture.asset(
            'assets/image.svg',
          ),
        ),
      ),
    );
  }
}
