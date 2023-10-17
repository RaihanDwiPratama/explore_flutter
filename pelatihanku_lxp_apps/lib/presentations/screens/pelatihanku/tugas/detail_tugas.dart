import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            Container(
              height: 235,
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 16,
                bottom: 28,
              ),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: ColorLxp.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: ColorLxp.black.withOpacity(0.10),
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tugas Pertemuan 1',
                    style: Style.textTitleCourse.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Berikan contoh konkret dari kehidupan sehari-hari tentang proses komunikasi yang melibatkan pengirim, pesan, saluran, penerima, dan umpan balik. Jelaskan setiap elemen proses komunikasi ini dalam konteks contoh yang Anda berikan.',
                    style: Style.textSks.copyWith(
                      fontWeight: FontWeight.w400,
                      color: ColorLxp.black,
                    ),
                  ),
                  Container(
                    height: 36,
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: ColorLxp.neutral300,
                        strokeAlign: 1,
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/FilePdf.svg'),
                        const SizedBox(width: 4),
                        Text(
                          'Tugas Komunikasi 1.pdf',
                          style: Style.textSks.copyWith(
                            fontWeight: FontWeight.w400,
                            color: ColorLxp.neutral800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset('assets/icons/CalendarCheck.svg'),
                      const SizedBox(width: 4),
                      Text(
                        ' 15/09/2023 - 23:59:00',
                        style: Style.textSks.copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorLxp.neutral800,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
