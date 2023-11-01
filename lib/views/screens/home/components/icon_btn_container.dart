import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class IconBTNContainer extends StatelessWidget {
  const IconBTNContainer({
    super.key,
    required this.svgImg,
    required this.onPress,
    required this.numOfItem,
  });
  final String svgImg;
  final void Function() onPress;
  final int numOfItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          if (numOfItem != 0)
            Positioned(
              right: 4,
              top: 4,
              child: Container(
                width: 15,
                height: 15,
                decoration: const BoxDecoration(
                    color: Colors.red, shape: BoxShape.circle),
                child: Text(
                  numOfItem.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          Container(
            width: getProprationateScreenWidth(46),
            height: getProprationateScreenHeight(46),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                shape: BoxShape.circle),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: SvgPicture.asset(svgImg),
            ),
          ),
        ],
      ),
    );
  }
}
