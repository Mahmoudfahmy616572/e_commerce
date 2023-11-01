import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../size_config.dart';

class MediaContainer extends StatelessWidget {
  final String img;
  final void Function()? press;
  const MediaContainer({
    super.key,
    required this.img,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(getProprationateScreenWidth(12)),
        width: getProprationateScreenWidth(40),
        height: getProprationateScreenHeight(40),
        decoration: const BoxDecoration(
            color: Color(0xFFF5F6F9), shape: BoxShape.circle),
        child: SvgPicture.asset(img),
      ),
    );
  }
}
