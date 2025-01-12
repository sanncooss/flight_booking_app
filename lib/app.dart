import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/screens/registration/onboarding/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: getPages,
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(), 
      ),
      home: const SplashPage(),
    );
  }
}
