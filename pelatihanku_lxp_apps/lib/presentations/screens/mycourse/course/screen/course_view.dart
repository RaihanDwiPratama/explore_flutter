// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/course/widgets/course_completed.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/course/widgets/course_not_started.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/course/widgets/course_on_progress.dart';
// import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/course/widgets/course_pending_approval.dart';
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
              ? const TabBarView(
                  children: [
                    // CoursePendingApproval(),
                    CourseOnProgress(),
                    CourseCompleted(),
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
}
