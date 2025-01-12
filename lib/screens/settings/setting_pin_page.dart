import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flutter/material.dart';

class SettingPinPage extends StatefulWidget {
  const SettingPinPage({super.key});

  @override
  State<SettingPinPage> createState() =>
      _SettingPinPageState();
}

class _SettingPinPageState extends State<SettingPinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          children: [
            h10,
            Button.backbutton2(),
            h50,
            Text(
              'Set Pin',
              style: TextStyle(
                fontSize: 46,
              ),
            )
          ],
        ),
      ),
    );
  }
}
