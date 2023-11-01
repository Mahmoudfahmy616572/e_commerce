import 'package:e_commerce/views/screens/forgetPassword/components/body.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});
  static String routName = "/forgetPassword";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(right: 55),
          child: Center(
            child: Text(
              'Forgot Password',
              textAlign: TextAlign.center,
              // style: TextStyle(color: Color(0XFF8B8B8B)
              // ),
            ),
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
