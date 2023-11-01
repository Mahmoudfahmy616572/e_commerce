import 'package:flutter/material.dart';

import '../../../../constants.dart';

class ContainerIcon extends StatelessWidget {
  const ContainerIcon({
    super.key,
    required this.icon,
    required this.press,
  });
  final IconData? icon;
  final void Function()? press;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: 50,
        height: 50,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.white,),
        child: Icon(
          icon,
          color: kTextColor,
          size: 25,
        ),
      ),
    );
  }
}
