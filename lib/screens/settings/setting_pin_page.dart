import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flight_booking_app/utils/translatabletext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SettingPinPage extends StatefulWidget {
  const SettingPinPage({super.key});

  @override
  State<SettingPinPage> createState() => _SettingPinPageState();
}

class _SettingPinPageState extends State<SettingPinPage> {
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
            Button.backbutton2(),
            h40,
            TranslatableText(
              'Set PIN',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
            ),
            h15,
            TranslatableText(
              'Enter 6 digits number for your PIN. Make sure the\ncombination is not easy to guess.',
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
                Get.toNamed(Routes.confirmingPin, arguments: _pinController.text);
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
