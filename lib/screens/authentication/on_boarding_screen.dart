import 'package:flutter/material.dart';
import 'package:ptc_test/bottom_navigation_bar_view.dart';
import 'package:ptc_test/widgets/reusable_button.dart';
import 'package:svg_flutter/svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  static String route = 'on_boarding_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/on_boarding.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 360.0),
                child: SvgPicture.asset(
                  'assets/logo_icon.svg',
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const SizedBox(
                width: 250.0,
                child: Text(
                  'Welcome to our store',
                  textAlign: TextAlign.center,
                  textHeightBehavior: TextHeightBehavior(
                    applyHeightToFirstAscent: false,
                    applyHeightToLastDescent: false,
                  ),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 48.0,
                  ),
                ),
              ),
              const Text(
                'Ger your groceries in as fast as one hour',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              ReusableButton(
                  label: 'Get Started',
                  onPressed: () {
                    Navigator.pushNamed(context, BottomNavigationBarView.route);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
