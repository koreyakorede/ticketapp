import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/bottom_nav_bar.dart';

import 'screens/home/all_tickets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
      routes: {'all_tickets': (context) => AllTickets()},
    );
  }
}
