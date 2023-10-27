import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/content_course.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/list_pertemuan_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class CoursePendingApproval extends StatelessWidget {
  const CoursePendingApproval({super.key});

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
                  Container(
                    height: 42,
                    color: ColorLxp.primaryLight,
                    // padding: const EdgeInsets.all(12),
                    child: Center(
                      child: Text(
                        'Pengajuan diproses',
                        style: Style.textTitleCourse.copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorLxp.primary,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
