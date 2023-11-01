import 'package:e_commerce/constants.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class ButtonSplash extends StatelessWidget {
  final String text;
  final Function()? press;
  final double? width;
  const ButtonSplash({
    super.key,
    required this.text,
    required this.press,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: width,
        height: getProprationateScreenHeight(56),
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: getProprationateScreenWidth(18)),
          ),
        ),
      ),
    );
  }
}
