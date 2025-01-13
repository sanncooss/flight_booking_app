import 'package:easy_localization/easy_localization.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flight_booking_app/utils/translatabletext.dart';
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
            TranslatableText(
              'Language',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            h25,
            TranslatableText(
              'Select your language',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectedOption = 1;
                });
                context.setLocale(Locale('en', 'US'));
              },
              child: Container(
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
                    TranslatableText(
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
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectedOption = 2;
                });
                context.setLocale(Locale('uz', 'UZ'));
              },
              child: Container(
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
                    TranslatableText(
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
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectedOption = 3;
                });
                context.setLocale(Locale('ru', 'RU'));
              },
              child: Container(
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
                    TranslatableText(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
