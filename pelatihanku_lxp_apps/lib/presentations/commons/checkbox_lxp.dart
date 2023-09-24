import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';

class CheckboxLxp extends StatefulWidget {
  const CheckboxLxp({super.key});

  @override
  State<CheckboxLxp> createState() => _CheckboxLxpState();
}

class _CheckboxLxpState extends State<CheckboxLxp> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: SizedBox(
        child: isClicked
            ? const Icon(
                Icons.check_box,
                color: ColorLxp.successNormal,
              )
            : const Icon(
                Icons.check_box_outline_blank,
                color: ColorLxp.neutral500,
              ),
      ),
    );
  }
}
