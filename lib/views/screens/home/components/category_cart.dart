import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class CategoryCart extends StatelessWidget {
  const CategoryCart({
    super.key,
    required this.icon,
    required this.text,
    required this.press,
  });
  final String icon;
  final String text;
  final void Function()? press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProprationateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProprationateScreenHeight(15)),
                decoration: BoxDecoration(
                    color: const Color(0xFFFFECDF),
                    borderRadius: BorderRadius.circular(12)),
                child: SvgPicture.asset(icon),
              ),
            ),
            SizedBox(
              height: getProprationateScreenHeight(10),
            ),
            Text(
              text,
              style: const TextStyle(color: kTextColor),
            )
          ],
        ),
      ),
    );
  }
}

