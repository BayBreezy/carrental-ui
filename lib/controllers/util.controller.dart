import 'package:carrental/screens/favorite_screen.dart';
import 'package:carrental/screens/home_screen.dart';
import 'package:carrental/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UtilController extends GetxController {
  final _box = GetStorage();
  var isDarkTheme = false.obs;
  var currentBottomNavIndex = 0.obs;

  void switchPage(int i) {
    switch (i) {
      case 0:
        Get.offAll(const HomeScreen());
        break;
      case 1:
        Get.offAll(const FavoriteScreen());
        break;
      case 2:
        Get.offAll(const ProfileScreen());
        break;
      default:
    }
    currentBottomNavIndex.value = i;
  }

  bool get getTheme {
    var t = _box.read('isDark') ?? false;
    isDarkTheme.value = t;
    return t;
  }

  void toggleTheme() {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
    _box.write("isDark", Get.isDarkMode);
    isDarkTheme.value = Get.isDarkMode;
  }

  @override
  void onInit() {
    super.onInit();
    Get.changeThemeMode(getTheme ? ThemeMode.light : ThemeMode.dark);
  }
}
