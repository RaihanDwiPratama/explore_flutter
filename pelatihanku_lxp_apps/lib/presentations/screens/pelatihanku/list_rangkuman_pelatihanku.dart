import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/pelatihanku/detail_rangkuman_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ListRangkumanPelatihanku extends StatelessWidget {
  const ListRangkumanPelatihanku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rangkuman',
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
        padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pertemuan 1 - Pengenalan',
                  style: Style.textTitleCourse.copyWith(
                    color: ColorLxp.neutral800,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '12 September 2023',
                  style: Style.textSks.copyWith(
                    color: ColorLxp.primary,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailRangkumanPelatihanku(),
                ),
              ),
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
                  'Bahasa tubuh, ekspresi wajah, memiliki peran besar dalam menyampaikan pesan.',
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
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pertemuan 1 - Pengenalan',
                  style: Style.textTitleCourse.copyWith(
                    color: ColorLxp.neutral800,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '12 September 2023',
                  style: Style.textSks.copyWith(
                    color: ColorLxp.primary,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailRangkumanPelatihanku(),
                ),
              ),
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
                  'Bahasa tubuh, ekspresi wajah, memiliki peran besar dalam menyampaikan pesan.',
                  style: Style.textSks.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: const Icon(
                  Icons.more_horiz_outlined,
                  color: ColorLxp.neutral800,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
