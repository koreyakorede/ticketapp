import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/res/styles/app_styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          width: size.width * .42,
          height: 435,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/plane_sit.jpg')),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "20% discount on the early booking of this flight. Don't miss",
                style: AppStyles.headLineStyle2.copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    width: size.width * .44,
                    height: 210,
                    decoration: BoxDecoration(
                        color: Color(0xFF3AB8B8),
                        borderRadius: BorderRadius.circular(18)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Discount \nfor survey',
                            style: AppStyles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Take the survey and get a discount on your next flight ticket',
                            style: AppStyles.headLineStyle3.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ])),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: const Color(0xFF189999))),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              width: size.width * 0.44,
              height: 210,
              decoration: BoxDecoration(
                color: Color(0xFFEC6545),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: Text('Safe Landing!',
                    style: AppStyles.headLineStyle2.copyWith(
                      color: Colors.white,
                    )),
              ),
            )
          ],
        ),
      ],
    );
  }
}
