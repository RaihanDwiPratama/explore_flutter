import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/pelatihanku/list_pertemuan_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ViewCourseFix extends StatelessWidget {
  final bool isCompleted = false;

  final List<String> images = <String>[
    'assets/images/komunikasi.png',
    'assets/images/ui_ux.png',
    'assets/images/datascience.png',
    'assets/images/cybersecurity.png',
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
    0.45,
    0.65,
  ];

  ViewCourseFix({super.key});

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
        padding: const EdgeInsets.only(top: 24.0),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ListPertemuanPelatihanku(),
                )),
            child: Container(
              margin: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 16.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 16.0,
              ),
              height: 135,
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
                      Image.asset(
                        images[index],
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
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        height: 48.0,
        margin: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: ColorLxp.neutral300,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            'Selesai',
            style: Style.textButtonBlank.copyWith(
              color: ColorLxp.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
