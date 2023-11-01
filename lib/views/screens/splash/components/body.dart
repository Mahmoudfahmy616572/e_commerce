import 'package:e_commerce/constants.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/views/screens/signin/login_screen.dart';
import 'package:e_commerce/views/screens/splash/components/splash_content.dart';
import 'package:e_commerce/views/shared/button_splash.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentpage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Cairo , let's shop!",
      "image": "assets/images/splash_1.png",
    },
    {
      "text": "We help people connect to store\naround United Stat of America",
      "image": "assets/images/splash_2.png",
    },
    {
      "text": "We show the easy way to shop.\nJust stay at home with us",
      "image": "assets/images/splash_3.png",
    }
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: ((value) {
                    setState(() {
                      currentpage = value;
                    });
                  }),
                  itemCount: splashData.length,
                  itemBuilder: ((context, index) => Splashcontent(
                        img: "${splashData[index]["image"]}",
                        text: "${splashData[index]["text"]}",
                      )))),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    ButtonSplash(
                      text: 'Continue',
                      press: () {
                        Navigator.pushNamed(context, LoginScreen.routName);
                      },
                      width: double.infinity,
                    ),
                    const Spacer()
                  ],
                ),
              ))
        ],
      ),
    ));
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      width: currentpage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
          color: currentpage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
