import 'package:flutter/material.dart';

import '../../widgets/reusable_button.dart';

class SuccessfulViewBody extends StatelessWidget {
  const SuccessfulViewBody({super.key});
  static String route = 'order_accept_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('assets/check_sign.png'),
          const SizedBox(
            height: 65,
          ),
          const SizedBox(
            width: 300.0,
            child: Text(
              'Your Order has been accepted',
              style: TextStyle(
                fontSize: 28.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
              width: 280,
              child: Text(
                'Your items has been placed and is on it’s way to being processed',
                style: TextStyle(color: Color(0XFF7C7C7C), fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .13,
          ),
          ReusableButton(
            onPressed: () {
              Navigator.pop(context);
            },
            label: 'Track Order',
          ),
          ReusableButton(
            onPressed: () {},
            label: 'Back to home',
            backgroundColor: Colors.white,
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
