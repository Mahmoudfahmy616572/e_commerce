import 'package:e_commerce/views/screens/completeProfileScreen/complete_profile_screen.dart';
import 'package:e_commerce/views/shared/form_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';
import '../../../shared/button_splash.dart';
import '../../../shared/social_container.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? confirmPassword;
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
          signUpEmailForm(),
          SizedBox(height: getProprationateScreenHeight(30)),
          signUpPasswordForm(),
          SizedBox(height: getProprationateScreenHeight(30)),
          signUpConfirmPasswordForm(),
          FormError(errors: errors),
          SizedBox(height: getProprationateScreenHeight(30)),
          ButtonSplash(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, CompleteProfileScreen.routName);
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
          SizedBox(height: getProprationateScreenHeight(10)),
          const Text(
            "By continuing your confirm that you agree \n with our Term and our Condition",
            style: TextStyle(color: kTextColor),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  TextFormField signUpConfirmPasswordForm() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == confirmPassword) {
          removeError(error: kMatchPassError);
        }
        confirmPassword = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "re-enter your password",
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

  TextFormField signUpPasswordForm() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
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

  TextFormField signUpEmailForm() {
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
