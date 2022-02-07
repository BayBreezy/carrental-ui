import 'package:carrental/config/constants.dart';
import 'package:carrental/controllers/rent.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../models/car.dart';

class RentSheet extends StatelessWidget {
  RentSheet({
    Key? key,
    required this.car,
  }) : super(key: key);

  final Car car;
  var rentctl = RentController();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.9),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  car.name,
                  style: const TextStyle(fontSize: 20),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 17,
                    )),
              ],
            ),
            SizedBox(height: kPadding),
            const Text(
              'Sart date',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                rentctl.pickStartDate(car.price);
              },
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.3),
                ),
                child: Obx(
                  () => Row(
                    children: [
                      Text(
                        DateFormat.yMMMEd().format(rentctl.rentStartDate.value),
                        style: const TextStyle(fontSize: 15),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.calendar_today,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: kPadding),
            const Text(
              'Return date',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () async {
                rentctl.pickReturnDate(car.price);
              },
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey.withOpacity(0.3),
                ),
                child: Obx(
                  () => Row(
                    children: [
                      Text(
                        DateFormat.yMMMEd()
                            .format(rentctl.rentReturnDate.value),
                        style: const TextStyle(fontSize: 15),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.calendar_today,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: kPadding),
            const Text(
              'Total',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Obx(
              () => Text(
                NumberFormat.simpleCurrency(locale: 'en_US', decimalDigits: 2)
                    .format(rentctl.rentTotal.value),
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: kPadding),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(100, 45),
                shape: const StadiumBorder(),
                elevation: 0,
              ),
              onPressed: () async {
                await rentctl.showProccessing();
              },
              child: const Text("Make Payment"),
            ),
          ],
        ));
  }
}
