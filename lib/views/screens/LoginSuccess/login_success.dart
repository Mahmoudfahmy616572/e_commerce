import 'package:e_commerce/views/screens/LoginSuccess/components/body.dart';
import 'package:flutter/material.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({super.key});
  static String routName = "/successScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(right: 55),
          child: Center(
            child: Text(
              'Login Success',
              textAlign: TextAlign.center,
              
            ),
          ),
        ),
      ),
      body: Body(),
    );
  }
}
