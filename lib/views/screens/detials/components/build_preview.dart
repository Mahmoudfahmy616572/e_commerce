import 'package:flutter/material.dart';

import '../../../../size_config.dart';
import '../../home/components/product_list.dart';
import 'build_small_preview.dart';

class BuildPreview extends StatefulWidget {
  const BuildPreview({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<BuildPreview> createState() => _BuildPreviewState();
}

class _BuildPreviewState extends State<BuildPreview> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProprationateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedImage = index;
                  });
                },
                child: BuildSmallPreview(
                  product: widget.product,
                  index: index,
                  selectedImage: selectedImage,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
