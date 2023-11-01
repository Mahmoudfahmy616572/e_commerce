import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class BuildReciptRow extends StatelessWidget {
  const BuildReciptRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Container(
            padding: EdgeInsets.all(getProprationateScreenWidth(15)),
            width: getProprationateScreenWidth(50),
            height: getProprationateScreenHeight(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.shade200,
            ),
            child: SvgPicture.asset("assets/icons/receipt.svg"),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              Text(
                'Add voucher code',
                style: TextStyle(fontSize: getProprationateScreenWidth(14)),
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.arrow_back_ios,
                textDirection: TextDirection.rtl,
                size: 18,
                color: kTextColor,
              )
            ],
          ),
        )
      ],
    );
  }
}
