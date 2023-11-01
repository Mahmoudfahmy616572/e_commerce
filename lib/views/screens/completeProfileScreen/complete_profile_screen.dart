import 'package:e_commerce/views/screens/completeProfileScreen/components/body.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});
  static String routName = "/completeProfileScreen";

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
      body: const Body(),
    );
  }
}
