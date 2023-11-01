import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/views/screens/cart/components/body.dart';
import 'package:e_commerce/views/shared/button_splash.dart';
import 'package:flutter/material.dart';

import '../../../models/cart.dart';
import '../detials/components/round_icon_btn.dart';
import 'components/build_recipt_row.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});
  static String routName = '/cart';

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 17),
          child: RoundIconBTN(
            iconBTN: Icons.arrow_back_ios_new,
            press: () {
              Navigator.pop(context);
            },
          ),
        ),
        title: Center(
          child: Column(
            children: [
              Text(
                "Your Chart",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProprationateScreenWidth(20),
                    fontWeight: FontWeight.w500),
              ),
              Text('${demoCarts.length} Items'),
            ],
          ),
        ),
      ),
      body: const Body(),
      bottomNavigationBar: Container(
        height: 174,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, -15),
                  blurRadius: 20,
                  color: const Color(0xFFDADADA).withOpacity(0.15))
            ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              const BuildReciptRow(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Total :",
                          style: TextStyle(
                            fontSize: 15,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$174.58",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                  ButtonSplash(
                    text: "Check Out",
                    press: () {},
                    width: SizeConfig.screenWidth * 0.5,
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
