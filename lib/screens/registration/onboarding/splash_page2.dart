import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/screens/registration/onboarding/splash_page3.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage2 extends StatelessWidget {
  const SplashPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            h20,
            Image.asset(
              'assets/images/hero2.png',
              width: double.infinity,
              // fit: BoxFit.fill,
              height: 400,
            ),
            h10,
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 70,
                    height: 10,
                    decoration: BoxDecoration(
                      color: blue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  w5,
                  Container(
                    width: 30,
                    height: 10,
                    decoration: BoxDecoration(
                      color: grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  w5,
                  Container(
                    width: 30,
                    height: 10,
                    decoration: BoxDecoration(
                      color: grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),
            ),
            h5,
            Text(
              'Find\nYour Perfect\nTickets To Fly!',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                fontSize: 42,
              ),
            ),
            h20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                      Get.toNamed(Routes.signup);
                  },
                  child: Container(
                    width: 190,
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                      'Skip',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                w10,
                Container(
                  width: 190,
                  height: 60,
                  decoration: BoxDecoration(
                    color: blue,
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      Get.off(
                        const SplashPage3(),
                        transition: Transition.cupertino,
                        duration: const Duration(milliseconds: 1200),
                        curve: Curves.linear,
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Next',
                          style: GoogleFonts.inter(
                              fontSize: 18, color: white),
                        ),
                        w5,
                        Icon(
                          Icons.arrow_circle_right,
                          color: white,
                          size: 19,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
