import 'package:flutter/material.dart';

class ModalRowItem extends StatelessWidget {
  const ModalRowItem({
    super.key,
    required this.label,
    required this.endLabel,
  });
  final String label;
  final String endLabel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF7C7C7C),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          Text(
            endLabel,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.black,
            size: 18.0,
          ),
        ],
      ),
    );
  }
}
