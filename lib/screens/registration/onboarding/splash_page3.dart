import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flight_booking_app/utils/translatabletext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage3 extends StatelessWidget {
  const SplashPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                h20,
                Image.asset(
                  'assets/images/mask.png',
                  width: double.infinity,
                  height: 500,
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
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TranslatableText(
                  'Book\nAppointment\nin Easiest Way!',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
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
                        width: 175,
                        height: 60,
                        alignment: Alignment.center,
                        child: TranslatableText(
                          'Skip',
                          style: GoogleFonts.inter(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    w10,
                    Container(
                      width: 175,
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
                          Get.toNamed(Routes.signup);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TranslatableText(
                              'Get started',
                              style:
                                  GoogleFonts.inter(fontSize: 18, color: white),
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
            )
          ],
        ),
      ),
    );
  }
}
