import 'package:flight_booking_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Button {
  static Widget gobutton(Function callback, Widget child) {
    return GestureDetector(
      onTap: () => callback(),
      child: Container(
        width: double.infinity,
        height: 58,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: darkBlue,
        ),
        child: Center(child: child),
      ),
    );
  }

  static Widget backbutton() {
    return IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back,
          size: 32,
        ));
  }

  static Widget backbutton2() {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Icon(
        Icons.keyboard_arrow_left_outlined,
        size: 35,
      ),
    );
  }
}
