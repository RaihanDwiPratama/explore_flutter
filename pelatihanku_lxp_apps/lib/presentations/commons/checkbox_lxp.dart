import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';

class CheckboxLxp extends StatefulWidget {
  const CheckboxLxp({super.key});

  @override
  State<CheckboxLxp> createState() => _CheckboxLxpState();
}

class _CheckboxLxpState extends State<CheckboxLxp> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: ColorLxp.neutral500,
      activeColor: ColorLxp.neutral500,
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
