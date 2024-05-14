import 'package:flutter/material.dart';

class ProductsCard extends StatelessWidget {
  const ProductsCard({
    super.key,
    required this.label,
    required this.path,
    required this.color,
  });
  final String label;
  final String path;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250.0,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(18),
        border: Border(
          top: BorderSide(
            width: 1.0,
            color: color,
          ),
          bottom: BorderSide(
            width: 1.0,
            color: color,
          ),
          left: BorderSide(
            width: 1.0,
            color: color,
          ),
          right: BorderSide(
            width: 1.0,
            color: color,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            path,
            width: 111.0,
            height: 74.0,
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: 85.0,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14.0),
            ),
          )
        ],
      ),
    );
  }
}
