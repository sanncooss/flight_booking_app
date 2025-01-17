import 'package:firebase_auth/firebase_auth.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flight_booking_app/utils/translatabletext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeletingAccountPage extends StatefulWidget {
  const DeletingAccountPage({super.key});

  @override
  State<DeletingAccountPage> createState() => _DeletingAccountPageState();
}

Future<void> deleteUserAccount() async {
  try {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await user.delete();
    } else {
      print('No user is currently signed in.');
    }
  } catch (e) {
    print('Error deleting user: $e');
  }
}

int? selectedOption;

class _DeletingAccountPageState extends State<DeletingAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            h10,
            Button.backbutton2(),
            h15,
            TranslatableText(
              'Delete Account',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/delete.png',
                  width: 150,
                  height: 150,
                ),
              ],
            ),
            h10,
            TranslatableText(
              'You sure you want\nto delete your account?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            h20,
            TranslatableText(
              'If you delete your account:',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TranslatableText(
                    ' • Your remaining ticket Pointscannot be used\n anymore.',
                    style: TextStyle(fontSize: 14),
                  ),
                  TranslatableText(
                    ' • Your ticket Elite Rewards benefits will not be\n available anymore.',
                    style: TextStyle(fontSize: 14),
                  ),
                  TranslatableText(
                    ' • All your pending rewards will be deleted.',
                    style: TextStyle(fontSize: 14),
                  ),
                  TranslatableText(
                    ' • All rewards from using credit card can no longer\n be obtained',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            h15,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Radio(
                  activeColor: darkBlue,
                  value: 1,
                  splashRadius: 10,
                  groupValue: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
                w5,
                TranslatableText(
                  'I understand and accept all the above risks\nregarding my account deletion.',
                  style: TextStyle(color: blackgrey, fontSize: 14),
                ),
              ],
            ),
            h15,
            GestureDetector(
              onTap: () {
                if (selectedOption == 1) {
                  deleteUserAccount();
                } else {
                  Get.snackbar(
                    'Accept risks',
                    '',
                  );
                }
              },
              child: Container(
                width: double.infinity,
                height: 56,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: selectedOption == 1 ? darkBlue : Colors.blue[50],
                ),
                child: TranslatableText(
                  'Yes, continue',
                  style: TextStyle(color: white, fontSize: 22),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
