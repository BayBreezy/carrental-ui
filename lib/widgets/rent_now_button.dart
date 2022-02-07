import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../config/constants.dart';
import '../models/car.dart';
import 'rent_sheet.dart';

class RentNow extends StatelessWidget {
  const RentNow({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: kPadding * 0.9),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          "${NumberFormat.simpleCurrency(locale: 'en_US').format(car.price)} / day",
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: kPadding * 2),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(100, 45),
              shape: const StadiumBorder(),
              elevation: 0,
            ),
            onPressed: () {
              Get.bottomSheet(
                RentSheet(car: car),
                barrierColor:
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
                elevation: 5,
              );
            },
            child: const Text("Rent Now"),
          ),
        )
      ]),
    );
  }
}
