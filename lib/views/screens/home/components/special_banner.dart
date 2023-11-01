import 'package:e_commerce/views/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../../size_config.dart';
import 'image_banner.dart';

class SpecialBanner extends StatelessWidget {
  const SpecialBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Special for you',
          press: () {},
        ),
        SizedBox(
          height: getProprationateScreenHeight(15),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ImagePanner(
                img: 'assets/images/Image Banner 2.png',
                category: 'SmartPhone',
                numOfBrand: 15,
                press: () {},
              ),
              ImagePanner(
                img: 'assets/images/Image Banner 3.png',
                category: 'Fashion',
                numOfBrand: 18,
                press: () {},
              ),
              SizedBox(
                width: getProprationateScreenWidth(10),
              )
            ],
          ),
        )
      ],
    );
  }
}
