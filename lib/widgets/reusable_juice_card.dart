import 'package:flutter/material.dart';
import 'package:ptc_test/widgets/reusable_add_button.dart';

class JuiceCard extends StatelessWidget {
  const JuiceCard({
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
      padding: const EdgeInsets.only(top: 10.0),
      width: 180,
      height: 350.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xFFE2E2E2),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            path,
            width: 70.0,
            height: 80.0,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 115.0,
                  child: Text(
                    label,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  width: 80.0,
                  child: Text(
                    description,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Color(0xFF7C7C7C),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Color(0xFF181725),
                      ),
                    ),
                    const Spacer(),
                    ReusableAddButton(size: 30.0, borderRadius: 13.0)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
