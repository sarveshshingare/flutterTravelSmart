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
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 425,
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 3,
                          spreadRadius: 3)
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/sit.jpg"))),
                    ),
                    const Gap(20),
                    Text(
                      "20% discount on early booking. Don't miss the chance ",
                      style: Styles.headlineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Color(0xff3ab8b8),
                            borderRadius: BorderRadius.circular(18)),
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(10),
                            Text(
                              "Take the survey about our services and get discounts ",
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: Color(0xff189999)),
                                color: Colors.transparent),
                          )),
                    ],
                  ),
                  const Gap(15),
                  Container(
                    width: size.width * 0.44,
                    height: 210,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xffec6545)),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: Styles.headlineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(5),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(text: '😍', style: TextStyle(fontSize: 30)),
                          TextSpan(text: '🥰', style: TextStyle(fontSize: 42)),
                          TextSpan(text: '😘', style: TextStyle(fontSize: 30))
                        ]))
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
