// ignore_for_file: library_private_types_in_public_api

import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/views/screens/LoginSuccess/login_success.dart';
import 'package:e_commerce/views/screens/forgetPassword/forget_password.dart';
import 'package:e_commerce/views/screens/signUp/signup_screen.dart';
import 'package:e_commerce/views/shared/button_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants.dart';
import '../../../shared/form_error.dart';
import '../../../shared/social_container.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProprationateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProprationateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              const Text("Remember me"),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, ForgetPassword.routName);
                },
                child: const Text(
                  "Forget Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProprationateScreenHeight(20)),
          ButtonSplash(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                Navigator.pushNamed(context, LoginSuccess.routName);
              }
            },
            width: double.infinity,
          ),
          SizedBox(height: getProprationateScreenHeight(45)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MediaContainer(
                img: 'assets/icons/facebook-2.svg',
                press: () {},
              ),
              SizedBox(
                width: getProprationateScreenWidth(15),
              ),
              MediaContainer(
                img: 'assets/icons/google-icon.svg',
                press: () {},
              ),
              SizedBox(
                width: getProprationateScreenWidth(15),
              ),
              MediaContainer(
                img: 'assets/icons/twitter.svg',
                press: () {},
              ),
            ],
          ),
          SizedBox(height: getProprationateScreenHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account? ",
                style: TextStyle(fontSize: getProprationateScreenWidth(16)),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, SignUp.routName),
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
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: SvgPicture.asset(
            "assets/icons/Lock.svg",
            height: getProprationateScreenHeight(16),
            width: getProprationateScreenWidth(16),
          ),
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
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
