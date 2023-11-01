import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';
import '../../home/components/product_list.dart';

class BuildSmallPreview extends StatelessWidget {
  const BuildSmallPreview({
    super.key,
    required this.product,
    required this.index, required this.selectedImage,
  });
  final int index;
  final Product product;
  final int selectedImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        width: getProprationateScreenWidth(55),
        height: getProprationateScreenHeight(55),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            border: selectedImage == index
                ? Border.all(
                    color: kPrimaryColor,
                  )
                : Border.all(
                    color: Colors.transparent,
                  )),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset(product.images[index]),
        ),
      ),
    );
  }
}
