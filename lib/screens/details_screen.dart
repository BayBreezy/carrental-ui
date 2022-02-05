import 'package:carrental/config/constants.dart';
import 'package:carrental/controllers/car.controller.dart';
import 'package:carrental/models/car.dart';
import 'package:carrental/widgets/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/car_image_slider.dart';
import '../widgets/car_specs.dart';
import '../widgets/rent_now_button.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key, required this.car}) : super(key: key);
  Car car;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Theme.of(context).iconTheme.color,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [
          Obx(
            () => IconButton(
              onPressed: () {
                Get.find<CarController>().toggleFave(car.name);
              },
              icon: Icon(Get.find<CarController>().favorites.contains(car)
                  ? Icons.favorite
                  : Icons.favorite_border),
            ),
          )
        ],
      ),
      bottomNavigationBar: RentNow(car: car),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarImageSlider(car: car),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: Text(
              car.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: kPadding),
          const SectionHeading(title: "Car specs"),
          SizedBox(height: kPadding / 2),
          CarSpecs(car: car),
          SizedBox(height: kPadding),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: Row(
              children: [
                const Icon(
                  Icons.person,
                  size: 18,
                ),
                const SizedBox(width: 10),
                const Text("Passengers"),
                const Spacer(),
                Text("${car.passengers}"),
              ],
            ),
          ),
          SizedBox(height: kPadding),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: Row(
              children: [
                const Icon(
                  Icons.timeline,
                  size: 18,
                ),
                const SizedBox(width: 10),
                const Text("Transmission"),
                const Spacer(),
                Text(car.manual == true ? 'Manual' : 'Automatic'),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
