import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flutter/material.dart';

class DeletingAccountPage extends StatefulWidget {
  const DeletingAccountPage({super.key});

  @override
  State<DeletingAccountPage> createState() =>
      _DeletingAccountPageState();
}

class _DeletingAccountPageState extends State<DeletingAccountPage> {
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
              'Delete Account',
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
