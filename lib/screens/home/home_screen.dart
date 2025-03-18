import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';
import 'package:flutter_application_1/base/utils/all_json.dart';
import 'package:flutter_application_1/base/widgets/app_double_texts.dart';
import 'package:flutter_application_1/base/widgets/ticket_view.dart';
import 'package:flutter_application_1/screens/home/widgets/hotel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      //Listview widget for scrollable effect
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Good morning',
                                style: AppStyles.headLineStyle3),
                            const SizedBox(
                              height: 5,
                            ),
                            Text('Book A Flight',
                                style: AppStyles.headLineStyle1),
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                            image: DecorationImage(
                                image: AssetImage('assets/logo.png')),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD),
                      ),
                      child: const Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(FluentSystemIcons.ic_fluent_search_regular,
                              color: Color(0xFFBFC205)),
                          Text('Search'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    AppDoubleText(
                        bigText: 'Upcoming Flights', smallText: 'View all'),
                    const SizedBox(height: 20),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: ticketList
                              .map((singleTicket) =>
                                  TicketView(ticket: singleTicket))
                              .toList(),
                        )),
                    const SizedBox(height: 40),
                    AppDoubleText(bigText: 'Hotels', smallText: 'View all'),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: hotelList
                              .map((singleHotel) => Hotel(hotel: singleHotel))
                              .toList(),
                        ))
                  ])),
        ],
      ),
    );
  }
}
