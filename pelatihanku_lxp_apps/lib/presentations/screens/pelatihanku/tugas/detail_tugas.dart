import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DetailTugas extends StatelessWidget {
  const DetailTugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Tugas',
          style: Style.title.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.chevron_left),
        ),
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Keterampilan Komunikasi - Pertemuan 1',
              style: Style.textDetail,
              maxLines: 2,
            ),
            const SizedBox(height: 4),
            Text(
              'Almira Samudra, S.Kom., M.Kom.',
              style: Style.textTitleCourse.copyWith(
                fontWeight: FontWeight.w500,
                color: ColorLxp.neutral800,
              ),
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Post by ',
                    style: Style.textSks.copyWith(
                      fontWeight: FontWeight.w400,
                      color: ColorLxp.neutral400,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Almira Samudra',
                        style: TextStyle(color: ColorLxp.primary),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Rabu, 07 Juli 2023, 13.24',
                  style: Style.textSks.copyWith(
                    fontWeight: FontWeight.w400,
                    color: ColorLxp.neutral400,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
