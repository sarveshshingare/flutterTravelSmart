import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelsmart/screens/ticket_view.dart';
import 'package:travelsmart/utils/app_info_list.dart';
// import 'package:travelsmart/utils/app_layout.dart';
import 'package:travelsmart/utils/styles.dart';
import 'package:travelsmart/widgets/column_layout.dart';
import 'package:travelsmart/widgets/layout_builder_widget.dart';
import 'package:travelsmart/widgets/ticekt_tabs.dart';

class TicketScree extends StatelessWidget {
  const TicketScree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const Gap(40),
            Text(
              "Tickets",
              style: Styles.headlineStyle1,
            ),
            const Gap(20),
            const AppTicektTabs(firstTab: "Upcoming", secondTab: "Previous"),
            const Gap(20),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                        alignment: CrossAxisAlignment.start,
                        firstText: "Flutter DB",
                        secondText: "Passenger"),
                    AppColumnLayout(
                        alignment: CrossAxisAlignment.end,
                        firstText: "52210 35565",
                        secondText: "Passport")
                  ],
                ),
                Gap(20),
                const LayoutBuilderWidget(
                  sections: 15,
                  isColor: false,
                ),
                Gap(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                        alignment: CrossAxisAlignment.start,
                        firstText: "1564194 4849484",
                        secondText: "Number of E-ticket"),
                    AppColumnLayout(
                        alignment: CrossAxisAlignment.end,
                        firstText: "B2SG254",
                        secondText: "Booking code")
                  ],
                ),
                Gap(20),
                const LayoutBuilderWidget(
                  sections: 15,
                  isColor: false,
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/visa.png",
                              scale: 11,
                            ),
                            Text(
                              " *** 2462",
                              style: Styles.headlineStyle3,
                            ),
                          ],
                        ),
                        Gap(5),
                        Text(
                          "Payment method",
                          style: Styles.headlineStyle4,
                        )
                      ],
                    ),
                    const AppColumnLayout(
                        alignment: CrossAxisAlignment.end,
                        firstText: "\$249.5",
                        secondText: "Price")
                  ],
                ),
                Gap(20),
                Container(
                  decoration: BoxDecoration(color: Styles.bgColor),
                  height: 1,
                ),
                Gap(20),
//------------------------------ Bar code ------------------------------------------

                ClipRRect(
                  // borderRadius: BorderRadius.circular(15),
                  child: BarcodeWidget(
                    data:
                        'https://github.com/sarveshshingare/flutterTravelSmart',
                    barcode: Barcode.qrCode(),
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 120,
                  ),
                )
              ]),
            ),
            const Gap(20),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: TicketView(
                ticket: ticketList[0],
              ),
            ),
          ],
        ),
        Positioned(
          left: 24,
          top: 295,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        Positioned(
          right: 24,
          top: 295,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        )
      ]),
    );
  }
}
