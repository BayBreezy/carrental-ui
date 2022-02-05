import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var kPrimaryColor = Colors.deepPurple;
var kPadding = 24.0;

var lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: kPrimaryColor,
  primarySwatch: kPrimaryColor,
  scaffoldBackgroundColor: Colors.white,
  textTheme: GoogleFonts.dmSansTextTheme(),
);
var darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: kPrimaryColor,
  primarySwatch: kPrimaryColor,
  scaffoldBackgroundColor: const Color.fromARGB(255, 6, 4, 14),
  textTheme: GoogleFonts.dmSansTextTheme(
    ThemeData(brightness: Brightness.dark).textTheme,
  ),
);
