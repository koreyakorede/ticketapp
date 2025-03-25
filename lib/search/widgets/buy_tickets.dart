import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';

class BuyTickets extends StatelessWidget {
  const BuyTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppStyles.buyTickets,
      ),
      child:
          Center(child: Text('Buy Tickets', style: AppStyles.headLineStyle4)),
    );
  }
}
