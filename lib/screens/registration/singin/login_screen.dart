import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/screens/registration/singin/password_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            h15,
            Button.backbutton(),
            h20,
            Text(
              'Sign up',
              style: GoogleFonts.inter(
                fontSize: 46,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Start Your Journey with affordable price',
              style: GoogleFonts.inter(
                fontSize: 16,
                color: blackgrey,
              ),
            ),
            h35,
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'EMAIL',
                style: TextStyle(
                  color: grey,
                ),
              ),
              TextField(
                controller: email,
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              h30,
              Button.gobutton(
                () {
                  String emails = email.text.trim();
                  if (emails.isEmpty ||
                      !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(emails)) {
                    Get.snackbar(
                      'Error',
                      'Please enter a valid email address',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.red,
                      colorText: Colors.white,
                    );
                  } else {
                    Get.to(() => PasswordPage(email: emails));
                  }
                },
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        color: white,
                      ),
                    ),
                    w10,
                    Icon(
                      Icons.arrow_forward,
                      color: white,
                    ),
                  ],
                ),
              ),
              h20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: GoogleFonts.inter(fontSize: 16, color: grey),
                  ),
                  w5,
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.signup);
                    },
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.inter(fontSize: 16, color: blue),
                    ),
                  ),
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}
