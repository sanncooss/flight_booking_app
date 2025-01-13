import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flight_booking_app/utils/translatabletext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationSettingsPage extends StatefulWidget {
  const NotificationSettingsPage({super.key});

  @override
  State<NotificationSettingsPage> createState() =>
      _NotificationSettingsPageState();
}

bool isToggled = false;
bool isToggled2 = false;
bool isToggled3 = false;
bool isToggled4 = false;
bool isToggled5 = false;
bool isToggled6 = false;
bool isToggled7 = false;
bool isToggled8 = false;

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              h10,
              Button.backbutton2(),
              h15,
              TranslatableText(
                'Notifications Settings',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              h20,
              TranslatableText(
                'Push notification disabled',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              h15,
              Row(
                children: [
                  TranslatableText(
                    'To enable notifications, go to ',
                    style: TextStyle(color: blackgrey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.settings);
                    },
                    child: TranslatableText(
                      'Settings',
                      style: TextStyle(color: darkBlue),
                    ),
                  ),
                ],
              ),
              h20,
              TranslatableText(
                'Activity',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              TranslatableText(
                'Secure your account by keeping your log in, \nregister, and OTP acitvity on track.',
                style: TextStyle(color: blackgrey),
              ),
              h20,
              Container(
                width: double.infinity,
                height: 65,
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: greyish, width: 1))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TranslatableText(
                      'Email',
                      style: TextStyle(
                        color: blackish,
                        fontSize: 16,
                      ),
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
              SizedBox(
                width: double.infinity,
                height: 65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TranslatableText(
                      'Push Notifications',
                      style: TextStyle(
                        color: blackish,
                        fontSize: 16,
                      ),
                    ),
                    CupertinoSwitch(
                      value: isToggled2,
                      thumbColor: white,
                      activeTrackColor: blue,
                      inactiveThumbColor: white,
                      onChanged: (value) {
                        setState(() {
                          isToggled2 = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              TranslatableText(
                'Special For You',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              TranslatableText(
                'You can never have too much of limited-time\ndiscount, exlucive offers, tips and info new\nfeature.',
                style: TextStyle(
                  color: blackgrey,
                  fontSize: 14,
                ),
              ),
              Container(
                width: double.infinity,
                height: 65,
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: greyish, width: 1))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TranslatableText(
                      'Email',
                      style: TextStyle(
                        color: blackish,
                        fontSize: 16,
                      ),
                    ),
                    CupertinoSwitch(
                      value: isToggled3,
                      thumbColor: white,
                      activeTrackColor: blue,
                      inactiveThumbColor: white,
                      onChanged: (value) {
                        setState(() {
                          isToggled3 = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TranslatableText(
                      'Push Notifications',
                      style: TextStyle(
                        color: blackish,
                        fontSize: 16,
                      ),
                    ),
                    CupertinoSwitch(
                      value: isToggled4,
                      thumbColor: white,
                      activeTrackColor: blue,
                      inactiveThumbColor: white,
                      onChanged: (value) {
                        setState(() {
                          isToggled4 = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              TranslatableText(
                'Reminders',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              TranslatableText(
                'Get important travel news and info, payment\nreminders, check-in reminder and more.',
                style: TextStyle(
                  color: blackgrey,
                  fontSize: 14,
                ),
              ),
              Container(
                width: double.infinity,
                height: 65,
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: greyish, width: 1))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TranslatableText(
                      'Email',
                      style: TextStyle(
                        color: blackish,
                        fontSize: 16,
                      ),
                    ),
                    CupertinoSwitch(
                      value: isToggled5,
                      thumbColor: white,
                      activeTrackColor: blue,
                      inactiveThumbColor: white,
                      onChanged: (value) {
                        setState(() {
                          isToggled5 = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TranslatableText(
                      'Push Notifications',
                      style: TextStyle(
                        color: blackish,
                        fontSize: 16,
                      ),
                    ),
                    CupertinoSwitch(
                      value: isToggled6,
                      thumbColor: white,
                      activeTrackColor: blue,
                      inactiveThumbColor: white,
                      onChanged: (value) {
                        setState(() {
                          isToggled6 = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              TranslatableText(
                'Membership',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              TranslatableText(
                'You will get emails about ticket Elite Rewards and\nsurveys',
                style: TextStyle(
                  color: blackgrey,
                  fontSize: 14,
                ),
              ),
              Container(
                width: double.infinity,
                height: 65,
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: greyish, width: 1))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TranslatableText(
                      'Email',
                      style: TextStyle(
                        color: blackish,
                        fontSize: 16,
                      ),
                    ),
                    CupertinoSwitch(
                      value: isToggled7,
                      thumbColor: white,
                      activeTrackColor: blue,
                      inactiveThumbColor: white,
                      onChanged: (value) {
                        setState(() {
                          isToggled7 = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TranslatableText(
                      'Push Notifications',
                      style: TextStyle(
                        color: blackish,
                        fontSize: 16,
                      ),
                    ),
                    CupertinoSwitch(
                      value: isToggled8,
                      thumbColor: white,
                      activeTrackColor: blue,
                      inactiveThumbColor: white,
                      onChanged: (value) {
                        setState(() {
                          isToggled8 = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
