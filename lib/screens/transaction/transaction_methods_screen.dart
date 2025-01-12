import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionMethodsScreen extends StatefulWidget {
  const TransactionMethodsScreen({super.key});

  @override
  State<TransactionMethodsScreen> createState() =>
      _TransactionMethodsScreenState();
}

class _TransactionMethodsScreenState extends State<TransactionMethodsScreen> {
  int? selectedOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  size: 36,
                ),
              ),
              h25,
              Text(
                'Digital Payment Method(s)',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              h10,
              Text(
                'Swipe left to set your default method',
                style: TextStyle(
                  color: blackgrey,
                  fontSize: 16,
                ),
              ),
              h20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/master.png',
                        width: 35,
                        height: 25,
                      ),
                      w15,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '****9876',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          h10,
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/verified.png',
                                width: 18,
                              ),
                              w5,
                              Text(
                                'Get 10\$ Discount',
                                style: TextStyle(
                                  color: grey,
                                  fontSize: 13,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Radio(
                    activeColor: darkBlue,
                    value: 1,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value;
                      });
                    },
                  ),
                ],
              ),
              h25,
              Divider(
                color: grey,
              ),
              h25,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/paypal.png',
                        width: 35,
                        height: 25,
                      ),
                      w15,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '****9876',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          h10,
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/verified.png',
                                width: 18,
                              ),
                              w5,
                              Text(
                                'Get 10\$ Discount',
                                style: TextStyle(
                                  color: grey,
                                  fontSize: 13,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
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
                ],
              ),
              h15,
              Text(
                'Add Methods',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              h25,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.credit_card_rounded,
                        color: darkBlue,
                        size: 36,
                      ),
                      w15,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Credit or debit card',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          h10,
                          Text(
                            'Visa, Mastercard, AMEX and JCB',
                            style: TextStyle(fontSize: 16, color: blackgrey),
                          ),
                          h10,
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/verified.png',
                                width: 18,
                              ),
                              w5,
                              Text(
                                'Get 10\$ Discount',
                                style: TextStyle(
                                  color: grey,
                                  fontSize: 13,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Text(
                    'Add',
                    style:
                        TextStyle(color: darkBlue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              h25,
              Divider(
                color: grey,
              ),
              h25,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/refund.png',
                        width: 30,
                        height: 30,
                      ),
                      w15,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Transfer',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          h10,
                          Text(
                            'Transferring via ATM, Internet \nBanking & Mobile Banking',
                            style: TextStyle(fontSize: 16, color: blackgrey),
                          ),
                          h10,
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/verified.png',
                                width: 18,
                              ),
                              w5,
                              Text(
                                'Get 10\$ Discount',
                                style: TextStyle(
                                  color: grey,
                                  fontSize: 13,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Text(
                    'Add',
                    style:
                        TextStyle(color: darkBlue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 130,
              ),
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
                        Get.bottomSheet(
                            isScrollControlled: true,
                            Container(
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              width: double.infinity,
                              height: 400,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 75,
                                      height: 3,
                                      decoration: BoxDecoration(
                                          color: greyish,
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                    ),
                                    h30,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Continue with Touch ID to\n    Proceed the payment',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/images/fingerprint.png',
                                          width: 150,
                                          height: 150,
                                        ),
                                        h40,
                                        GestureDetector(
                                          onTap: () {
                                            Get.closeAllSnackbars();
                                            Get.bottomSheet(
                                                isScrollControlled: true,
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: white,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(30),
                                                              topRight: Radius
                                                                  .circular(
                                                                      30))),
                                                  width: double.infinity,
                                                  height: 400,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          width: 75,
                                                          height: 3,
                                                          decoration: BoxDecoration(
                                                              color: greyish,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          25)),
                                                        ),
                                                        h30,
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Continue with Face ID to\n    Proceed the payment',
                                                              style: TextStyle(
                                                                fontSize: 25,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            Image.asset(
                                                              'assets/images/faceid.png',
                                                              width: 150,
                                                              height: 150,
                                                            ),
                                                            h40,
                                                            GestureDetector(
                                                              onTap: () {
                                                               Get.toNamed(Routes.passcode);
                                                              },
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 58,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                decoration: BoxDecoration(
                                                                    color:
                                                                        greyish,
                                                                    borderRadius:
                                                                        BorderRadius.all(
                                                                            Radius.circular(15))),
                                                                child: Text(
                                                                  'Use Passcode Instead',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ));
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: 58,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                color: greyish,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15))),
                                            child: Text(
                                              'Use Passcode Instead',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: darkBlue,
                        ),
                        width: 280,
                        height: 62,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Proceed The Payment',
                              style: TextStyle(fontSize: 20, color: white),
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
