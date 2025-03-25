import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/widgets/app_double_texts.dart';
import 'package:flutter_application_1/search/widgets/app_text_icon.dart';
import 'package:flutter_application_1/search/widgets/app_ticket_tabs.dart';
import 'package:flutter_application_1/search/widgets/buy_tickets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const SizedBox(height: 40),
              Text('What are\nyou looking for?',
                  style: AppStyles.headLineStyle1.copyWith(fontSize: 35)),
              const SizedBox(
                height: 20,
              ),
              const AppTicketTabs(),
              const SizedBox(height: 20),
              const AppTextIcon(
                  icon: Icons.flight_takeoff_rounded, text: 'Departure'),
              SizedBox(height: 20),
              const AppTextIcon(
                  icon: Icons.flight_land_rounded, text: 'Arrival'),
              const SizedBox(height: 40),
              const BuyTickets(),
              const SizedBox(height: 40),
              const AppDoubleText(
                  bigText: 'Upcoming flights', smallText: 'View all'),
              const SizedBox(height: 20),
            ]));
  }
}
