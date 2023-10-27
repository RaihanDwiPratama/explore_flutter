import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/list_pertemuan_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class CourseCompleted extends StatelessWidget {
  const CourseCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ListPertemuanPelatihanku(),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 16.0),
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 16.0,
              ),
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
                        'assets/images/komunikasi.png',
                        width: 100,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 180,
                            child: Text(
                              'Pelatihan Keterampilan Komunikasi',
                              style: Style.textTitleCourse.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 2,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 4, bottom: 8),
                            child: Text(
                              'Neneng Rohaye S.kom.',
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
                  const SizedBox(height: 12),
                  Text(
                    'Tingkat Penyelesaian',
                    style: Style.textSks.copyWith(
                      color: ColorLxp.neutral800,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                        child: LinearProgressIndicator(
                          backgroundColor: ColorLxp.primaryLight,
                          borderRadius: BorderRadius.circular(10),
                          value: 0.25,
                          valueColor:
                              const AlwaysStoppedAnimation(ColorLxp.primary),
                          minHeight: 10,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${(0.25 * 100).toStringAsFixed(0)}%',
                        style: Style.textIndicator.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
