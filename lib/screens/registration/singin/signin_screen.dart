import 'package:firebase_auth/firebase_auth.dart';
import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/translatabletext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void signupUser() async {
    String userEmail = email.text.trim();
    String userPassword = password.text.trim();

    if (userEmail.isEmpty || userPassword.isEmpty) {
      Get.snackbar(
        'Error',
        'Email and password must not be empty!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(userEmail)) {
      Get.snackbar(
        'Error',
        'Invalid email address!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }
    if (userPassword.length < 6) {
      Get.snackbar(
        'Error',
        'Password must be at least 6 characters long!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    try {
      await _auth.createUserWithEmailAndPassword(
        email: userEmail,
        password: userPassword,
      );
      Get.snackbar(
        'Success',
        'Account created successfully!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      Get.offAllNamed(Routes.home); 
    } catch (e) {
      Get.snackbar(
        'Error',
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

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
            TranslatableText(
              'Sign up',
              style: GoogleFonts.inter(
                fontSize: 46,
                fontWeight: FontWeight.bold,
              ),
            ),
            TranslatableText(
              'Start Your Journey with affordable price',
              style: GoogleFonts.inter(
                fontSize: 16,
                color: blackgrey,
              ),
            ),
            h35,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TranslatableText(
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
                h5,
                const Divider(
                  height: 1,
                ),
                h30,
                TranslatableText(
                  'Password',
                  style: TextStyle(
                    color: grey,
                  ),
                ),
                TextField(
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
                h5,
                const Divider(
                  height: 1,
                ),
                h30,
                Button.gobutton(
                  signupUser,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TranslatableText(
                        'Sign up',
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          color: white,
                        ),
                      ),
                      w10,
                      Icon(
                        Icons.check_circle,
                        color: white,
                      )
                    ],
                  ),
                ),
                h20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TranslatableText(
                      'Already have an account?',
                      style: GoogleFonts.inter(fontSize: 16, color: grey),
                    ),
                    w5,
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.login);  
                      },
                      child: TranslatableText(
                        'Sign in',
                        style: GoogleFonts.inter(fontSize: 16, color: blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
