import 'package:e_commerce/views/screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';
import 'icon_btn_container.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProprationateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(22)),
            width: SizeConfig.screenWidth * 0.6,
            child: TextFormField(
              decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: 'Search Product',
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: getProprationateScreenWidth(20),
                      vertical: getProprationateScreenHeight(9))),
            ),
          ),
          IconBTNContainer(
            numOfItem: 0,
            onPress: () {
              Navigator.pushNamed(context, Cart.routName);
            },
            svgImg: "assets/icons/Cart Icon.svg",
          ),
          IconBTNContainer(
            numOfItem: 23,
            onPress: () {},
            svgImg: "assets/icons/Bell.svg",
          ),
        ],
      ),
    );
  }
}
