import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';

class Style {
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle title = TextStyle(
    fontSize: 18,
    height: 24 / 20,
    color: ColorLxp.neutral800,
  );

  static const TextStyle titleContentBlank = TextStyle(
    fontSize: 16,
    height: 20 / 16,
    color: ColorLxp.neutral400,
  );

  static const TextStyle textButtonBlank = TextStyle(
    fontSize: 16,
    height: 24 / 16,
    color: ColorLxp.white,
  );

  static const TextStyle textTitleCourse = TextStyle(
    fontSize: 14,
    height: 21 / 14,
    color: ColorLxp.neutral800,
  );

  static const TextStyle textSks = TextStyle(
    fontSize: 12,
    height: 18 / 12,
    color: ColorLxp.neutral500,
  );

  static const TextStyle textIndicator = TextStyle(
    fontSize: 10,
    height: 18 / 10,
    color: ColorLxp.neutral500,
  );

  static const TextStyle textPoint = TextStyle(
    fontSize: 24,
    height: 36 / 24,
    color: ColorLxp.black,
  );

  static const TextStyle textDetail = TextStyle(
    fontSize: 18,
    height: 27 / 18,
    fontWeight: FontWeight.w600,
    color: ColorLxp.neutral800,
  );

  static BoxDecoration shadowCourses = BoxDecoration(
    color: ColorLxp.white,
    borderRadius: BorderRadius.circular(8),
    boxShadow: const [
      BoxShadow(
        color: Color.fromARGB(255, 223, 226, 231),
        blurRadius: 20.0,
        spreadRadius: 4,
        offset: Offset(0, 1),
      )
    ],
  );

  static BoxDecoration btnSummary = BoxDecoration(
    color: ColorLxp.neutral300,
    borderRadius: BorderRadius.circular(8),
  );

  static BoxDecoration shadowSummary = const BoxDecoration(
    color: ColorLxp.white,
    boxShadow: [
      BoxShadow(
        color: Color.fromARGB(255, 223, 226, 231),
        blurRadius: 20.0,
        offset: Offset(0, -4),
      ),
    ],
  );
}
