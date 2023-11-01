import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/detail_rangkuman_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ModuleListSummary extends StatelessWidget {
  const ModuleListSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Riwayat Rangkuman',
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
            summaryList(
              context,
              "Pertemuan 1 - Pengenalan",
              "12 September 2023",
              "assets/images/sumar.png",
              "Bahasa tubuh, ekspresi wajah, memiliki peran besar dalam menyampaikan pesan.",
            ),
            const SizedBox(height: 32),
            summaryList(
              context,
              "Pertemuan 2 - Pengenalan",
              "12 September 2023",
              "assets/images/sumar.png",
              "Bahasa tubuh, ekspresi wajah, memiliki peran besar dalam menyampaikan pesan.",
            ),
          ],
        ),
      ),
    );
  }

  Widget summaryList(
    BuildContext context,
    String title,
    String date,
    String image,
    String description,
  ) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Style.textTitleCourse.copyWith(
                color: ColorLxp.neutral800,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              date,
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
            leading: Image.asset(image),
            title: Text(
              description,
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
      ],
    );
  }
}
