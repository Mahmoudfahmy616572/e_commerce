import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.text,
    this.press,
  });
  final String text;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProprationateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: getProprationateScreenWidth(18), color: Colors.black),
          ),
          GestureDetector(
            onTap: press,
            child: const Text(
              'See More',
              style: TextStyle(color: kTextColor),
            ),
          )
        ],
      ),
    );
  }
}
