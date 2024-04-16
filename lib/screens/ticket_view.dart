import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelsmart/utils/app_layout.dart';
import 'package:travelsmart/utils/styles.dart';
import 'package:travelsmart/widgets/layout_builder_widget.dart';
import 'package:travelsmart/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
          margin: EdgeInsets.only(right: 16),
          child: Column(
            children: [
              // responsible for the blue part of the card/ticket
              Container(
                decoration: BoxDecoration(
                    color: isColor == null ? Color(0xFF526799) : Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticket['from']['code'],
                          style: isColor == null
                              ? Styles.headlineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle3,
                        ),
                        Expanded(child: Container()),
                        const ThickContainer(
                          isColor: false,
                        ),
                        Expanded(
                            child: Stack(children: [
                          const SizedBox(
                              height: 24,
                              child: LayoutBuilderWidget(
                                sections: 8,
                                isColor: false,
                              )),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : Color(0xff8accf7),
                              ),
                            ),
                          ),
                        ])),
                        const ThickContainer(
                          isColor: true,
                        ),
                        Expanded(child: Container()),
                        Text(
                          ticket['to']['code'],
                          style: isColor == null
                              ? Styles.headlineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle3,
                        )
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text(
                            ticket['from']['name'],
                            style: isColor == null
                                ? Styles.headlineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headlineStyle4,
                          ),
                        ),
                        Text(
                          ticket['flying_time'],
                          style: isColor == null
                              ? Styles.headlineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headlineStyle4,
                        ),
                        SizedBox(
                          width: 100,
                          child: Text(
                            ticket['to']['name'],
                            textAlign: TextAlign.end,
                            style: isColor == null
                                ? Styles.headlineStyle4.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.headlineStyle4,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // responsible for the orange part of the card/ticket

              Container(
                color: isColor == null ? Styles.orangeColor : Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: isColor == null
                                  ? Colors.grey.shade200
                                  : Colors.white,
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(10)))),
                    ),
                    const Expanded(
                      child: Padding(
                          padding: EdgeInsets.all(6.0),
                          child: LayoutBuilderWidget(
                            sections: 15,
                            isColor: false,
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  topLeft: Radius.circular(10)))),
                    )
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                    color: isColor == null ? Styles.orangeColor : Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                        bottomRight:
                            Radius.circular(isColor == null ? 21 : 0))),
                padding: const EdgeInsets.only(
                    left: 16, top: 10, right: 16, bottom: 16),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // -------------------------------------------

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ticket['date'],
                                style: isColor == null
                                    ? Styles.headlineStyle3
                                        .copyWith(color: Colors.white)
                                    : Styles.headlineStyle3,
                              ),
                              const Gap(5),
                              Text(
                                "Date",
                                style: isColor == null
                                    ? Styles.headlineStyle4
                                        .copyWith(color: Colors.white)
                                    : Styles.headlineStyle4,
                              )
                            ],
                          ),

                          // -------------------------------------------
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                ticket['departure_time'],
                                style: isColor == null
                                    ? Styles.headlineStyle3
                                        .copyWith(color: Colors.white)
                                    : Styles.headlineStyle3,
                              ),
                              const Gap(5),
                              Text(
                                "Departure Time",
                                style: isColor == null
                                    ? Styles.headlineStyle4
                                        .copyWith(color: Colors.white)
                                    : Styles.headlineStyle4,
                              )
                            ],
                          ),

                          // -------------------------------------------
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                ticket['number'].toString(),
                                style: isColor == null
                                    ? Styles.headlineStyle3
                                        .copyWith(color: Colors.white)
                                    : Styles.headlineStyle3,
                              ),
                              const Gap(5),
                              Text(
                                "Number",
                                style: isColor == null
                                    ? Styles.headlineStyle4
                                        .copyWith(color: Colors.white)
                                    : Styles.headlineStyle4,
                              )
                            ],
                          ),

                          // -------------------------------------------
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
