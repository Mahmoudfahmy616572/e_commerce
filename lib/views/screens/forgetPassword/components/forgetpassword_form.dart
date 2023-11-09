import 'package:e_commerce/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../size_config.dart';

class ForgetPasswordForm extends StatefulWidget {
  const ForgetPasswordForm({
    super.key,
  });

  @override
  State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
  @override
  Widget build(BuildContext context) {
    final List<String> errors = [];
    // ignore: unused_local_variable
    String email;

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
