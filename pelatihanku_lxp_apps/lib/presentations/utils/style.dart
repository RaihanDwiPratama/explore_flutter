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

  static InputDecoration inputSummary = InputDecoration(
    contentPadding: const EdgeInsets.all(12),
    hintStyle: Style.textSks.copyWith(
      color: ColorLxp.neutral800,
      fontWeight: FontWeight.w400,
    ),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
      gapPadding: 6.0,
      borderSide: BorderSide(
        color: ColorLxp.neutral200,
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
      gapPadding: 6.0,
      borderSide: BorderSide(
        color: ColorLxp.neutral200,
      ),
    ),
  );

  static ButtonStyle btnCourse = ElevatedButton.styleFrom(
    backgroundColor: ColorLxp.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );

  static BoxDecoration btnBlue = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: ColorLxp.primary,
  );

  static BoxDecoration borderBlue = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    border: Border.all(
      color: ColorLxp.primary,
    ),
  );
  
  static BoxDecoration borderNeutral = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    border: Border.all(
      color: ColorLxp.neutral200,
    ),
  );

  static InputDecoration nonBorder = InputDecoration(
    hintText: 'Buat rangkuman...',
    hintStyle: Style.textTitleCourse.copyWith(
      color: ColorLxp.neutral500,
      fontWeight: FontWeight.w500,
    ),
    floatingLabelStyle: Style.textTitleCourse.copyWith(
      fontWeight: FontWeight.w400,
    ),
    border: InputBorder.none,
  );

  static BoxDecoration btnIcon = BoxDecoration(
    borderRadius: BorderRadius.circular(21),
    border: Border.all(
      width: 2,
      color: ColorLxp.primary,
    ),
  );
}
