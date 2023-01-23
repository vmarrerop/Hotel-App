import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final bool? isColor;
  final CrossAxisAlignment aligment;
  const AppColumnLayout(
      {super.key,
      this.isColor,
      required this.firstText,
      required this.secondText,
      required this.aligment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: aligment,
      children: [
        Text(
          firstText,
          style: Styles.headlineStyle3
              .copyWith(color: isColor == null ? Colors.white : Colors.black),
        ),
        const Gap(5),
        Text(secondText,
            style: Styles.headlineStyle4.copyWith(
                color: isColor == null
                    ? Colors.white
                    : const Color.fromARGB(255, 177, 177, 177))),
      ],
    );
  }
}
