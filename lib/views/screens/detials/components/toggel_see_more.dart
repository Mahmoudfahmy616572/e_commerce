import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class ToggelSeeMore extends StatelessWidget {
  const ToggelSeeMore({
    super.key,
    required this.seeMore,
    this.press,
  });

  final bool seeMore;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProprationateScreenWidth(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextButton(
              onPressed: press,
              child: seeMore
                  ? const Text(
                      "See More Details",
                      style: TextStyle(color: kPrimaryColor, fontSize: 20),
                    )
                  : const Text(
                      "See Less Details",
                      style: TextStyle(color: kPrimaryColor, fontSize: 20),
                    )),
        ],
      ),
    );
  }
}
