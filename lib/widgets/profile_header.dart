import 'package:carrental/controllers/util.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/constants.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding, vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: kPrimaryColor,
            radius: 20,
            child: const CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/images/behonbakerface.png"),
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            "Behon Baker",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Obx(
            () => IconButton(
              onPressed: () {
                Get.find<UtilController>().toggleTheme();
              },
              icon: Icon(Get.find<UtilController>().isDarkTheme.value
                  ? Icons.nightlight_round
                  : Icons.brightness_7),
            ),
          )
        ],
      ),
    );
  }
}
