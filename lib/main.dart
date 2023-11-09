// ignore_for_file: deprecated_member_use

import 'package:e_commerce/routs.dart';
import 'package:e_commerce/views/screens/splash/splash_screen.dart';
import 'package:e_commerce/views/shared/thems.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: themeData(),
      home: const SplashScreen(),
      // initialRoute: SplashScreen.routName,
      routes: routes,
    );
  }
}
