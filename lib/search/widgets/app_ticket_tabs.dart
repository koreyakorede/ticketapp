import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: AppStyles.ticketTabColor),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              width: size.width * .44,
              decoration: const BoxDecoration(
                color: Color(0xFF30A5FF),
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(40)),
              ),
              child: const Center(child: Text('Airline Tickets')),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7),
              width: size.width * .44,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius:
                    BorderRadius.horizontal(right: Radius.circular(40)),
              ),
              child: Center(child: Text('Hotels')),
            )
          ],
        ));
  }
}
