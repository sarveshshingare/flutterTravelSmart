import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelsmart/utils/app_layout.dart';
import 'package:travelsmart/utils/styles.dart';
import 'package:travelsmart/widgets/double_text_widget.dart';
import 'package:travelsmart/widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(40),
          Text(
            "What are\nyou looking for?",
            style: Styles.headlineStyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          FittedBox(
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
                  child: const Center(child: Text("Airline tickets")),
                ),

                // -------------------------hotels---------------------------------
                Container(
                  width: size.width * 0.44,
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(20)),
                      color: Colors.transparent),
                  child: const Center(child: Text("Hotels")),
                )
              ]),
            ),
          ),
          const Gap(25),
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: "departure"),
          const Gap(15),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),

          // ------------------------------------------------
          Gap(15),
          Container(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
            decoration: BoxDecoration(
                color: Color(0xd91130ce),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "find tickets",
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          const Gap(40),
          const AppDoubleTextWidget(
              BigText: "Upcoming Metros", smallText: "View all"),
        ],
      ),
    );
  }
}
