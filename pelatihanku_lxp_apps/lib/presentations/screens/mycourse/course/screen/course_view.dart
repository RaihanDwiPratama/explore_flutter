// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/content_course.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/course/widgets/course_all_list.dart';

import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/course/widgets/course_completed.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/course/widgets/course_not_started.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class CourseView extends StatelessWidget {
  final bool isMember;
  const CourseView({
    Key? key,
    required this.isMember,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Sedang Berjalan',
                    style: Style.textTitleCourse
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                Tab(
                  child: Text(
                    'Sudah Selesai',
                    style: Style.textTitleCourse
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            leading: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/'),
              child: const Icon(
                Icons.chevron_left,
                color: ColorLxp.neutral800,
              ),
            ),
            title: Text(
              'Pelatihan-ku',
              style: Style.title.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          body: isMember
              ? TabBarView(
                  children: [
                    // CoursePendingApproval(),
                    // CourseOnProgress(),
                    courseOnProgress(context),
                    courseCompleted(context),
                  ],
                )
              : const TabBarView(
                  children: [
                    CourseNotStarted(),
                    CourseNotStarted(),
                  ],
                ),
        ),
      ),
    );
  }

  Widget courseOnProgress(BuildContext context) {
    return Column(
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
    );
  }
  
  Widget courseCompleted(BuildContext context) {
    return Column(
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
    );
  }
}
