import 'package:e_commerce/constants.dart';
import 'package:e_commerce/views/screens/otp/otp_screen.dart';
import 'package:e_commerce/views/screens/signUp/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../size_config.dart';
import '../../../shared/button_splash.dart';
import '../../../shared/form_error.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<String> errors = [];
  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProprationateScreenWidth(20)),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.04,
                      ),
                      Text(
                        "Forgot Password",
                        style: TextStyle(
                            fontSize: getProprationateScreenWidth(30),
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "please enter your email and we will send\n you a link to return to your account",
                        style: TextStyle(
                            color: kTextColor,
                            fontSize: getProprationateScreenWidth(14)),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.12,
                      ),
                      buildEmailFormField(AutofillHints.email),
                      FormError(errors: errors),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.12,
                      ),
                      ButtonSplash(
                        press: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();
                            Navigator.pushNamed(context, OtpScreen.routName);
                          }
                        },
                        text: 'continue',
                        width: double.infinity,
                      ),
                      SizedBox(
                        height: SizeConfig.screenHeight * 0.12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(
                                fontSize: getProprationateScreenWidth(16)),
                          ),
                          GestureDetector(
                            onTap: (() =>
                                Navigator.pushNamed(context, SignUp.routName)),
                            child: Text(
                              "Sign Up ",
                              style: TextStyle(
                                  fontSize: getProprationateScreenWidth(14),
                                  color: kPrimaryColor),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )));
  }

  TextFormField buildEmailFormField(String email) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: SvgPicture.asset(
            "assets/icons/Mail.svg",
            height: getProprationateScreenHeight(16),
            width: getProprationateScreenWidth(16),
          ),
        ),
      ),
    );
  }
}
