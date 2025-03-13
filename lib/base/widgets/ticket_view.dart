import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/widgets/app_column_text_layout.dart';
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
                    //show depature time and destination with icons first line
                    Row(
                      children: [
                        const SizedBox(height: 3),
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
                                  width: 0,
                                )),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(Icons.local_airport_rounded,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        )),
                        const BigDot(),
                        Expanded(child: Container()),
                        TextStyleThird(text: 'IBD')
                      ],
                    ),
                    SizedBox(height: 3),
                    //show departure and destination names with time
                    Row(
                      children: [
                        const SizedBox(
                            width: 100, child: TextStyleFourth(text: 'Lagos')),
                        Expanded(child: Container()),
                        const TextStyleFourth(text: '1H 30M'),
                        Expanded(child: Container()),
                        const SizedBox(
                            width: 100,
                            child: TextStyleFourth(
                                text: 'Ibadan', align: TextAlign.end))
                      ],
                    ),
                  ],
                )),
            //circle part and dots
            Container(
                height: 20,
                color: AppStyles.ticketDeepOrange,
                child: Row(
                  children: [
                    const BigCircle(isRight: false),
                    Expanded(
                        child: AppLayoutBuilderWidget(
                      randomDivider: 16,
                      width: 6,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: '1 MAY',
                          bottomText: 'DATE',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnTextLayout(
                          topText: '08: 00 AM',
                          bottomText: 'Depature time',
                          alignment: CrossAxisAlignment.center,
                        ),
                        AppColumnTextLayout(
                          topText: '23',
                          bottomText: 'Number',
                          alignment: CrossAxisAlignment.end,
                        ),
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
