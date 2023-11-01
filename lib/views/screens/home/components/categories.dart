import 'package:e_commerce/views/screens/detials/details_screen.dart';
import 'package:e_commerce/views/screens/home/components/product_list.dart';
import 'package:flutter/material.dart';

import '../../../../size_config.dart';
import 'category_cart.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", 'text': "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", 'text': "Bill"},
      {"icon": "assets/icons/Game Icon.svg", 'text': "Game"},
      {"icon": "assets/icons/Gift Icon.svg", 'text': "Daily Gift"},
      {"icon": "assets/icons/Discover.svg", 'text': "More"},
    ];
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProprationateScreenWidth(20)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(
                categories.length,
                (index) => CategoryCart(
                    icon: categories[index]["icon"],
                    press: () {
                      Navigator.pushNamed(context, DetailsScreen.routName,
                          arguments: ProductDetailsArguments(
                              product: demoProduct[index]));
                    },
                    text: '${categories[index]["text"]}')),
          ]),
    );
  }
}
