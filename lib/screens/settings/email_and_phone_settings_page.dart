import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flutter/material.dart';

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
          children: [
            h10,
            Button.backbutton2(),
            h15,
            Text(
              'Email and Mobile Number',
              style: TextStyle(
                fontSize: 26,
              ),
            )
          ],
        ),
      ),
    );
  }
}
