import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/add_comentar.dart';
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
      body: Container(
        height: 400,
        margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorLxp.neutral200,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 0),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                leading: const CircleAvatar(
                  child: CircleAvatar(
                    radius: 33.0,
                    backgroundImage:
                        AssetImage("assets/images/profile_woman.jpg"),
                  ),
                ),
                title: Text(
                  'Neneng Rohaye',
                  style: Style.textTitleCourse.copyWith(
                    fontWeight: FontWeight.w600,
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
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 4.0),
              child: Text(
                'Setelah mempelajari topik dipertemuan ini, hal apa yang dapat anda pelajari?',
                style: Style.textTitleCourse.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/img_diskusi.png',
                height: 200,
              ),
            ),
            const SizedBox(height: 10),
            const Divider(color: ColorLxp.neutral200),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddComentar(),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 6.0),
                child: Text(
                  'Tambah Komentar...',
                  style: Style.textSks.copyWith(
                    color: ColorLxp.primary,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
