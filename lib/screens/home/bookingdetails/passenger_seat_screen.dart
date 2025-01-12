import 'package:flight_booking_app/screens/core/routes.dart';
import 'package:flight_booking_app/utils/buttons.dart';
import 'package:flight_booking_app/utils/colors.dart';
import 'package:flight_booking_app/utils/sizedboxes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SeatSelectionScreen extends StatefulWidget {
  const SeatSelectionScreen({super.key});

  @override
  _SeatSelectionScreenState createState() => _SeatSelectionScreenState();
}

class _SeatSelectionScreenState extends State<SeatSelectionScreen> {
  final List<List<String>> seats = [
    [
      'available',
      'available',
      'unavailable',
      'available',
      'available',
      'unavailable'
    ],
    [
      'available',
      'available',
      'unavailable',
      'available',
      'available',
      'unavailable'
    ],
    [
      'available',
      'selected',
      'unavailable',
      'available',
      'available',
      'unavailable'
    ],
    [
      'unavailable',
      'unavailable',
      'unavailable',
      'available',
      'available',
      'unavailable'
    ],
    [
      'available',
      'available',
      'available',
      'available',
      'available',
      'available'
    ],
    [
      'available',
      'available',
      'unavailable',
      'unavailable',
      'unavailable',
      'unavailable'
    ],
    [
      'available',
      'available',
      'available',
      'available',
      'available',
      'available'
    ],
    [
      'available',
      'available',
      'unavailable',
      'available',
      'available',
      'unavailable'
    ],
  ];

  String selectedSeat = '';
  int rows = 8;
  int columns = 6;

  void selectSeat(int row, int col) {
    if (seats[row][col] == 'available') {
      setState(() {
        for (int i = 0; i < seats.length; i++) {
          for (int j = 0; j < seats[i].length; j++) {
            if (seats[i][j] == 'selected') {
              seats[i][j] = 'available';
            }
          }
        }
        seats[row][col] = 'selected';
        selectedSeat = 'Row ${row + 1}, Col ${col + 1}';
      });
    }
  }

  Future<void> onSubmit() async {
    await Get.bottomSheet(
      isScrollControlled: true,
      Container(
        width: double.infinity,
        height: 480,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25), topLeft: Radius.circular(25))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: 75,
                height: 3,
                decoration: BoxDecoration(
                    color: greyish, borderRadius: BorderRadius.circular(25)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  h30,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Double check your \nBookings',
                        style: TextStyle(fontSize: 27),
                      ),
                      h5,
                      Text(
                        'Please before you proceed to payment, make sure your\ndata is correct.',
                        style: TextStyle(color: blackgrey, fontSize: 14),
                      ),
                      h25,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    MainAxisAlignment.spaceBetween,
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
                      h50,
                      Button.gobutton(() {
                        Get.toNamed(Routes.mainRoutePage);
                      },
                          Text(
                            'Save changes',
                            style: TextStyle(
                              color: white,
                              fontSize: 20,
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              h20,
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.keyboard_arrow_left_outlined,
                  size: 36,
                ),
              ),
              h20,
              Text(
                'Passenger Info',
                style: TextStyle(fontSize: 24),
              ),
              h30,

              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wed, OCT 26 2022',
                        style: TextStyle(
                          color: blackgrey,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'New York, USA',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '(LGA)',
                        style: TextStyle(
                          color: blackgrey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  w15,
                  Container(
                    width: 85,
                    height: 40,
                    decoration: BoxDecoration(
                      color: darkBlue,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Image.asset(
                      'assets/images/airplanemode_active.png',
                      width: 58,
                      height: 48,
                    ),
                  ),
                  w50,
                  w40,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '9:37 PM',
                        style: TextStyle(
                          color: blackgrey,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Danang, VIE',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        '(DAD)',
                        style: TextStyle(
                          color: blackgrey,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("A"),
                    Text("B"),
                    Text("C"),
                    Text("D"),
                    Text("E"),
                    Text("F"),
                  ]),
              h15,
              SizedBox(
                height: 500,
                width: double.infinity,
                child: Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: columns,
                      childAspectRatio: 1.3,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: rows * columns,
                    itemBuilder: (context, index) {
                      final row = index ~/ columns;
                      final col = index % columns;
                      final seatStatus = seats[row][col];

                      return GestureDetector(
                        onTap: () => selectSeat(row, col),
                        child: SizedBox(
                          width: 50,
                          height: 15,
                          child: Container(
                            decoration: BoxDecoration(
                              color: seatStatus == 'unavailable'
                                  ? white
                                  : seatStatus == 'selected'
                                      ? darkBlue
                                      : blueish,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: seatStatus == 'unavailable'
                                    ? white
                                    : seatStatus == 'selected'
                                        ? darkBlue
                                        : Colors.blueAccent,
                                width: 2,
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                seatStatus == 'unavailable'
                                    ? Icons.close
                                    : seatStatus == 'selected'
                                        ? Icons.check
                                        : null,
                                color: seatStatus == 'unavailable'
                                    ? blueish
                                    : seatStatus == 'selected'
                                        ? white
                                        : null,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              // Legend
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    LegendItem(
                      color: Colors.blue,
                      label: 'Selected',
                      icon: Icon(
                        Icons.check,
                        color: white,
                        size: 18,
                      ),
                    ),
                    LegendItem(
                      color: blueish,
                      label: 'Available',
                      border: true,
                      icon: null,
                    ),
                    LegendItem(
                      color: Colors.grey,
                      label: 'Not Available',
                      icon: Icon(
                        Icons.close,
                        color: darkBlue,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              h15,
              Text(
                'Selected Seat:',
                style: TextStyle(color: black, fontSize: 18),
              ),
              h10,
              Stack(children: [
                const SizedBox(
                  width: 120,
                  height: 60,
                ),
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25), color: darkBlue),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: white,
                        ),
                        Text(
                          '#1 5A',
                          style: TextStyle(color: white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    left: 85,
                    top: -1,
                    child: Icon(
                      Icons.remove_circle,
                      color: black,
                    ))
              ]),
              h20,
              SlideAction(
                  elevation: 0,
                  innerColor: darkBlue,
                  outerColor: blueish,
                  sliderButtonIconSize: 70,
                  sliderButtonIcon: Icon(
                    Icons.arrow_forward_ios,
                    color: white,
                  ),
                  text: "Slide to Book",
                  sliderRotate: false,
                  textStyle: TextStyle(color: darkBlue, fontSize: 25),
                  onSubmit: onSubmit),
            ],
          ),
        ),
      ),
    );
  }
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String label;
  final bool border;
  final Icon? icon;
  final double circleSize;
  final TextStyle? labelStyle;

  const LegendItem({
    super.key,
    required this.color,
    required this.label,
    this.border = false,
    this.icon,
    this.circleSize = 20.0,
    this.labelStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: circleSize,
          height: circleSize,
          decoration: BoxDecoration(
            color: color,
            border: border ? Border.all(color: Colors.black) : null,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: icon,
        ),
        SizedBox(width: 8),
        Text(
          label,
          style: labelStyle,
        ),
      ],
    );
  }
}
