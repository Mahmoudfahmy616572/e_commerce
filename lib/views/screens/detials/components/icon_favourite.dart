import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class IconFavourite extends StatelessWidget {
  const IconFavourite({
    super.key,
    required this.isFavourite,
    required this.press,
  });

  final bool isFavourite;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: press,
          child: Container(
            width: getProprationateScreenWidth(75),
            height: getProprationateScreenHeight(50),
            decoration: BoxDecoration(
                color: isFavourite
                    ? kPrimaryColor.withOpacity(0.2)
                    : kSecondaryColor.withOpacity(0.1),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: SvgPicture.asset('assets/icons/Heart Icon_2.svg',
                  color: isFavourite
                      ? const Color(0xFFFF4848)
                      : const Color(0xFFDBDEE4)),
            ),
          ),
        )
      ],
    );
  }
}
