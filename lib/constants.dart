import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const textColorNight = Colors.white;
const textColorDay = Colors.black;
const darkBackground = Color(0xFF0E1C36);
const lightBackground = Color(0xFFCCF2FA);
const dropDownColor = Color(0xFF6A7282);
const lightBackgroundGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: [0.1, 0.5, 0.7, 0.9],
  colors: [
    Color(0xffE0FCFD),
    Color(0xffD5F7FC),
    Color(0xffBBEBF8),
    Color(0xffB1E6F7),
  ],
);
const darkBackgroundGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: [1],
  colors: [
    Color(0xFF0E1C36),
  ],
);

Widget indicatorImage = Image.asset('images/indicator.png');
Widget earthImage = Image.asset('images/earth.png');
Widget moonImage = Image.asset('images/moon.png');
Widget sunImage = Image.asset('images/sun.png');

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

EdgeInsets tilePadding(BuildContext context) => EdgeInsets.only(
    left: screenWidth(context) * 0.07,
    top: screenWidth(context) * 0.07,
    bottom: screenWidth(context) * 0.07);

TextStyle textStyle(BuildContext context, bool isDarkMode, bool isClicked) =>
    GoogleFonts.raleway(
        color: isDarkMode ? textColorNight : textColorDay,
        // fontSize: screenWidth(context) * 0.1,
        fontWeight: isClicked ? FontWeight.bold : null);
