import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

// ignore: must_be_immutable
class ModuleExpandableText extends StatefulWidget {
  ModuleExpandableText({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final VoidCallbackAction onTap;
  bool isExpanded = false;

  @override
  State<ModuleExpandableText> createState() => _ModuleExpandableTextState();
}

class _ModuleExpandableTextState extends State<ModuleExpandableText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          child: ConstrainedBox(
            constraints: widget.isExpanded
                ? const BoxConstraints()
                : const BoxConstraints(maxHeight: 50.0),
            child: Text(
              widget.text,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
              style: Style.textSks.copyWith(
                color: ColorLxp.grayModern,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        widget.isExpanded
            ? ConstrainedBox(
                constraints: const BoxConstraints(),
              )
            : TextButton(
                onPressed: () => widget.onTap,
                child: const Text('Selengkapnya'),
              ),
      ],
    );
  }
}
