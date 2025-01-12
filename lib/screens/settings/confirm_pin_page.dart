import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flutter/material.dart';

class ConfirmPinPage extends StatefulWidget {
  const ConfirmPinPage({super.key});

  @override
  State<ConfirmPinPage> createState() => _ConfirmPinPageState();
}

class _ConfirmPinPageState extends State<ConfirmPinPage> {
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
              'Confirm Pin',
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
