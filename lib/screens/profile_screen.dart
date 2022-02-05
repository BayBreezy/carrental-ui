import 'package:carrental/config/constants.dart';
import 'package:carrental/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavBar(),
      body: SafeArea(
        child: ListView(children: [
          const SizedBox(height: 10),
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  radius: 80,
                  child: const CircleAvatar(
                    radius: 76,
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage("assets/images/behonbakerface.png"),
                  ),
                ),
                SizedBox(height: kPadding),
                const Text(
                  "Behon Baker",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Text(
                  "Software Engineer",
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
