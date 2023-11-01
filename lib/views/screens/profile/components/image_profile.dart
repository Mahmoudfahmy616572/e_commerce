import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage("assets/images/Profile Image.png"),
          radius: 63,
        ),
        Positioned(
            right: 0,
            bottom: 0,
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(100),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey.shade200),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
                ),
              ),
            )),
      ],
    );
  }
}
