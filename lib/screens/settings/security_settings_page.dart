import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecuritySettingsPage extends StatefulWidget {
  const SecuritySettingsPage({super.key});

  @override
  State<SecuritySettingsPage> createState() => _SecuritySettingsPageState();
}

class _SecuritySettingsPageState extends State<SecuritySettingsPage> {
  bool isToggled = false;
  bool isToggled2 = false;
  int? selectedOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            h10,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Button.backbutton2(),
            ),
            h15,
            Container(
              color: greyish,
              alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 26.0),
                child: Text(
                  'Security Settings',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Credit Card',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  h25,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Double Verification',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          h10,
                          Text(
                            'Enter CVV & OTP code for a swift & hassle-\nfree payment verification.',
                            style: TextStyle(
                              color: blackgrey,
                            ),
                          ),
                        ],
                      ),
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
                    ],
                  ),
                  h20,
                  Divider(
                    color: greyish,
                  ),
                  h20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Single Verification',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          h10,
                          Text(
                            'Enter CVV & OTP code for a swift & hassle-\nfree payment verification.',
                            style: TextStyle(
                              color: blackgrey,
                            ),
                          ),
                        ],
                      ),
                      Radio(
                        activeColor: darkBlue,
                        value: 2,
                        splashRadius: 10,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 25,
              color: greyish,
            ),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Biometric',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          h20,
                          Text(
                            'Activate Biometric Feature',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          h10,
                          Text(
                            'To enjoy a seamless log in with fingerprint or\nface recognition',
                            style: TextStyle(
                              color: blackgrey,
                            ),
                          ),
                        ],
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
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 25,
              color: greyish,
            ),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Device',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          h20,
                          Text(
                            'Set device as trusted',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          h10,
                          Text(
                            'Activate to set a Pin and Manage device\nconnectivity.',
                            style: TextStyle(
                              color: blackgrey,
                            ),
                          ),
                        ],
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
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 25,
              color: greyish,
            ),
            GestureDetector(
              onTap: () {
                Get.defaultDialog(
                  // confirm: Text(),
                  titlePadding: EdgeInsets.only(top: 15),
                  contentPadding: EdgeInsets.all(15),
                  title: 'Check',
                  content: SizedBox(
                    height: 190,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Continue and set device as\ntrusted?',
                          style: TextStyle(fontSize: 22),
                          textAlign: TextAlign.start,
                        ),
                        h10,
                        Text(
                          'To set a PIN, this device needs to be set as\ntrusted',
                          style: TextStyle(color: blackgrey),
                          textAlign: TextAlign.start,
                        ),
                        h35,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text(
                                'No, cancel',
                                style: TextStyle(color: darkBlue),
                              ),
                            ),
                            TextButton(
                              style: ButtonStyle(
                                fixedSize:
                                    WidgetStatePropertyAll(Size.fromHeight(40)),
                                shape: WidgetStatePropertyAll(
                                  ContinuousRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                backgroundColor:
                                    WidgetStatePropertyAll(darkBlue),
                              ),
                              onPressed: () {
                                Get.toNamed(Routes.settingPin);
                              },
                              child: Text(
                                'Yes, continue',
                                style: TextStyle(color: white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pin',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              h20,
                              Text(
                                'Set PIN',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              h10,
                              Text(
                                'Set a 6 digit verification PIN to secure your\naccounts activities',
                                style: TextStyle(
                                  color: blackgrey,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 30,
                            color: blackgrey,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
