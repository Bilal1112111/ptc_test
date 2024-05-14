import 'package:flutter/material.dart';
import 'package:ptc_test/widgets/reusable_add_button.dart';

import 'constants.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    super.key,
    required this.path,
    required this.label,
    required this.description,
    required this.price,
  });
  final String path;
  final String label;
  final String description;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 100.0,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                path,
              ),
            ],
          ),
          const SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF7C7C7C),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ReusableAddButton(
                    size: 20,
                    borderRadius: 10,
                    backgroundColor: Colors.white,
                    icon: Icons.minimize_rounded,
                    iconColor: const Color(0xFFB3B3B3),
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFF0F0F0)),
                  ),
                  const Text(
                    '1',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  ReusableAddButton(
                    size: 20,
                    borderRadius: 10,
                    backgroundColor: Colors.white,
                    icon: Icons.add,
                    iconColor: primaryColor,
                    borderSide:
                        const BorderSide(width: 1, color: Color(0xFFF0F0F0)),
                  )
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(
                Icons.close,
                size: 20,
                color: Color(0xFFB3B3B3),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0.0),
                child: Text(
                  price,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
