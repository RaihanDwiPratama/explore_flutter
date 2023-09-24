import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';

class DropdownLxp extends StatefulWidget {
  final bool isContentVisible;
  final ValueChanged<bool> onVisibilityChanged;

  const DropdownLxp({
    super.key,
    required this.isContentVisible,
    required this.onVisibilityChanged,
  });

  @override
  State<DropdownLxp> createState() => _DropdownLxpState();
}

class _DropdownLxpState extends State<DropdownLxp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.onVisibilityChanged(!widget.isContentVisible);
        });
      },
      child: SizedBox(
        child: widget.isContentVisible
            ? Transform.rotate(
                angle: -math.pi / 2,
                child: const Icon(
                  Icons.chevron_right,
                  color: ColorLxp.neutral800,
                ),
              )
            : Transform.rotate(
                angle: math.pi / 2,
                child: const Icon(
                  Icons.chevron_right,
                  color: ColorLxp.neutral800,
                ),
              ),
      ),
    );
  }
}
