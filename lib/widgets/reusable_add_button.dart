import 'package:flutter/material.dart';

import 'constants.dart';

class ReusableAddButton extends StatelessWidget {
  ReusableAddButton(
      {super.key,
      required this.size,
      required this.borderRadius,
      this.backgroundColor = primaryColor,
      this.icon = Icons.add,
      this.iconColor = Colors.white,
      this.borderSide = BorderSide.none,
      this.onPressed});
  final double size;
  final double borderRadius;
  Color backgroundColor;
  Color iconColor;
  IconData icon;
  BorderSide borderSide;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: borderSide,
      ),
      color: backgroundColor,
      height: 30.0,
      minWidth: 30.0,
      padding: const EdgeInsets.all(2),
      child: Icon(
        icon,
        size: size,
        color: iconColor,
      ),
    );
  }
}
