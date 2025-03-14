import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/widgets/app_column_text_layout.dart';
import 'package:flutter_application_1/base/widgets/app_layoutbuilder_widgets.dart';
import 'package:flutter_application_1/base/widgets/big_circle.dart';
import 'package:flutter_application_1/base/widgets/big_dot.dart';
import 'package:flutter_application_1/base/widgets/text_style_fourth.dart';
import 'package:flutter_application_1/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  const TicketView({super.key, required this.ticket, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
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
                        TextStyleThird(
                          text: ticket['from']['code'],
                        ),
                        Expanded(child: Container()),
                        const BigDot(),
                        //ticket flying icon
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
                        TextStyleThird(
                          text: ticket['to']['code'],
                        )
                      ],
                    ),
                    SizedBox(height: 3),
                    //show departure and destination names with time
                    Row(
                      children: [
                        SizedBox(
                            width: 100,
                            child: TextStyleFourth(
                              text: ticket['from']['name'],
                            )),
                        Expanded(child: Container()),
                        TextStyleFourth(text: ticket['flying_time']),
                        Expanded(child: Container()),
                        SizedBox(
                            width: 100,
                            child: TextStyleFourth(
                                text: ticket['to']['name'],
                                align: TextAlign.end))
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
                          topText: ticket['date'],
                          bottomText: 'DATE',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnTextLayout(
                          topText: ticket['departure_time'],
                          bottomText: 'Depature time',
                          alignment: CrossAxisAlignment.center,
                        ),
                        AppColumnTextLayout(
                          topText: ticket['number'].toString(),
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
