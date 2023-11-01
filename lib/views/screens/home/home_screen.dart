import 'package:e_commerce/views/screens/home/components/body.dart';
import 'package:flutter/material.dart';

import '../../shared/bottom_nav_bar.dart';
import '../../shared/enum_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routName = '/home';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustombuttonNavBar(
        selectedIcon: MenuState.profile,
      ),
    );
  }
}
