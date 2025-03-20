import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppTextIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Icon(Icons.flight_takeoff_rounded, color: Color(0xFF73777A)),
            const SizedBox(width: 10),
            Text(text, style: AppStyles.textstyle),
          ],
        ));
  }
}
