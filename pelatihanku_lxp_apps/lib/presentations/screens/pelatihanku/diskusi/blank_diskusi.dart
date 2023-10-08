import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/pelatihanku/diskusi/only_text_diskusi.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class BlankDiskusi extends StatelessWidget {
  const BlankDiskusi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Diskusi',
          style: Style.title.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.chevron_left),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OnlyTextDiskusi(),
            ),
          ),
          child: Text(
            'Belum ada diskusi saat ini',
            style: Style.textButtonBlank.copyWith(
              color: ColorLxp.neutral500,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
