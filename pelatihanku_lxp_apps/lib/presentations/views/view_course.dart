import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/detail_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ViewCourse extends StatelessWidget {
  final bool isCompleted = false;

  final List<String> images = <String>[
    'assets/images/blank_content.svg',
    'assets/images/blank_content.svg',
    'assets/images/blank_content.svg',
    'assets/images/blank_content.svg',
  ];

  final List<String> title = <String>[
    'Keterampilan Komunikasi',
    'UI/UX Designer',
    'AI & Data Science',
    'Cyber Security & Networking'
  ];

  final List<String> trainer = <String>[
    'Neneng Rohaye S.kom.',
    'Iqbal Ramadhan S.kom.',
    'Isnan Mulia S.kom., M.kom',
    'Rizky Darmawangsa S.kom., M.kom',
  ];

  final List<double> progress = <double>[
    0.3,
    0.5,
    1.0,
    0.65,
  ];

  ViewCourse({super.key});

  @override
  Widget build(BuildContext context) {

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
                vertical: 16.0,
              ),
              height: 180,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SvgPicture.asset(
                        images[index],
                        semanticsLabel: 'Course Logo',
                        width: 80,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            // width: 190,
                            child: Text(
                              title[index].toString(),
                              style: Style.textTitleCourse.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 2,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 4, bottom: 8),
                            child: Text(
                              trainer[index].toString(),
                              style: Style.textSks.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 185,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.assignment,
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
                                      Icons.play_circle,
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
                                      Icons.person_add,
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
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: LinearProgressIndicator(
                          backgroundColor: ColorLxp.primaryLight,
                          borderRadius: BorderRadius.circular(10),
                          value: progress[index],
                          valueColor:
                              const AlwaysStoppedAnimation(ColorLxp.primary),
                          minHeight: 10,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${(progress[index] * 100).toStringAsFixed(0)}%',
                        style: Style.textIndicator.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: progress[index] == 1.0
                          ? ColorLxp.successLight
                          : ColorLxp.warningLight,
                    ),
                    child: Text(
                      progress[index] == 1.0
                          ? 'Sudah Selesai'
                          : 'Belum Selesai',
                      style: Style.textSks.copyWith(
                        fontWeight: FontWeight.w400,
                        color: progress[index] == 1.0
                            ? ColorLxp.successNormal
                            : ColorLxp.warningNormal,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}