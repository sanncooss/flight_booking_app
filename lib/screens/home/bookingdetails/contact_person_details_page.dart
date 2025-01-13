import 'package:country_flags/country_flags.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flight_booking_app/utils/translatabletext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactPersonDetailsPage extends StatefulWidget {
  const ContactPersonDetailsPage({super.key});

  @override
  State<ContactPersonDetailsPage> createState() =>
      _ContactPersonDetailsPageState();
}

class _ContactPersonDetailsPageState extends State<ContactPersonDetailsPage> {
  int? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 28,
              ),
            ),
            h20,
            const TranslatableText(
              'Contact Person Details',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Radio(
                      value: 1,
                      activeColor: darkBlue,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value;
                          print("Selected: One-way");
                        });
                      },
                    ),
                    const TranslatableText("Male"),
                  ],
                ),
                w10,
                Row(
                  children: [
                    Radio(
                      activeColor: darkBlue,
                      value: 2,
                      groupValue: selectedOption,
                      onChanged: (value) {
                        setState(() {
                          selectedOption = value;
                        });
                      },
                    ),
                    const TranslatableText("Female"),
                  ],
                ),
              ],
            ),
            h10,
            Container(
              width: double.infinity,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: blackgrey,
                  width: 0.1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TranslatableText(
                      'Full name',
                      style: TextStyle(
                        fontSize: 16,
                        color: blackgrey,
                      ),
                    ),
                    const TranslatableText(
                      'Cemrason Williamson',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            h15,
            Container(
              width: double.infinity,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: blackgrey,
                  width: 0.1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TranslatableText(
                      'Email Address',
                      style: TextStyle(
                        fontSize: 16,
                        color: blackgrey,
                      ),
                    ),
                    const TranslatableText(
                      'williamson@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            h15,
            Container(
              width: double.infinity,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: blackgrey,
                  width: 0.1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TranslatableText(
                          'Country Code',
                          style: TextStyle(
                            fontSize: 16,
                            color: blackgrey,
                          ),
                        ),
                        Row(
                          children: [
                            CountryFlag.fromLanguageCode(
                              'en',
                              width: 32,
                              height: 20,
                              shape: const Rectangle(),
                            ),
                            w10,
                            const TranslatableText(
                              '(+44)',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 28,
                      color: darkBlue,
                    ),
                  ],
                ),
              ),
            ),
            h15,
            Container(
              width: double.infinity,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: blackgrey,
                  width: 0.1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TranslatableText(
                      'Phone number',
                      style: TextStyle(
                        fontSize: 16,
                        color: blackgrey,
                      ),
                    ),
                    const TranslatableText(
                      '+998900777199',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            h15,
            Container(
              width: double.infinity,
              height: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: blackgrey,
                  width: 0.1,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TranslatableText(
                      'ID card number',
                      style: TextStyle(
                        fontSize: 16,
                        color: blackgrey,
                      ),
                    ),
                    const TranslatableText(
                      '123456789012345',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            h10,
            TranslatableText(
              'This contact is for e-ticket and refund/scheduling',
              style: TextStyle(
                fontSize: 16,
                color: blackgrey,
              ),
            ),
            h20,
            Button.gobutton(() {
              Get.back();
            },
                TranslatableText(
                  'Save changes',
                  style: TextStyle(
                    color: white,
                    fontSize: 20,
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
