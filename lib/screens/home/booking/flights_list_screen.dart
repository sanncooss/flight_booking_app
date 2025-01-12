import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flight_booking_app/widget/flight_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlightsListScreen extends StatelessWidget {
  const FlightsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 1000,
            color: darkBlue,
          ),
          Image.asset(
            'assets/images/map.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 500,
          ),
          Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(
              children: [
                // CouponCard(
                //     width: double.infinity,
                //     height: 400,
                //     backgroundColor: white,
                //     decoration:
                //         BoxDecoration(borderRadius: BorderRadius.circular(25)),
                //     firstChild: Column(
                //       children: [
                //         Text('hell nah'),
                //       ],
                //     ),
                //     secondChild: Text('Hell yeah')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        color: white,
                        size: 36,
                      ),
                    ),
                    Text(
                      'Search Flights',
                      style: TextStyle(color: white, fontSize: 26),
                    ),
                    w20,
                  ],
                ),
                h30,
                Expanded(
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (ctx, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            Routes.bookingDetails,
                          );
                        },
                        child: const FlightWidget(),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
