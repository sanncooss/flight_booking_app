import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailAndPhoneSettingsPage extends StatefulWidget {
  const EmailAndPhoneSettingsPage({super.key});

  @override
  State<EmailAndPhoneSettingsPage> createState() =>
      _EmailAndPhoneSettingsPageState();
}

class _EmailAndPhoneSettingsPageState extends State<EmailAndPhoneSettingsPage> {
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
            Text(
              'Email and Mobile Number',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            h15,
            Row(
              children: [
                Image.asset(
                  'assets/images/success.png',
                  width: 30,
                  height: 30,
                ),
                w10,
                Text(
                  'Unveerified',
                  style: TextStyle(
                    color: red,
                    fontSize: 18,
                  ),
                )
              ],
            ),
            h20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '+84921878112',
                  style: TextStyle(fontSize: 18),
                ),
                Icon(
                  Icons.edit,
                  color: darkBlue,
                  size: 25,
                )
              ],
            ),
            h30,
            Button.gobutton(() {
              Get.toNamed(Routes.settings);
            },
                Text(
                  'Enter',
                  style: TextStyle(
                    color: white,
                    fontSize: 22,
                  ),
                )),
            h30,
            Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'You will recieve every transaction & security\ninformaton on this email.',
              style: TextStyle(
                color: blackgrey,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
