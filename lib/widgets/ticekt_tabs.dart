import 'package:flutter/material.dart';
import 'package:travelsmart/utils/app_layout.dart';

class AppTicektTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicektTabs(
      {Key? key, required this.firstTab, required this.secondTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xfff4f6fd)),
        child: Row(children: [
          Container(
            width: size.width * 0.44,
            padding: const EdgeInsets.symmetric(vertical: 7),
            decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(20)),
                color: Colors.white),
            child: Center(child: Text(firstTab)),
          ),

          // -------------------------hotels---------------------------------
          Container(
            width: size.width * 0.44,
            padding: const EdgeInsets.symmetric(vertical: 7),
            decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(20)),
                color: Colors.transparent),
            child: Center(child: Text(secondTab)),
          )
        ]),
      ),
    );
  }
}
