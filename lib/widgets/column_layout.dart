import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelsmart/utils/styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.alignment,
      this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headlineStyle3,
        ),
        const Gap(5),
        Text(
          secondText,
          style: Styles.headlineStyle4,
        )
      ],
    );
  }
}
