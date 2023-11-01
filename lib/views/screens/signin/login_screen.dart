import 'package:e_commerce/views/screens/signin/components/body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static String routName = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(right: 55),
          child: Center(
            child: Text(
              'Sign in',
              textAlign: TextAlign.center,
              // style: TextStyle(color: Color(0XFF8B8B8B)
              // ),
            ),
          ),
        ),
      ),
      body: const SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Body(),
          )),
    );
  }
}
