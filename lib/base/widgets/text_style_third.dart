import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  const TextStyleThird({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: AppStyles.headLineStyle4.copyWith(color: Colors.white));
  }
}
