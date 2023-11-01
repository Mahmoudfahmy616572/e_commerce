import 'package:e_commerce/views/screens/profile/components/body.dart';
import 'package:e_commerce/views/shared/enum_menu.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import '../../shared/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static String routName = '/profile';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
        title: const Center(
          child: Text(
            "Profile",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: const Body(),
      bottomNavigationBar: const CustombuttonNavBar(
        selectedIcon: MenuState.home,
      ),
    );
  }
}
