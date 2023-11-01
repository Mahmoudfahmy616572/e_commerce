import 'package:e_commerce/constants.dart';
import 'package:flutter/material.dart';

class ColorsContainer extends StatefulWidget {
  const ColorsContainer(
      {super.key,
      required this.colors,
      this.isSelected = 0,
      required this.index});
  final Color? colors;
  final int isSelected;
  final int index;

  @override
  State<ColorsContainer> createState() => _ColorsContainerState();
}

class _ColorsContainerState extends State<ColorsContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(
              color: widget.isSelected == widget.index
                  ? kPrimaryColor
                  : Colors.transparent),
          shape: BoxShape.circle),
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(shape: BoxShape.circle, color: widget.colors),
      ),
    );
  }
}
