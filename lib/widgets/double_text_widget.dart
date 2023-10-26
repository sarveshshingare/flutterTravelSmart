import 'package:flutter/material.dart';
import 'package:travelsmart/utils/styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String BigText;
  final String smallText;
  const AppDoubleTextWidget(
      {Key? key, required this.BigText, required this.smallText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          BigText,
          style: Styles.headlineStyle2,
        ),
        InkWell(
          onTap: () {
            print("tapped");
          },
          child: Text(smallText,
              style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
        )
      ],
    );
  }
}
