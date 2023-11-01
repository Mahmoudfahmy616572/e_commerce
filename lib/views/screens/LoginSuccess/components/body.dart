import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/views/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../shared/button_splash.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.08,
        ),
        Text(
          "Login Success",
          style: TextStyle(
              fontSize: getProprationateScreenWidth(30),
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        ButtonSplash(
          press: () {
            Navigator.pushNamed(context, HomeScreen.routName);
          },
          text: 'Back to home',
          width: MediaQuery.of(context).size.width * 0.5,
        ),
        const Spacer()
      ],
    );
  }
}
