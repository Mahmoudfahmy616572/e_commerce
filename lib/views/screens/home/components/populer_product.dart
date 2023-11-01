import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';
import 'product_list.dart';

class PopulerBroduct extends StatefulWidget {
  const PopulerBroduct({
    super.key,
    required this.product,
    required this.press,
  });
  final Product product;
  final void Function()? press;

  @override
  State<PopulerBroduct> createState() => _PopulerBroductState();
}

class _PopulerBroductState extends State<PopulerBroduct> {
  bool isFavourite = false;
  toggelFav() {
    setState(() {
      isFavourite = !isFavourite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: SizedBox(
        width: getProprationateScreenWidth(140),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProprationateScreenWidth(20)),
                  decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(widget.product.images[0]),
                ),
              ),
              Text(
                widget.product.title,
                maxLines: 2,
                style: const TextStyle(color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${widget.product.price}',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: getProprationateScreenWidth(18),
                        fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      toggelFav();
                    },
                    child: Container(
                      padding: EdgeInsets.all(getProprationateScreenWidth(5)),
                      width: getProprationateScreenWidth(28),
                      height: getProprationateScreenHeight(28),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isFavourite
                            ? kPrimaryColor.withOpacity(0.2)
                            : kSecondaryColor.withOpacity(0.1),
                      ),
                      child: SvgPicture.asset('assets/icons/Heart Icon_2.svg',
                          color: isFavourite
                              ? const Color(0xFFFF4848)
                              : const Color(0xFFDBDEE4)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
