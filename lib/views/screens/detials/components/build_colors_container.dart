import 'package:e_commerce/views/screens/home/components/product_list.dart';
import 'package:flutter/material.dart';

import 'color_container.dart';

class BuildColorsContainer extends StatefulWidget {
  const BuildColorsContainer({
    super.key,
    required this.product,
  });
  final Product product;

  @override
  State<BuildColorsContainer> createState() => _BuildColorsContainerState();
}

class _BuildColorsContainerState extends State<BuildColorsContainer> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
          widget.product.colors.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                isSelected = index;
              });
            },
            child: ColorsContainer(
              colors: widget.product.colors[index],
              isSelected: isSelected,
              index: index,
            ),
          ),
        )
      ],
    );
  }
}
