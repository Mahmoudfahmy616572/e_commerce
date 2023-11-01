import 'package:flutter/material.dart';

import '../../../../size_config.dart';
import '../../../shared/button_splash.dart';

class ButtonCart extends StatelessWidget {
  const ButtonCart({
    super.key,
    required this.press,
  });
  final void Function()? press;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Padding(
          padding: EdgeInsets.only(
              left: getProprationateScreenWidth(50),
              right: getProprationateScreenWidth(50),
              top: 20,
              bottom: 40),
          child: ButtonSplash(
            press: press,
            text: 'Add To Cart',
            width: double.infinity,
          ),
        ));
  }
}
