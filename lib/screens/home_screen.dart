import 'package:carrental/config/constants.dart';
import 'package:carrental/controllers/car.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/brand_selector.dart';
import '../widgets/car_list.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/profile_header.dart';
import '../widgets/search_input.dart';
import '../widgets/section_heading.dart';
import '../widgets/super_deal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavBar(),
      body: SafeArea(
        child: ListView(children: [
          const SizedBox(height: 10),
          const ProfileHeader(),
          const SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: const Text(
              "Let's take that trip today!",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: kPadding * 1.5),
          const SearchInput(),
          SizedBox(height: kPadding * 1.5),
          const BrandSelector(),
          SizedBox(height: kPadding * 1.5),
          const SectionHeading(title: "Super Deal"),
          SizedBox(height: kPadding),
          SuperDeal(
            car: Get.find<CarController>().allCars[2],
          ),
          SizedBox(height: kPadding),
          const SectionHeading(title: "Available"),
          SizedBox(height: kPadding),
          CarList(
            carList: Get.find<CarController>().allCars,
          )
        ]),
      ),
    );
  }
}
