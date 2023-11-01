import 'package:e_commerce/views/screens/signUp/components/signup_form.dart';
import 'package:flutter/material.dart';

import '../../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Register Account",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProprationateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "complete your details or continue\nwith social media",
                style: TextStyle(fontSize: getProprationateScreenWidth(15)),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.055),
              const SignUpForm()
            ],
          ),
        ),
      ),
    );
  }
}
