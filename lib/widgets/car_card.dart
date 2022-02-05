import 'package:carrental/models/car.dart';
import 'package:carrental/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../config/constants.dart';

class CarCard extends StatelessWidget {
  CarCard({Key? key, required this.car}) : super(key: key);

  Car car;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => DetailScreen(car: car));
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                car.images[0],
                fit: BoxFit.cover,
                width: double.infinity,
                height: 170,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding / 2),
              child: Text(
                car.name,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding / 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${NumberFormat.simpleCurrency(locale: 'en_US').format(car.price)} / day",
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.person,
                        size: 15,
                      ),
                      Text(
                        " ${car.passengers}",
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.timeline,
                        size: 15,
                      ),
                      Text(
                        " ${car.manual == true ? 'Manual' : 'Automatic'}",
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "${car.rating}",
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Colors.yellow.shade800,
                        size: 15,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
