import 'package:carrental/bindings.dart';
import 'package:carrental/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialBinding: AllBindings(),
        title: 'Car Rental',
        defaultTransition: Transition.fadeIn,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        home: const HomeScreen());
  }
}
