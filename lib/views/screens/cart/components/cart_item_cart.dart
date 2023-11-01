import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../models/cart.dart';
import '../../../../size_config.dart';

class CartItemsCart extends StatelessWidget {
  const CartItemsCart({
    super.key,
    required this.cart,
  });
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            width: getProprationateScreenWidth(90),
            child: AspectRatio(
              aspectRatio: 0.90,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200),
                child: Image.asset(
                  cart.product.images[0],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: getProprationateScreenWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              maxLines: 2,
              style: const TextStyle(color: Color.fromARGB(255, 63, 53, 53)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text.rich(TextSpan(
                text: "\$${cart.product.price}",
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor),
                children: [
                  TextSpan(
                    text: "  x${cart.numOfItems}",
                    style: const TextStyle(
                      color: kTextColor,
                      fontSize: 16,
                    ),
                  )
                ]))
          ],
        )
      ],
    );
  }
}
