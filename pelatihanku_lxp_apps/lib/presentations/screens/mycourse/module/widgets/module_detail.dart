import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/content_video_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/dokumen_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/dokumen_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/rangkuman_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/video_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ModuleDetail extends StatelessWidget {
  const ModuleDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Modul',
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
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Video',
                      style: Style.textTitleCourse.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VideoPelatihanku(),
                        ),
                      ),
                      child: Text(
                        'Lihat semua',
                        style: Style.textSks.copyWith(
                          color: ColorLxp.primary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                const ContentVideoLxp(title: 'Keterampilan Komunikasi'),
                const ContentVideoLxp(title: 'Keterampilan Presentasi'),
                const Divider(
                  color: ColorLxp.neutral200,
                  height: 1,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dokumen',
                      style: Style.textTitleCourse.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DokumenPelatihanku(),
                        ),
                      ),
                      child: Text(
                        'Lihat semua',
                        style: Style.textSks.copyWith(
                          color: ColorLxp.primary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const DokumenLxp(title: 'Materi 1.pdf'),
                const SizedBox(height: 20),
                const DokumenLxp(title: 'Jurnal.pdf'),
                const SizedBox(height: 20),
                const DokumenLxp(title: 'Artikel.pdf'),
                const SizedBox(height: 20),
                const Divider(
                  color: ColorLxp.neutral200,
                  height: 1,
                ),
                const SizedBox(height: 20),
                Text(
                  'Detail Pelatihanku',
                  style: Style.textTitleCourse
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                Text(
                  'Pelatihan keterampilan komunikasi pada aplikasi adalah program yang dirancang untuk membantu individu meningkatkan kemampuan mereka dalam berkomunikasi secara efektif...',
                  style: Style.textSks.copyWith(
                    color: ColorLxp.grayModern,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const RangkumanPelatihanku(),
          ),
        ),
        child: Container(
          height: 48.0,
          margin: const EdgeInsets.all(24.0),
          decoration: Style.btnSummary,
          child: Center(
            child: Text(
              'Buat Rangkuman',
              style: Style.textButtonBlank.copyWith(
                color: ColorLxp.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
