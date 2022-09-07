import 'package:flutter/material.dart';

Color localPrimary = const Color(0xFF687daf);

Color localTextColor = const Color(0xFF3b3b3b);

Color localBackgroundColor = const Color(0xFFeeedf2);

Color localOrangeColor = const Color(0xFFF37867);

Color localYellowColor = const Color(0xFFd2bdd6);

class Styles {
  static Color primaryColor = localPrimary;

  static Color textColor = localTextColor;

  static Color bgColor = localBackgroundColor;

  static Color orangeColor = localOrangeColor;

  static Color yellowColor = localYellowColor;

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle heading1 = TextStyle(
    fontSize: 26,
    color: textColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle heading2 = TextStyle(
    fontSize: 21,
    color: textColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle heading3 = TextStyle(
    fontSize: 17,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );

  static TextStyle heading4 = TextStyle(
    fontSize: 14,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
}