import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/content_course.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/course/widgets/course_all_list.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class CourseOnProgress extends StatelessWidget {
  const CourseOnProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CourseAllList(),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 16.0),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 16.0,
                ),
                decoration: Style.shadowCourses,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(
                          'assets/images/komunikasi.png',
                          width: 107,
                        ),
                        const SizedBox(width: 16),
                        const ContentCourse(
                          title: 'Pelatihan Keterampilan Komunikasi',
                          trainee: 'Neneng Rohaye S.kom.',
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
                            valueColor: const AlwaysStoppedAnimation(
                              ColorLxp.primary,
                            ),
                            minHeight: 10,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '${(0.25 * 100).toStringAsFixed(0)}%',
                          style: Style.textIndicator.copyWith(
                            fontWeight: FontWeight.w400,
                            color: ColorLxp.primary,
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
      ),
    );
  }
}
