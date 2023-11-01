import 'package:e_commerce/views/screens/otp/otp_screen.dart';
import 'package:e_commerce/views/shared/form_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';
import '../../../shared/button_splash.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({
    super.key,
  });

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String? lastName;
  String? firstName;
  String? address;
  String? phone;

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
          SizedBox(height: SizeConfig.screenHeight * 0.055),
          firstNameForm(),
          SizedBox(
            height: getProprationateScreenHeight(20),
          ),
          lastNameForm(),
          SizedBox(
            height: getProprationateScreenHeight(20),
          ),
          phoneNumberForm(),
          SizedBox(
            height: getProprationateScreenHeight(20),
          ),
          pointAddressForm(),
          FormError(errors: errors),
          SizedBox(
            height: getProprationateScreenHeight(40),
          ),
          ButtonSplash(
              text: 'continue',
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();

                  Navigator.pushNamed(context, OtpScreen.routName);
                }
              },
              width: double.infinity),
          SizedBox(
            height: getProprationateScreenHeight(40),
          ),
          const Text(
            "By continuing your confirm that you agree \n with our Term and our Condition",
            style: TextStyle(color: kTextColor),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: getProprationateScreenHeight(20),
          ),
        ],
      ),
    );
  }

  TextFormField pointAddressForm() {
    return TextFormField(
      keyboardType: TextInputType.streetAddress,
      onSaved: (newValue) => address = newValue,
      obscureText: false,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your Address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: SvgPicture.asset(
            "assets/icons/Location point.svg",
            height: getProprationateScreenHeight(16),
            width: getProprationateScreenWidth(16),
          ),
        ),
      ),
    );
  }

  TextFormField phoneNumberForm() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phone = newValue,
      obscureText: false,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your Phone number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SvgPicture.asset(
            "assets/icons/Phone.svg",
            height: getProprationateScreenHeight(16),
            width: getProprationateScreenWidth(16),
          ),
        ),
      ),
    );
  }

  TextFormField lastNameForm() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: false,
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "LasttName",
        hintText: "Enter your last name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: SvgPicture.asset(
            "assets/icons/User.svg",
            height: getProprationateScreenHeight(16),
            width: getProprationateScreenWidth(16),
          ),
        ),
      ),
    );
  }

  TextFormField firstNameForm() {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: false,
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "FirstName",
        hintText: "Enter your first name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: SvgPicture.asset(
            "assets/icons/User.svg",
            height: getProprationateScreenHeight(16),
            width: getProprationateScreenWidth(16),
          ),
        ),
      ),
    );
  }
}
