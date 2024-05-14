import 'package:flutter/material.dart';

import 'constants.dart';

class ReusableTextForm extends StatelessWidget {
  ReusableTextForm({
    super.key,
    required this.hintText,
    this.suffixIcon,
  });
  final String hintText;
  IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFE2E2E2),
          ),
        ),
        contentPadding: const EdgeInsets.all(5),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w300,
        ),
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: () {},
                icon: Icon(
                  suffixIcon,
                  size: 22,
                ),
              )
            : null,
      ),
      cursorColor: primaryColor,
    );
  }
}
