import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flight_booking_app/utils/translatabletext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

bool isToggled = false;

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              h15,
              Button.backbutton2(),
              h15,
              TranslatableText(
                'Settings',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              h15,
              TranslatableText(
                'General',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              h10,
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.language);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: greyish))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TranslatableText(
                              'Language',
                              style: TextStyle(color: blackish, fontSize: 16),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: 28,
                              color: blackgrey,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.notificationSettings);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: greyish))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TranslatableText(
                              'Notification Settings',
                              style: TextStyle(color: blackish, fontSize: 16),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: 28,
                              color: blackgrey,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TranslatableText(
                          'Location',
                          style: TextStyle(color: blackish, fontSize: 16),
                        ),
                        CupertinoSwitch(
                          value: isToggled,
                          thumbColor: white,
                          activeTrackColor: blue,
                          inactiveThumbColor: white,
                          onChanged: (value) {
                            setState(() {
                              isToggled = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  h10,
                ],
              ),
              TranslatableText(
                'Account & Privacy',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.emailAndMobile);
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: greyish))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TranslatableText(
                          'Email and Mobile Number',
                          style: TextStyle(color: blackish, fontSize: 16),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 28,
                          color: blackgrey,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.securtySettings);
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: greyish))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TranslatableText(
                          'Security settings',
                          style: TextStyle(color: blackish, fontSize: 16),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 28,
                          color: blackgrey,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.deletingAccount);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TranslatableText(
                        'Delete Account',
                        style: TextStyle(color: blackish, fontSize: 16),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 28,
                        color: blackgrey,
                      )
                    ],
                  ),
                ),
              ),
              h10,
              TranslatableText(
                'Other',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              h15,
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: greyish))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TranslatableText(
                        'About Indochina Travel App',
                        style: TextStyle(color: blackish, fontSize: 16),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 28,
                        color: blackgrey,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: greyish))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TranslatableText(
                        'Privacy Policy',
                        style: TextStyle(color: blackish, fontSize: 16),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 28,
                        color: blackgrey,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: greyish))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TranslatableText(
                        'Terms and Conditions',
                        style: TextStyle(color: blackish, fontSize: 16),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        size: 28,
                        color: blackgrey,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: greyish))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TranslatableText(
                        'Rate App',
                        style: TextStyle(color: blackish, fontSize: 16),
                      ),
                      TranslatableText(
                        'v4.87.2',
                        style: TextStyle(color: blackgrey, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
