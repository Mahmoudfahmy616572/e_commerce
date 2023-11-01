import 'package:e_commerce/constants.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Splashcontent extends StatelessWidget {
  final String text;
  final String img;
  const Splashcontent({
    super.key,
    required this.text,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        Text(
          "Cairo",
          style: TextStyle(
              fontSize: getProprationateScreenWidth(36),
              fontWeight: FontWeight.bold,
              color: kPrimaryColor),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          img,
          height: getProprationateScreenHeight(265),
          width: getProprationateScreenWidth(235),
        ),
      ],
    );
  }
}
