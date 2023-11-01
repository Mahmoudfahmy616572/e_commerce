import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/views/screens/detials/details_screen.dart';
import 'package:e_commerce/views/screens/home/components/populer_product.dart';
import 'package:e_commerce/views/screens/home/components/section_title.dart';
import 'package:e_commerce/views/screens/home/components/special_banner.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'product_list.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProprationateScreenHeight(20)),
              const HomeHeader(),
              SizedBox(
                height: getProprationateScreenHeight(30),
              ),
              Column(
                children: [
                  const DiscountBanner(),
                  SizedBox(
                    height: getProprationateScreenHeight(30),
                  ),
                  const Categories(),
                  SizedBox(
                    height: getProprationateScreenHeight(30),
                  ),
                  const SpecialBanner(),
                  SizedBox(
                    height: getProprationateScreenHeight(30),
                  ),
                  Column(
                    children: [
                      SectionTitle(
                        text: 'Popular Products',
                        press: () {},
                      ),
                      SizedBox(height: getProprationateScreenHeight(20)),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          ...List.generate(
                              demoProduct.length,
                              (index) => PopulerBroduct(
                                    product: demoProduct[index],
                                    press: () {
                                      Navigator.pushNamed(
                                          context, DetailsScreen.routName,
                                          arguments: ProductDetailsArguments(
                                              product: demoProduct[index]));
                                    },
                                  )),
                          SizedBox(
                            width: getProprationateScreenWidth(20),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
