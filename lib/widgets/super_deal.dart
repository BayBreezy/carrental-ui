import 'package:carrental/models/car.dart';
import 'package:carrental/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../config/constants.dart';

class SuperDeal extends StatelessWidget {
  SuperDeal({Key? key, required this.car}) : super(key: key);
  Car car;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kPadding),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              car.images[0],
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: kPadding),
          padding: EdgeInsets.symmetric(horizontal: kPadding, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            color: Colors.black.withOpacity(0.5),
          ),
          child: Text(
            car.name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding * 1.4),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyLarge!.color),
                        children: [
                          TextSpan(
                              text:
                                  "${NumberFormat.simpleCurrency(locale: 'en_US').format(car.price)} ",
                              style:
                                  const TextStyle(fontWeight: FontWeight.w600)),
                          const TextSpan(
                            text: " per day",
                          ),
                        ]),
                  ),
                  SizedBox(width: kPadding),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 35),
                        shape: const StadiumBorder(),
                        elevation: 0,
                      ),
                      onPressed: () {
                        Get.to(() => DetailScreen(car: car));
                      },
                      child: const Text("See More"),
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
