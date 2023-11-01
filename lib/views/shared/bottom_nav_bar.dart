import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../screens/home/home_screen.dart';
import '../screens/profile/profile_screen.dart';
import 'enum_menu.dart';

class CustombuttonNavBar extends StatelessWidget {
  const CustombuttonNavBar({
    super.key,
    required this.selectedIcon,
  });
  final MenuState selectedIcon;

  @override
  Widget build(BuildContext context) {
    const Color inActivateIconColor = Color(0xFFD6D6D6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -15),
                blurRadius: 20,
                color: const Color(0xFFDADADA).withOpacity(0.15)),
          ]),
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routName),
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: MenuState.profile == selectedIcon
                      ? kPrimaryColor
                      : inActivateIconColor,
                )),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/Heart Icon.svg",
                  color: MenuState.favourite == selectedIcon
                      ? kPrimaryColor
                      : inActivateIconColor,
                )),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/Chat bubble Icon.svg",
                  color: MenuState.message == selectedIcon
                      ? kPrimaryColor
                      : inActivateIconColor,
                )),
            IconButton(
                onPressed: () =>
                    Navigator.pushNamed(context, ProfileScreen.routName),
                icon: SvgPicture.asset(
                  "assets/icons/User Icon.svg",
                  color: MenuState.home == selectedIcon
                      ? kPrimaryColor
                      : inActivateIconColor,
                )),
          ],
        ),
      )),
    );
  }
}
