import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/screens/home/booking/discover_page.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DiscoverPage(),
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(
            icon: IconButton(onPressed: () {}, icon: Icon(Icons.home, color: darkBlue,)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: () {
              Get.toNamed(Routes.transaction);
            }, icon: Icon(Icons.confirmation_num, color: blackgrey,)),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: () {
              Get.toNamed(Routes.account);
            }, icon: Icon(Icons.person, color: blackgrey,)),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
 