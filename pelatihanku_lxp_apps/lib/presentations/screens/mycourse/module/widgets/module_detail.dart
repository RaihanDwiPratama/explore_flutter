import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/content_video_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/dokumen_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/module/widgets/module_all_document.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/rangkuman_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/module/widgets/module_all_video.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ModuleDetail extends StatefulWidget {
  const ModuleDetail({super.key});

  @override
  State<ModuleDetail> createState() => _ModuleDetailState();
}

class _ModuleDetailState extends State<ModuleDetail> {
  bool isExpanded = false;

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
                          builder: (context) => const ModuleAllVideo(),
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
                          builder: (context) => const ModuleAllDocument(),
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
                Column(
                  children: [
                    AnimatedSize(
                      duration: const Duration(milliseconds: 200),
                      child: ConstrainedBox(
                        constraints: isExpanded
                            ? const BoxConstraints()
                            : const BoxConstraints(maxHeight: 50.0),
                        child: Text(
                          'Pelatihan keterampilan komunikasi pada aplikasi adalah program yang dirancang untuk membantu individu meningkatkan kemampuan mereka dalam berkomunikasi secara efektif. Pelatihan keterampilan komunikasi pada aplikasi adalah program yang dirancang untuk membantu individu meningkatkan kemampuan mereka dalam berkomunikasi secara efektif',
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                          style: Style.textSks.copyWith(
                            color: ColorLxp.grayModern,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    isExpanded
                        ? GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  isExpanded = false;
                                },
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(
                                'Tampilkan lebih sedikit',
                                style: Style.textTitleCourse.copyWith(
                                  color: ColorLxp.primary,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  isExpanded = true;
                                },
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Text(
                                'Selengkapnya',
                                style: Style.textTitleCourse.copyWith(
                                  color: ColorLxp.primary,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
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
