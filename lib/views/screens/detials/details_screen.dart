import 'package:e_commerce/views/screens/detials/components/body.dart';
import 'package:e_commerce/views/screens/home/components/product_list.dart';
import 'package:flutter/material.dart';

import 'components/rating_appbar.dart';
import 'components/round_icon_btn.dart';

class DetailsScreen extends StatelessWidget {
  static String routName = '/details';

  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
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
        actions: [
          RatingAppBar(
            rating: arguments.product.rating,
          )
        ],
      ),
      body: Body(
        product: arguments.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
