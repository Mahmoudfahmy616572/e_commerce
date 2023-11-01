import 'package:flutter/material.dart';

import '../../../../size_config.dart';

class RoundIconBTN extends StatelessWidget {
  const RoundIconBTN({
    super.key,
    required this.iconBTN,
    required this.press,
  });
  final IconData iconBTN;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: getProprationateScreenWidth(40),
        height: getProprationateScreenHeight(40),
        child: InkWell(
          borderRadius: BorderRadius.circular(55),
          onTap: press,
          child: Container(
              padding: EdgeInsets.zero,
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Icon(iconBTN)),
        ));
  }
}
