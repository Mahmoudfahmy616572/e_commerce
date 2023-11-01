import 'package:e_commerce/views/screens/signUp/components/body.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  static String routName = "/signup";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(right: 55),
          child: Center(
            child: Text(
              'Sign Up',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
