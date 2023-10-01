import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';

class RadioButtonLxp extends StatefulWidget {
  const RadioButtonLxp({super.key});

  @override
  State<RadioButtonLxp> createState() => _RadioButtonLxpState();
}

class _RadioButtonLxpState extends State<RadioButtonLxp> {
  bool isDone = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isDone = !isDone;
        });
      },
      child: isDone
          ? const Icon(
              Icons.check_circle,
              color: ColorLxp.successNormal,
            )
          : const Icon(
              Icons.circle_outlined,
              color: ColorLxp.neutral300,
            ),
    );
  }
}
