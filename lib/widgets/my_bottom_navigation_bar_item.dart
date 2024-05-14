import 'package:flutter/material.dart';
import 'package:ptc_test/widgets/constants.dart';
import 'package:svg_flutter/svg.dart';

class MyBottomNavigationBarItem extends StatelessWidget {
  const MyBottomNavigationBarItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onPressed,
  });
  final String icon;
  final String label;
  final void Function()? onPressed;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            color: isSelected ? primaryColor : Colors.black,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              color: isSelected ? primaryColor : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
