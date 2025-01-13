import 'package:firebase_auth/firebase_auth.dart';
import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flight_booking_app/utils/translatabletext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordPage extends StatelessWidget {
  final String email;
  final TextEditingController passwordController = TextEditingController();

  PasswordPage({required this.email, super.key});

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void loginUser(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.snackbar(
        'Success',
        'Logged in successfully!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      Get.offAllNamed(
        Routes.mainRoutePage,
      );
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
              'Password',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            h30,
            TranslatableText(
              'Password:',
              style: TextStyle(color: grey),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Enter your password',
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
            h20,
            Button.gobutton(() {
              String password = passwordController.text.trim();
              if (password.isEmpty) {
                Get.snackbar(
                  'Error',
                  'Password cannot be empty',
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.red,
                  colorText: Colors.white,
                );
              } else {
                loginUser(email, password);
              }
            },
                TranslatableText(
                  'Login',
                  style: TextStyle(color: white, fontSize: 24),
                )),
          ],
        ),
      ),
    );
  }
}
