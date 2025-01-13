import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flight_booking_app/utils/translatabletext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

void signOutUser() async {
  try {
    await FirebaseAuth.instance.signOut();
    Get.offAndToNamed(Routes.signup);
    Get.snackbar("Signed out successfully", 'Signed out from the account');
  } catch (e) {
    Get.snackbar('Could not sign out', 'Try Again');
  }
}

bool isToggled = false;

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Get.toNamed(Routes.mainRoutePage);
                },
                icon: Icon(
                  Icons.home,
                  color: blackgrey,
                )),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Get.toNamed(Routes.transaction);
                },
                icon: Icon(
                  Icons.confirmation_num,
                  color: blackgrey,
                )),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: darkBlue,
                )),
            label: 'Account',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 233,
              decoration: BoxDecoration(
                  color: darkBlue,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(26.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    h20,
                    TranslatableText(
                      'My Profile',
                      style: TextStyle(
                        color: white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    h35,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/hero.png'),
                          backgroundColor: grey,
                          maxRadius: 40,
                        ),
                        w20,
                        SizedBox(
                          width: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TranslatableText(
                                'Jos Creative',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              h5,
                              TranslatableText(
                                'alisanco@gmail.com',
                                style: TextStyle(
                                  color: white,
                                ),
                              ),
                              h5,
                              TranslatableText(
                                '+998900777199',
                                style: TextStyle(
                                  color: white,
                                ),
                              )
                            ],
                          ),
                        ),
                        w25,
                        Icon(
                          Icons.mode_edit_rounded,
                          color: white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            h15,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: grey,
                      width: 1,
                    ))),
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.navigation_outlined,
                                    color: darkBlue,
                                    size: 28,
                                  ),
                                  w15,
                                  TranslatableText(
                                    'My Order',
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                size: 26,
                                color: grey,
                              )
                            ],
                          ),
                          // h20,
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: grey,
                      width: 1,
                    ))),
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.percent,
                                    color: darkBlue,
                                    size: 28,
                                  ),
                                  w15,
                                  TranslatableText(
                                    'My Voucher',
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                              w20,
                            ],
                          ),
                          // h20,
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    // height: 100,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: grey,
                      width: 1,
                    ))),
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.credit_card,
                                    color: darkBlue,
                                    size: 28,
                                  ),
                                  w15,
                                  TranslatableText(
                                    'Payment Methods',
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                size: 26,
                                color: grey,
                              )
                            ],
                          ),
                          // h20,
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: grey,
                      width: 1,
                    ))),
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.person_add_outlined,
                                    color: darkBlue,
                                    size: 28,
                                  ),
                                  w15,
                                  TranslatableText(
                                    'Invite Friends',
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                              Icon(
                                Icons.keyboard_arrow_right_outlined,
                                size: 26,
                                color: grey,
                              )
                            ],
                          ),
                          // h20,
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(26.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.login,
                                  color: darkBlue,
                                  size: 28,
                                ),
                                w15,
                                TranslatableText(
                                  'Quick Login',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
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
                        h10,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 30,
              color: greyish,
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.all(26.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: grey,
                            width: 1,
                          ))),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.question_mark_rounded,
                                        color: darkBlue,
                                        size: 28,
                                      ),
                                      w15,
                                      TranslatableText(
                                        'My Order',
                                        style: TextStyle(fontSize: 20),
                                      )
                                    ],
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    size: 26,
                                    color: grey,
                                  )
                                ],
                              ),
                              h20,
                            ],
                          ),
                        ),
                        h20,
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.settings);
                          },
                          child: SizedBox(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.settings,
                                          color: darkBlue,
                                          size: 28,
                                        ),
                                        w15,
                                        TranslatableText(
                                          'Settings',
                                          style: TextStyle(fontSize: 20),
                                        )
                                      ],
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right_outlined,
                                      size: 26,
                                      color: grey,
                                    )
                                  ],
                                ),
                                h10,
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 30,
              color: greyish,
            ),
            GestureDetector(
              onTap: signOutUser,
              child: Padding(
                padding: const EdgeInsets.all(26.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.logout_outlined,
                              color: darkBlue,
                              size: 28,
                            ),
                            w15,
                            TranslatableText(
                              'Log Out',
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 26,
                          color: grey,
                        )
                      ],
                    ),
                    h10,
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 30,
              color: greyish,
            ),
          ],
        ),
      ),
    );
  }
}
