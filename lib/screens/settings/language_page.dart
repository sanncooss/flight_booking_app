import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  int? selectedOption;
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
              'Language',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            h25,
            Text(
              'Language',
              style: TextStyle(
                fontSize: 20  ,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: greyish,
                width: 1,
              ))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'English',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Radio(
                    activeColor: darkBlue,
                    value: 1,
                    splashRadius: 10,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: greyish,
                width: 1,
              ))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Uzbek',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Radio(
                    activeColor: darkBlue,
                    value: 2,
                    splashRadius: 10,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: greyish,
                width: 1,
              ))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Russian',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Radio(
                    activeColor: darkBlue,
                    value: 3,
                    splashRadius: 10,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
