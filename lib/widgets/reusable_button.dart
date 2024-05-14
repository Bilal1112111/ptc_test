import 'package:flutter/material.dart';
import 'package:ptc_test/widgets/constants.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor = primaryColor,
    this.textColor = Colors.white,
  });
  final String label;
  final void Function()? onPressed;
  final Color backgroundColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30.5),
      width: MediaQuery.of(context).size.width,
      height: 67,
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(19.0),
            ),
            backgroundColor: backgroundColor),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
              color: textColor, fontSize: 18.0, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
