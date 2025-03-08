import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/widgets/app_layoutbuilder_widgets.dart';
import 'package:flutter_application_1/base/widgets/big_circle.dart';
import 'package:flutter_application_1/base/widgets/big_dot.dart';
import 'package:flutter_application_1/base/widgets/text_style_fourth.dart';
import 'package:flutter_application_1/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextStyleThird(text: 'LAG'),
                        Expanded(child: Container()),
                        const BigDot(),
                        Expanded(
                            child: Stack(
                          children: [
                            const SizedBox(
                                height: 24,
                                child: AppLayoutBuilderWidget(
                                  randomDivider: 6,
                                )),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(Icons.local_airport_rounded,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        )),
                        const BigDot(),
                        Expanded(child: Container()),
                        TextStyleThird(text: 'IB CITY')
                      ],
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        const SizedBox(
                            width: 100, child: TextStyleFourth(text: 'Lagos')),
                        Expanded(child: Container()),
                        const TextStyleFourth(text: '1H 45M'),
                        Expanded(child: Container()),
                        const SizedBox(
                            width: 100,
                            child: TextStyleFourth(
                                text: 'Ibadan', align: TextAlign.end))
                      ],
                    ),
                  ],
                )),
            //circles part and dots
            Container(
                height: 20,
                color: AppStyles.ticketDeepOrange,
                child: Row(
                  children: [
                    const BigCircle(isRight: false),
                    Expanded(
                        child: AppLayoutBuilderWidget(
                      randomDivider: 10,
                    )),
                    const BigCircle(isRight: true),
                  ],
                )),
            //Orange part of the ticket
            Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppStyles.ticketDeepOrange,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('10 MAR',
                            style: AppStyles.headLineStyle3
                                .copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        Text('08: 00 AM',
                            style: AppStyles.headLineStyle3
                                .copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        Text('23',
                            style: AppStyles.headLineStyle3
                                .copyWith(color: Colors.white))
                      ],
                    ),
                    SizedBox(height: 3),
                    Row(
                      children: [
                        Text('Date',
                            style: AppStyles.headLineStyle4
                                .copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        Text('Departure time',
                            style: AppStyles.headLineStyle4
                                .copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        Text('Number',
                            textAlign: TextAlign.end,
                            style: AppStyles.headLineStyle4
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
