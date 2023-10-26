import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelsmart/utils/app_layout.dart';
import 'package:travelsmart/utils/styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('hotel price ${hotel['price']}');

    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.65,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 2)
      ], color: Styles.primaryColor, borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"))),
          ),
          const Gap(10),
          Text(
           hotel['place'],
            style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: Styles.headlineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headlineStyle3.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
