import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flight_booking_app/utils/translatabletext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ConfirmPinPage extends StatefulWidget {
  const ConfirmPinPage({super.key});

  @override
  State<ConfirmPinPage> createState() => _ConfirmPinPageState();
}

class _ConfirmPinPageState extends State<ConfirmPinPage> {
  @override
  Widget build(BuildContext context) {
    final String? pinCode = Get.arguments as String?;
    final TextEditingController _pinController = TextEditingController();
    final TextEditingController _email = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            h15,
            Button.backbutton2(),
            h40,
            TranslatableText(
              'Confirm PIN',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
            ),
            h15,
            TranslatableText(
              'Enter a 6-digit number for your PIN. Make sure the\ncombination is not easy to guess.',
              style: TextStyle(
                color: blackgrey,
                fontSize: 16,
              ),
            ),
            h15,
            TranslatableText(
              'Forgot Password?',
              style: TextStyle(
                color: darkBlue,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            h50,
            PinCodeTextField(
              appContext: context,
              length: 6,
              controller: _pinController,
              keyboardType: TextInputType.number,
              autoFocus: true,
              hintCharacter: '-',
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 35,
                fieldWidth: 50,
                inactiveColor: greyish,
                inactiveFillColor: greyish,
                activeColor: white,
                selectedColor: greyish,
                activeFillColor: greyish,
                borderWidth: 0,
              ),
              enableActiveFill: true,
              onCompleted: (value) {
                if (_pinController.text == pinCode) {
                  Get.bottomSheet(
                      isScrollControlled: true,
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        width: double.infinity,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Container(
                                width: 75,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: greyish,
                                    borderRadius: BorderRadius.circular(25)),
                              ),
                              h20,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TranslatableText(
                                    'Verify your email',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  h30,
                                  TranslatableText(
                                    'Input the OTP code sent to:\n j*********ia@gmail.com',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  PinCodeTextField(
                                    appContext: context,
                                    length: 4,
                                    controller: _email,
                                    keyboardType: TextInputType.number,
                                    autoFocus: true,
                                    hintCharacter: '-',
                                    pinTheme: PinTheme(
                                      fieldHeight: 35,
                                      fieldWidth: 50, 
                                      activeColor: white,
                                      selectedColor: greyish,
                                      activeFillColor: greyish,
                                      borderWidth: 0,
                                    ),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          !RegExp(r'^[0-9]*$')
                                              .hasMatch(value)) {
                                        return "Only digits allowed";
                                      }
                                      return null;
                                    },
                                    enableActiveFill: true,
                                    onCompleted: (value) {
                                      if (_email.text.length == 4) {
                                        Get.toNamed(
                                          Routes.settings,
                                        );
                                        Get.snackbar(
                                            "Email verified Successfully", '');
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ));
                } else {
                  Get.snackbar(
                    'Error',
                    'PIN does not match. Try again!',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.redAccent,
                    colorText: Colors.white,
                  );
                }
              },
            ),
            h25,
          ],
        ),
      ),
    );
  }
}
