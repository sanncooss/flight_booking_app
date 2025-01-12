import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingDetaisScreen extends StatefulWidget {
  const BookingDetaisScreen({super.key});

  @override
  State<BookingDetaisScreen> createState() => _BookingDetaisScreenState();
}

bool isToggled = false;

List<bool> isSelected = [
  false,
  false,
  false,
];

class _BookingDetaisScreenState extends State<BookingDetaisScreen> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              h20,
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_left_outlined,
                      size: 36,
                    ),
                  ),
                  w10,
                ],
              ),
              const Text(
                'Seach Flights',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
              h20,
              const Text(
                'Contact Details',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              h5,
              Text(
                '(For E-Ticket/Voucher)',
                style: TextStyle(
                  fontSize: 18,
                  color: blackgrey,
                ),
              ),
              h15,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.1,
                  ),
                ),
                height: 180,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: blackgrey,
                                backgroundImage:
                                    const AssetImage('assets/images/hero.png'),
                                child: const SizedBox(
                                  width: 60,
                                  height: 60,
                                ),
                              ),
                              w15,
                              const Text(
                                'Matt Murdock',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.contactPersonDetails);
                            },
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                color: darkBlue,
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      ),
                      h15,
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: blackgrey,
                            width: 0.1,
                          ),
                        ),
                        width: double.infinity,
                        height: 85,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.mail,
                                    color: darkBlue,
                                    size: 20,
                                  ),
                                  w5,
                                  Text(
                                    'imnotdaredevil@mail.com',
                                    style: TextStyle(
                                        color: blackgrey, fontSize: 16),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: darkBlue,
                                    size: 20,
                                  ),
                                  w5,
                                  Text(
                                    '+628123223922',
                                    style: TextStyle(
                                        color: blackgrey, fontSize: 16),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              h15,
              const Text(
                'Passenger info',
                style: TextStyle(fontSize: 20),
              ),
              h15,
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: blackgrey,
                    width: 0.1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Same As Contact Details',
                        style: TextStyle(fontSize: 16),
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
              ),
              h10,
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.passengerInfo);
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: blackgrey,
                      width: 0.1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Selena Kayle',
                          style: TextStyle(fontSize: 16),
                        ),
                        IconButton(
                            onPressed: () {
                              Get.toNamed(Routes.passengerInfo);
                            },
                            icon: Icon(
                              Icons.keyboard_arrow_right,
                              color: blackgrey,
                              size: 30,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              h10,
              const Text(
                'Facility',
                style: TextStyle(fontSize: 20),
              ),
              h10,
              GestureDetector(
                onTap: () {
                  Get.bottomSheet(
                    isScrollControlled: true,
                    Container(
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(
                            25,
                          ),
                        ),
                      ),
                      width: double.infinity,
                      height: 480,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Container(
                              width: 75,
                              height: 3,
                              decoration: BoxDecoration(
                                  color: greyish,
                                  borderRadius: BorderRadius.circular(25)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                h30,
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Add Baggage',
                                      style: TextStyle(
                                        fontSize: 28,
                                      ),
                                    ),
                                    h30,
                                    const Text(
                                      '1. Matt Murdock',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    h5,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectedIndex = 0;
                                            });
                                          },
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  color: selectedIndex == 0
                                                      ? darkBlue
                                                      : white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                      color: blackgrey,
                                                      width: 0.1)),
                                              width: 120,
                                              height: 80,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '0 Kg',
                                                    style: TextStyle(
                                                      color: selectedIndex == 0
                                                          ? white
                                                          : black,
                                                      fontSize: 28,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Free',
                                                    style: TextStyle(
                                                      color: selectedIndex == 0
                                                          ? white
                                                          : blackgrey,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectedIndex = 1;
                                            });
                                          },
                                          child: Container(
                                              decoration: BoxDecoration(
                                                  color: selectedIndex == 1
                                                      ? darkBlue
                                                      : white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(
                                                      color: blackgrey,
                                                      width: 0.1)),
                                              width: 120,
                                              height: 80,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '5 KG',
                                                    style: TextStyle(
                                                      color: selectedIndex == 1
                                                          ? white
                                                          : black,
                                                      fontSize: 26,
                                                    ),
                                                  ),
                                                  Text(
                                                    'RP 210.000',
                                                    style: TextStyle(
                                                      color: selectedIndex == 1
                                                          ? white
                                                          : blackgrey,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectedIndex = 2;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: selectedIndex == 2
                                                    ? darkBlue
                                                    : white,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(
                                                    color: blackgrey,
                                                    width: 0.1)),
                                            width: 120,
                                            height: 80,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '10 KG',
                                                  style: TextStyle(
                                                    color: selectedIndex == 2
                                                        ? white
                                                        : black,
                                                    fontSize: 26,
                                                  ),
                                                ),
                                                Text(
                                                  'RP 510.000',
                                                  style: TextStyle(
                                                    color: selectedIndex == 2
                                                        ? white
                                                        : blackgrey,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    h20,
                                    Container(
                                      height: 110,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: blackgrey,
                                          width: 0.1,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '1. Matt Murdock',
                                                  style: TextStyle(
                                                    color: blackgrey,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                Text(
                                                  'Rp. 210.000',
                                                  style: TextStyle(
                                                    color: blackgrey,
                                                    fontSize: 16,
                                                  ),
                                                )
                                              ],
                                            ),
                                            h15,
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Total',
                                                  style: TextStyle(
                                                    color: blackgrey,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                const Text(
                                                  'Rp. 210.000',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    h30,
                                    Button.gobutton(
                                      () {
                                        Get.back();
                                      },
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.add_circle_outlined,
                                            color: white,
                                            size: 26,
                                          ),
                                          w10,
                                          Text(
                                            'Add Bagagge',
                                            style: TextStyle(
                                                color: white, fontSize: 20),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: blackgrey,
                      width: 0.1,
                    ),
                  ),
                  height: 80,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Baggage',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Add Extra baggage',
                              style: TextStyle(fontSize: 16, color: blackgrey),
                            )
                          ],
                        ),
                        Icon(
                          Icons.add,
                          color: blackgrey,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              h15,
              const Text(
                'Extra Protection',
                style: TextStyle(fontSize: 20),
              ),
              h10,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: blackgrey,
                    width: 0.1,
                  ),
                ),
                width: double.infinity,
                height: 225,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.verified_user,
                                color: darkBlue,
                                size: 28,
                              ),
                              w10,
                              const Text(
                                'Travel Insurance',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                          const Text(
                            '\$125',
                            style: TextStyle(fontSize: 28),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.done,
                                  size: 18,
                                  color: darkBlue,
                                ),
                                w5,
                                Text(
                                  'Coverage for accidents up to \$10000',
                                  style: TextStyle(
                                    color: blackgrey,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                            h5,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.done,
                                  size: 18,
                                  color: darkBlue,
                                ),
                                w5,
                                Text(
                                  'Coverage for trip cancellation by passengers\nup to \$1250',
                                  style: TextStyle(
                                    color: blackgrey,
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: greyish,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add_circle_outlined,
                                color: darkBlue,
                              ),
                              w10,
                              const Text(
                                'Add Insurance',
                                style: TextStyle(fontSize: 22),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              h25,
              SizedBox(
                height: 65,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Subtotal',
                              style: TextStyle(
                                color: blackgrey,
                                fontSize: 16,
                              ),
                            ),
                            w5,
                            Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: darkBlue,
                            ),
                          ],
                        ),
                        const Text(
                          '\$132',
                          style: TextStyle(fontSize: 28),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.passengerSeat);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: darkBlue,
                        ),
                        width: 220,
                        height: 62,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Select Seat',
                              style: TextStyle(fontSize: 22, color: white),
                            ),
                            w10,
                            Icon(
                              Icons.check_circle,
                              color: white,
                              size: 26,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
