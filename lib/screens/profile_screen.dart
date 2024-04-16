import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelsmart/utils/styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        children: [
          Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img_1.png"))),
              ),              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Gap(2),
                  Text(
                    "Book tickets",
                    style: Styles.headlineStyle1,
                  ),
                  Gap(2),
                  Text(
                    "New-York",
                    style: Styles.headlineStyle4,
                  ),
                  Gap(8),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xfffef4f3),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xfffef4f3),
                        borderRadius: BorderRadius.circular(100)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff526799)),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        Gap(5),
                        Text(
                          "Premium Status",
                          style: Styles.headlineStyle4.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff526799)),
                        ),
                        Gap(5)
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      print("tapped");
                    },
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(40),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                    color: Color(0xff526799),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Color(0xff526799),
                      ),
                    ),
                    Gap(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a  new award",
                          style: Styles.headlineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        Gap(5),
                        Text(
                          "You have 150 metros in a year",
                          style: Styles.headlineStyle4.copyWith(
                              color: Colors.grey.shade300,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  bottom: -50,
                  right: -45,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: Color.fromARGB(255, 23, 49, 146)),
                        color: Colors.transparent),
                  )),
            ],
          ),
          Gap(20),
          Text(
            "Accumulated miles",
            style: Styles.headlineStyle3,
          )
        ],
      ),
    );
  }
}
