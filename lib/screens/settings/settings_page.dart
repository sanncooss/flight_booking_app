import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

bool isToggled = false;

class _SettingsPageState extends State<SettingsPage> {
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
            h20,
            Text(
              'Settings',
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            h25,
            Text(
              'General',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            h15,
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: greyish))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Language',
                          style: TextStyle(color: blackish, fontSize: 16),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 28,
                          color: blackgrey,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: greyish))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Notification Settings',
                          style: TextStyle(color: blackish, fontSize: 16),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 28,
                          color: blackgrey,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Location',
                        style: TextStyle(color: blackish, fontSize: 16),
                      ),
                      CupertinoSwitch(
                        value: isToggled,
                        thumbColor: white,
                        activeTrackColor: blue,
                        inactiveThumbColor: darkBlue,
                        onChanged: (value) {
                          setState(() {
                            isToggled = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                h10,
                Text('Account & Privacy', style: TextStyle(),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
