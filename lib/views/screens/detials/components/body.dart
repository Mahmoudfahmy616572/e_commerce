import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/views/screens/detials/components/toggel_see_more.dart';
import 'package:e_commerce/views/screens/home/components/product_list.dart';
import 'package:flutter/material.dart';

import 'build_colors_container.dart';
import 'build_preview.dart';
import 'button_cart.dart';
import 'container_icon.dart';
import 'icon_favourite.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.product});
  final Product product;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isFavourite = false;
  bool seeMore = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              BuildPreview(product: widget.product),
              SizedBox(
                height: getProprationateScreenHeight(20),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      title(),
                      IconFavourite(
                        isFavourite: isFavourite,
                        press: () {
                          setState(() {
                            isFavourite = !isFavourite;
                          });
                        },
                      ),
                      SizedBox(
                        height: getProprationateScreenHeight(15),
                      ),
                      description(),
                      ToggelSeeMore(
                        seeMore: seeMore,
                        press: () {
                          setState(() {
                            seeMore = !seeMore;
                          });
                        },
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20, bottom: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BuildColorsContainer(
                                      product: widget.product,
                                    ),
                                    ContainerIcon(
                                      icon: Icons.remove,
                                      press: () {},
                                    ),
                                    ContainerIcon(
                                      icon: Icons.add,
                                      press: () {},
                                    )
                                  ]),
                            ),
                            ButtonCart(
                              press: () {
                                
                              },
                            )
                          ],
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ));
  }

  Padding title() {
    return Padding(
      padding: EdgeInsets.all(getProprationateScreenWidth(20)),
      child: Text(
        widget.product.title,
        style: const TextStyle(
            fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600),
      ),
    );
  }

  Padding description() {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProprationateScreenWidth(20)),
      child: Text(
        widget.product.description,
        maxLines: seeMore ? 2 : null,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
    );
  }
}
