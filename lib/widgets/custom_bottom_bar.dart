import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../config/constants.dart';
import '../controllers/util.controller.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      items: [
        SalomonBottomBarItem(
            icon: const Icon(Icons.home), title: const Text('Home')),
        SalomonBottomBarItem(
            icon: const Icon(Icons.favorite), title: const Text('Favorites')),
        SalomonBottomBarItem(
            icon: CircleAvatar(
              backgroundColor: kPrimaryColor,
              radius: 20,
              child: const CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/behonbakerface.png"),
              ),
            ),
            title: const Text('Profile')),
      ],
      currentIndex: Get.find<UtilController>().currentBottomNavIndex.value,
      onTap: Get.find<UtilController>().switchPage,
    );
  }
}
