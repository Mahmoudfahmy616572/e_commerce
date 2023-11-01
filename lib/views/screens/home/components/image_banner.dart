import 'package:flutter/material.dart';

import '../../../../size_config.dart';

class ImagePanner extends StatelessWidget {
  const ImagePanner({
    super.key,
    required this.category,
    required this.img,
    required this.numOfBrand,
    required this.press,
  });
  final String category;
  final String img;
  final int numOfBrand;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          height: getProprationateScreenHeight(100),
          width: getProprationateScreenWidth(242),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(22)),
            child: Stack(
              children: [
                Image.asset(img, fit: BoxFit.cover),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    const Color(0xFF343434).withOpacity(0.4),
                    const Color(0xFF343434).withOpacity(0.14)
                  ])),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProprationateScreenWidth(20),
                      vertical: getProprationateScreenHeight(15)),
                  child: Text.rich(TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                            text: '$category\n',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        TextSpan(text: '$numOfBrand Brands'),
                      ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
