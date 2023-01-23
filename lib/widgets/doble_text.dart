import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class DoubleText extends StatelessWidget {
  final String main;
  final String sub;
  const DoubleText({super.key, required this.main, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          main,
          style: Styles.headlineStyle2,
        ),
        InkWell(
          onTap: () {},
          child: Text(sub,
              style: Styles.textStyle.copyWith(
                color: Styles.primaryColor,
              )),
        )
      ],
    );
  }
}
