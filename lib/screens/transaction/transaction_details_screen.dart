import 'package:easy_localization/easy_localization.dart';
import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionDetailsScreen extends StatelessWidget {
  const TransactionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  size: 40,
                ),
              ),
              h15,
              Text(
                'Transaction Details',
                style: TextStyle(fontSize: 26),
              ),
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Card(
                  color: white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: grey,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                w10,
                                Text(
                                  'Southwest Airlines',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Executive',
                              style: TextStyle(color: blackgrey),
                            )
                          ],
                        ),
                        h10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'GTH',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '14.00',
                                  style:
                                      TextStyle(color: blackgrey, fontSize: 14),
                                )
                              ],
                            ),
                            Container(
                              width: 75,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: greyish,
                                  width: 1,
                                ),
                              ),
                              child: Image.asset(
                                'assets/images/airplanemode_active.png',
                                width: 35,
                                height: 35,
                                color: darkBlue,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'KHQ',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '07.15',
                                  style:
                                      TextStyle(color: blackgrey, fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                        h20,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      size: 18,
                                      color: darkBlue,
                                    ),
                                    w5,
                                    Text(
                                      '2 Person',
                                      style: TextStyle(fontSize: 14),
                                    )
                                  ],
                                ),
                                w10,
                                Row(
                                  children: [
                                    Icon(
                                      Icons.bolt,
                                      size: 18,
                                      color: darkBlue,
                                    ),
                                    // w5,/
                                    Text(
                                      'Premium',
                                      style: TextStyle(fontSize: 14),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text('IDR 350.000'),
                                Text(
                                  '/Pax',
                                  style: TextStyle(
                                    color: grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        h25,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  maxRadius: 18,
                                  backgroundImage:
                                      AssetImage('assets/images/hero2.png'),
                                ),
                                w10,
                                Text(
                                  'Matt Murdock',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              'Edit',
                              style: TextStyle(
                                color: darkBlue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              h10,
              SizedBox(
                width: double.infinity,
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Status',
                          style: TextStyle(color: blackgrey, fontSize: 16),
                        ),
                        Text(
                          'Success',
                          style: TextStyle(
                            color: darkBlue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Invoice',
                          style: TextStyle(color: blackgrey, fontSize: 16),
                        ),
                        Text(
                          'INV1234567',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transaction Date',
                          style: TextStyle(color: blackgrey, fontSize: 16),
                        ),
                        Text(
                          'Wed, 18 OCT 2022',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payment Method',
                          style: TextStyle(color: blackgrey, fontSize: 16),
                        ),
                        Text(
                          'Paytren',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              h15,
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: greyish, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '1. Matt Murdock',
                            style: TextStyle(
                              color: blackgrey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'RP. 210.000',
                            style: TextStyle(
                              color: blackgrey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '1. Matt Murdock',
                            style: TextStyle(
                              color: blackgrey,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'RP. 210.000',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              h15,
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.mainRoutePage);
                },
                child: Container(
                  width: double.infinity,
                  height: 56,
                  decoration: BoxDecoration(
                      color: Colors.red[50],
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Refund or reschedule ticket',
                        style: TextStyle(
                          color: red,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      w15,
                      Icon(
                        Icons.arrow_circle_right,
                        size: 30,
                        color: red,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
