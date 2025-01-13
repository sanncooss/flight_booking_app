import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flight_booking_app/utils/translatabletext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PasscodeScreen extends StatefulWidget {
  const PasscodeScreen({super.key});

  @override
  State<PasscodeScreen> createState() => _PasscodeScreenState();
}

class _PasscodeScreenState extends State<PasscodeScreen> {
  final TextEditingController _pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            h15,
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.keyboard_arrow_left_outlined,
                size: 35,
              ),
            ),
            h40,
            TranslatableText(
              'Passcode',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
            ),
            h15,
            TranslatableText(
              'Enter Your Passcode to Proceed the Payment',
              style: TextStyle(
                color: blackgrey,
                fontSize: 16,
              ),
            ),
            h15,
            TranslatableText(
              'Forgot Password?',
              style: TextStyle(
                  color: darkBlue, fontSize: 16, fontWeight: FontWeight.w600),
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
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !RegExp(r'^[0-9]*$').hasMatch(value)) {
                  return "Only digits allowed";
                }
                return null;
              },
              enableActiveFill: true,
              onChanged: (value) {},
            ),
            h25,
            Button.gobutton(
              () {
                Get.toNamed(Routes.orderConfirmed);
              },
              TranslatableText(
                'Enter',
                style: TextStyle(
                  color: white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
