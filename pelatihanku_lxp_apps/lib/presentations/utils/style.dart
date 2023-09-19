import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';

class Style {
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle title = TextStyle(
    fontSize: 20,
    height: 28 / 20,
    fontFamily: 'Poppins-SemiBold',
    color: ColorLxp.neutral800,
  );

  static const TextStyle titleContentBlank = TextStyle(
    fontSize: 20,
    height: 28 / 20,
    fontFamily: 'Poppins-SemiBold',
    color: ColorLxp.neutral400,
  );
  
  static const TextStyle textButtonBlank = TextStyle(
    fontSize: 16,
    height: 24 / 16,
    fontFamily: 'Poppins-Medium',
    color: ColorLxp.white,
  );

  
  // static const TextStyle label = TextStyle(
  //   fontSize: 12,
  //   height: 18 / 12,
  //   fontFamily: 'Poppins-Medium',
  //   color: ColorLxp.neutral300,
  // );
}
