import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  const BuilderWidget({super.key, this.isColor, required this.sections});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // ignore: avoid_types_as_parameter_names
      builder: (BuildContext, BoxConstraints) {
        return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(sections, (index) => const Text('-')));
      },
    );
  }
}
