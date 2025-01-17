import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/translatabletext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:intl/intl.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  int? selectedOption;
  List<DateTime?> selectedDates = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
              color: darkBlue,
            ),
          ),
          Positioned(
            top: 0,
            child: Image.asset(
              'assets/images/map.png',
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: 300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.keyboard_arrow_left_outlined,
                        size: 35,
                        color: white,
                      ),
                    ),
                    TranslatableText(
                      'Search Flights',
                      style: TextStyle(
                        fontSize: 24,
                        color: white,
                      ),
                    ),
                    const SizedBox(width: 40),
                  ],
                ),
                TranslatableText(
                  'Discover \na new world',
                  style: TextStyle(
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                    color: white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 580,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                                });
                              },
                            ),
                            const TranslatableText("One-way"),
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
                            const TranslatableText("Round Trip"),
                          ],
                        ),
                      ],
                    ),
                    h20,
                    const TranslatableText(
                      'From',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    h5,
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: greyish,
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          w10,
                          Icon(
                            Icons.flight_takeoff_rounded,
                            color: darkBlue,
                            size: 26,
                          ),
                          w10,
                          const TranslatableText(
                            'New York, USA',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    h20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TranslatableText(
                          'To',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.change_circle_outlined,
                          color: darkBlue,
                          size: 26,
                        )
                      ],
                    ),
                    h5,
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: greyish,
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          w10,
                          Icon(
                            Icons.flight_land_rounded,
                            color: darkBlue,
                            size: 26,
                          ),
                          w10,
                          const TranslatableText(
                            'NDa Nang, Vietnam',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    h20,
                    const TranslatableText(
                      'Departure Date',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    h5,
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: greyish,
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      height: 48,
                      child: GestureDetector(
                        onTap: () {
                          Get.bottomSheet(
                            enterBottomSheetDuration:
                                const Duration(seconds: 1),
                            isScrollControlled: true,
                            Container(
                              width: double.infinity,
                              height: 500,
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TranslatableText(
                                      'Sellect Date',
                                      style: TextStyle(
                                        fontSize: 28,
                                      ),
                                    ),
                                    TranslatableText(
                                      DateFormat('yyyy-MM-dd')
                                          .format(DateTime.now()),
                                      style: TextStyle(
                                        color: blackgrey,
                                      ),
                                    ),
                                    CalendarDatePicker2(
                                        config: CalendarDatePicker2Config(
                                          calendarType:
                                              CalendarDatePicker2Type.single,
                                          selectedDayHighlightColor:
                                              Colors.blue,
                                          weekdayLabels: [
                                            'Mon',
                                            'Tue',
                                            'Wed',
                                            'Thu',
                                            'Fri',
                                            'Sat',
                                            'Sun'
                                          ],
                                          firstDate: DateTime(2020),
                                          lastDate: DateTime(2030),
                                          dayTextStyle: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                          selectedDayTextStyle: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                          disabledDayTextStyle: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        onValueChanged: (dates) {
                                          setState(() {
                                            selectedDates = dates;
                                          });
                                        },
                                        value: [DateTime.now()]),
                                    Button.gobutton(() {
                                      Get.toNamed(Routes.flightList);
                                    },
                                        TranslatableText(
                                          'Search date',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            w10,
                            Icon(
                              Icons.calendar_month_outlined,
                              color: darkBlue,
                              size: 26,
                            ),
                            w10,
                            const TranslatableText(
                              'August 28, 2021',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    h20,
                    const TranslatableText(
                      'Travelers',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    h5,
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: greyish,
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          w10,
                          Icon(
                            Icons.person_3_outlined,
                            color: darkBlue,
                            size: 26,
                          ),
                          w10,
                          const TranslatableText(
                            '1 Adult, 1 child, 0 Infant',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    h40,
                    Button.gobutton(
                      () {
                        Get.toNamed(
                          Routes.flightList,
                        );
                      },
                      TranslatableText(
                        'Search flights',
                        style: TextStyle(fontSize: 20, color: white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
