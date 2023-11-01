import 'package:e_commerce/constants.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/views/screens/LoginSuccess/login_success.dart';
import 'package:e_commerce/views/screens/cart/cart_screen.dart';
import 'package:e_commerce/views/screens/completeProfileScreen/complete_profile_screen.dart';
import 'package:e_commerce/views/screens/detials/details_screen.dart';
import 'package:e_commerce/views/screens/forgetPassword/forget_password.dart';
import 'package:e_commerce/views/screens/home/home_screen.dart';
import 'package:e_commerce/views/screens/otp/otp_screen.dart';
import 'package:e_commerce/views/screens/profile/profile_screen.dart';
import 'package:e_commerce/views/screens/signUp/signup_screen.dart';
import 'package:e_commerce/views/screens/signin/login_screen.dart';
import 'package:e_commerce/views/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routName: (context) => const SplashScreen(),
  LoginScreen.routName: (context) => const LoginScreen(),
  ForgetPassword.routName: (context) => const ForgetPassword(),
  LoginSuccess.routName: (context) => const LoginSuccess(),
  SignUp.routName: (context) => const SignUp(),
  CompleteProfileScreen.routName: (context) => const CompleteProfileScreen(),
  OtpScreen.routName: (context) => const OtpScreen(),
  HomeScreen.routName: (context) => const HomeScreen(),
  DetailsScreen.routName: (context) => const DetailsScreen(),
  Cart.routName: (context) => const Cart(),
  ProfileScreen.routName: (context) => const ProfileScreen(),
};

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProprationateScreenWidth(15)),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(22),
      borderSide: const BorderSide(color: kTextColor));
}
