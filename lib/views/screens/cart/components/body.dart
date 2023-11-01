import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../models/cart.dart';
import 'cart_item_cart.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
              key: Key(demoCarts[index].product.toString()),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(color: Color(0xFFFFE6E6)),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  SvgPicture.asset(
                    "assets/icons/Trash.svg",
                    color: Colors.red,
                  )
                ]),
              ),
              onDismissed: (direction) {
                setState(() {
                  demoCarts.removeAt(index);
                });
              },
              child: CartItemsCart(
                cart: demoCarts[index],
              ),
            ),
          );
        });
  }
}
