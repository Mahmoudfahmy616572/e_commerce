import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';

class RatingAppBar extends StatelessWidget {
  const RatingAppBar({
    super.key,
    required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: Colors.white,
        ),
        child: Row(children: [
          Text(
            rating.toString(),
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: kTextColor),
          ),
          const SizedBox(
            width: 5,
          ),
          SvgPicture.asset(
            "assets/icons/Star Icon.svg",
            fit: BoxFit.contain,
          )
        ]),
      ),
    );
  }
}
