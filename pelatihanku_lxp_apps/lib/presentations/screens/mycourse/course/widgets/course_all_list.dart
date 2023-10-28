import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/list_pertemuan_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/blank_diskusi.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/modul_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/assignment/detail_tugas.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

// ignore: must_be_immutable
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
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.chevron_left,
            color: ColorLxp.neutral800,
          ),
        ),
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
                      builder: (context) => ModulPelatihanku(),
                    ),
                  );
                },
                onTapTugas: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DetailTugas(),
                    ),
                  );
                },
                onTapDiskusi: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BlankDiskusi(),
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
