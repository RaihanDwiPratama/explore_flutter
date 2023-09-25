import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/detail_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ViewCourse extends StatelessWidget {
  final List<String> images = <String>[
    'assets/images/blank_content.svg',
    'assets/images/blank_content.svg',
    'assets/images/blank_content.svg',
    'assets/images/blank_content.svg',
  ];

  final List<String> title = <String>[
    'Pelatihan Keterampilan Komunikasi',
    'Pelatihan Keterampilan Presentasi',
    'Pelatihan Keterampilan Waktu',
    'Pelatihan Kepemimpinan Tim',
  ];

  ViewCourse({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/images/blank_content.svg';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pelatihan-ku',
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
        itemCount: images.length,
        padding: const EdgeInsets.only(top: 32.0),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailPelatihanku(),
                )),
            child: Container(
              margin: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 16.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8.0,
              ),
              height: 120,
              decoration: BoxDecoration(
                color: ColorLxp.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 223, 226, 231),
                    blurRadius: 20.0,
                    spreadRadius: 4,
                    offset: Offset(0, 1),
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SvgPicture.asset(
                      assetName,
                      semanticsLabel: 'Course Logo',
                      width: 102,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 185,
                        child: Text(
                          title[index].toString(),
                          style: Style.textTitleCourse.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 2,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 6, bottom: 5),
                        width: 185,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.assignment_outlined,
                                  size: 16,
                                  color: ColorLxp.infoNormal,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '3 SKS',
                                  style: Style.textSks.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.play_circle_outline,
                                  size: 16,
                                  color: ColorLxp.successNormal,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '14 Video',
                                  style: Style.textSks.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.person_add_outlined,
                                  size: 16,
                                  color: ColorLxp.purple,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '80',
                                  style: Style.textSks.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: Row(
                          children: [
                            Expanded(
                              child: LinearProgressIndicator(
                                backgroundColor: ColorLxp.primaryLight,
                                borderRadius: BorderRadius.circular(10),
                                value: 0.1,
                                valueColor: const AlwaysStoppedAnimation(
                                    ColorLxp.primary),
                                minHeight: 10,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '10%',
                              style: Style.textIndicator.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
