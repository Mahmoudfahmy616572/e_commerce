import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

Row expiredTime() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "This code will expired in ",
        style: TextStyle(
          fontSize: getProprationateScreenWidth(15),
        ),
      ),
      TweenAnimationBuilder(
        tween: Tween(begin: 30.0, end: 0),
        duration: const Duration(seconds: 30),
        builder: (context, value, child) => Text(
          "00:${value.toInt()}",
          style: const TextStyle(color: kPrimaryColor),
        ),
        onEnd: () {},
      )
    ],
  );
}
