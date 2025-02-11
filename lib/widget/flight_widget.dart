import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flight_booking_app/utils/translatabletext.dart';
import 'package:flutter/material.dart';

class FlightWidget extends StatelessWidget {
  const FlightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: CouponCard(
        height: 280,
        width: double.infinity,
        backgroundColor: white,
        curveAxis: Axis.horizontal,
        curvePosition: 160.9,
        curveRadius: 30,
        borderRadius: 30,
        firstChild: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TranslatableText(
                        'LGA',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      TranslatableText(
                        'New York',
                        style: TextStyle(
                          fontSize: 20,
                          color: blackgrey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/flighttrip.png',
                        width: 150,
                        height: 30,
                        fit: BoxFit.fill,
                      ),
                      const TranslatableText(
                        '23:00 hours',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const TranslatableText(
                        'DAD',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      TranslatableText(
                        'Da Nang',
                        style: TextStyle(
                          fontSize: 20,
                          color: blackgrey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              h10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TranslatableText(
                        '8:00 AM',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TranslatableText(
                        'August 28, 2021',
                        style: TextStyle(
                          fontSize: 16,
                          color: blackgrey,
                        ),
                      ),
                    ],
                  ),
                  w50,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const TranslatableText(
                        '7:00 AM',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TranslatableText(
                        'August 29, 2021',
                        style: TextStyle(
                          fontSize: 16,
                          color: blackgrey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        secondChild: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              DottedLine(
                dashLength: 6,
                dashGapLength: 4,
                lineThickness: 2,
                dashColor: blackgrey,
              ),
              Image.asset(
                'assets/images/divider.png',
                width: double.infinity,
                fit: BoxFit.cover,
                height: 1,
              ),
              h10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/123.png',
                        width: 55,
                        height: 55,
                      ),
                      w5,
                      TranslatableText(
                        'Qatar Airway',
                        style: TextStyle(color: blackgrey, fontSize: 20),
                      ),
                    ],
                  ),
                  TranslatableText(
                    '\$350',
                    style: TextStyle(color: black, fontSize: 24),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
