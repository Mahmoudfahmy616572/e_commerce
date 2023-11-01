import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/views/shared/button_splash.dart';
import 'package:flutter/material.dart';

import '../../../../routs.dart';
import 'otp_timer.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late FocusNode pin2focusNode;
  late FocusNode pin3focusNode;
  late FocusNode pin4focusNode;
  @override
  void initState() {
    super.initState();
    pin2focusNode = FocusNode();
    pin3focusNode = FocusNode();
    pin4focusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2focusNode.dispose();
    pin3focusNode.dispose();
    pin4focusNode.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProprationateScreenWidth(20)),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                Text(
                  "OTP Verifiction",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProprationateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "We sent your code to +20 0101331****",
                  style: TextStyle(fontSize: getProprationateScreenWidth(15)),
                  textAlign: TextAlign.center,
                ),
                expiredTime(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: otpForm(),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.15,
                ),
                ButtonSplash(
                    text: "Continue", press: () {}, width: double.infinity),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.2,
                ),
                Text(
                  "Resend OTP Code",
                  style: TextStyle(
                      fontSize: getProprationateScreenWidth(14),
                      decoration: TextDecoration.underline),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row otpForm() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: getProprationateScreenWidth(60),
          child: TextFormField(
            autofocus: true,
            keyboardType: TextInputType.number,
            obscureText: true,
            style: TextStyle(fontSize: getProprationateScreenWidth(20)),
            textAlign: TextAlign.center,
            decoration: otpInputDecoration,
            onChanged: (value) {
              nextField(value: value, focusNode: pin2focusNode);
            },
          ),
        ),
        SizedBox(
          width: getProprationateScreenWidth(60),
          child: TextFormField(
            focusNode: pin2focusNode,
            autofocus: true,
            keyboardType: TextInputType.number,
            obscureText: true,
            style: TextStyle(fontSize: getProprationateScreenWidth(20)),
            textAlign: TextAlign.center,
            decoration: otpInputDecoration,
            onChanged: (value) {
              nextField(value: value, focusNode: pin3focusNode);
            },
          ),
        ),
        SizedBox(
          width: getProprationateScreenWidth(60),
          child: TextFormField(
            focusNode: pin3focusNode,
            autofocus: true,
            keyboardType: TextInputType.number,
            obscureText: true,
            style: TextStyle(fontSize: getProprationateScreenWidth(20)),
            textAlign: TextAlign.center,
            decoration: otpInputDecoration,
            onChanged: (value) {
              nextField(value: value, focusNode: pin4focusNode);
            },
          ),
        ),
        SizedBox(
          width: getProprationateScreenWidth(60),
          child: TextFormField(
            focusNode: pin4focusNode,
            autofocus: true,
            keyboardType: TextInputType.number,
            obscureText: true,
            style: TextStyle(fontSize: getProprationateScreenWidth(20)),
            textAlign: TextAlign.center,
            decoration: otpInputDecoration,
            onChanged: (value) {
              pin4focusNode.unfocus();
            },
          ),
        ),
      ],
    );
  }
}
