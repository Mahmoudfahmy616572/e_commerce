import 'package:flutter/material.dart';

import 'build_profile_bar.dart';
import 'image_profile.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(children: const [
        SizedBox(
          height: 20,
        ),
        ImageProfile(),
        SizedBox(
          height: 20,
        ),
        BuildProfileBar(
          icon: 'assets/icons/User Icon.svg',
          text: 'My Account',
        ),
        BuildProfileBar(
          icon: 'assets/icons/Bell.svg',
          text: 'Notifications',
        ),
        BuildProfileBar(
          icon: 'assets/icons/Settings.svg',
          text: 'Sesttings',
        ),
        BuildProfileBar(
          icon: 'assets/icons/Question mark.svg',
          text: 'Help Center',
        ),
        BuildProfileBar(
          icon: 'assets/icons/Log out.svg',
          text: 'Log Out',
        ),
      ]),
    );
  }
}
