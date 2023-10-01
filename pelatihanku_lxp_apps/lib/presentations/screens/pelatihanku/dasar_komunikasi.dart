import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/pelatihanku/video_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DasarKomunikasi extends StatelessWidget {
  const DasarKomunikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Keterampilan Komunikasi',
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
              padding: const EdgeInsets.fromLTRB(24.0, 32.0, 24.0, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Video',
                        style: Style.textTitleCourse
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const VideoPelatihanku(),
                              )),
                          child: Text(
                            'Lihat semua',
                            style: Style.textSks.copyWith(
                              color: ColorLxp.primary,
                              fontWeight: FontWeight.w400,
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: SvgPicture.asset(
                            'assets/images/video_content.svg',
                            width: 80,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 200,
                              child: Text(
                                'Pendahuluan',
                                style: Style.textTitleCourse.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 2,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 4, bottom: 8),
                              width: 200,
                              child: Text(
                                'ini adalah sumber belajar yang sempurna',
                                style: Style.textSks.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: SvgPicture.asset(
                            'assets/images/video_content.svg',
                            width: 80,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 200,
                              child: Text(
                                'Komunikasi Kreatif',
                                style: Style.textTitleCourse.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 2,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 4, bottom: 8),
                              width: 200,
                              child: Text(
                                'ini adalah sumber belajar yang sempurna',
                                style: Style.textSks.copyWith(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dokumen',
                        style: Style.textTitleCourse
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const VideoPelatihanku(),
                              )),
                          child: Text(
                            'Lihat semua',
                            style: Style.textSks.copyWith(
                              color: ColorLxp.primary,
                              fontWeight: FontWeight.w400,
                            ),
                          ))
                    ],
                  )
                ],
              ),
            );
          },
        ));
  }
}
