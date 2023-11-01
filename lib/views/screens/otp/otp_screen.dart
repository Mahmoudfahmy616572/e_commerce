import 'package:e_commerce/views/screens/otp/components/body.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  static String routName = "/otp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(right: 55),
          child: Center(
            child: Text(
              'OTP Verifiction',
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
