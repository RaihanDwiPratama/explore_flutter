import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class OnlyTextDiskusi extends StatelessWidget {
  const OnlyTextDiskusi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Diskusi - Pertemuan 1',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          leading: const CircleAvatar(
            child: CircleAvatar(
              radius: 33.0,
              backgroundImage: AssetImage("assets/images/profile_woman.jpg"),
            ),
          ),
          title: Text(
            'Bahasa tubuh, ekspresi wajah, memiliki peran besar dalam menyampaikan pesan.',
            style: Style.textSks.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: Text(
            '12.30',
            style: Style.textSks.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: const Icon(
            Icons.more_horiz_outlined,
            color: ColorLxp.neutral800,
          ),
        ),
      ),
    );
  }
}
