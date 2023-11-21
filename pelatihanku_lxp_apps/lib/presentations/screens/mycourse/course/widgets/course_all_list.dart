import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/list_pertemuan_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/screen/discussion_page.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/exploration_reflection/screen/exploration_page.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/module/screen/module_page.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/quiz/detail_quiz/screen/detail_quiz_page.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/task/screen/task_page.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class CourseAllList extends StatelessWidget {
  const CourseAllList({super.key});

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
        forceMaterialTransparency: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListPertemuanLxp(
                pertemuan: 'Pertemuan 1',
                onTapModul: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ModulePage(),
                    ),
                  );
                },
                onTapKuis: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailQuizPage(),
                    ),
                  );
                },
                onTapTugas: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TaskPage(),
                    ),
                  );
                },
                onTapDiskusi: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DiscussionPage(),
                    ),
                  );
                },
                onTapMentoring: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DiscussionPage(),
                    ),
                  );
                },
                onTapEksplorasi: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ExplorationPage(),
                    ),
                  );
                },
                onTapPengajar: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DiscussionPage(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: MediaQuery.of(context).size.height - 100,
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    int pertemuanNumber = index + 1;
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 36.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pertemuan ${pertemuanNumber + 1}',
                            style: Style.textTitleCourse.copyWith(
                              color: ColorLxp.neutral500,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Pertemuan ini di kunci anda harus menyelesaikan pertemuan sebelumnya',
                                  ),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.lock_outline,
                              color: ColorLxp.neutral500,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
