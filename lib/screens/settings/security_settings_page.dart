import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flutter/material.dart';

class SecuritySettingsPage extends StatefulWidget {
  const SecuritySettingsPage({super.key});

  @override
  State<SecuritySettingsPage> createState() =>
      _SecuritySettingsPageState();
}

class _SecuritySettingsPageState extends State<SecuritySettingsPage> {
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
              'Security Settings',
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
