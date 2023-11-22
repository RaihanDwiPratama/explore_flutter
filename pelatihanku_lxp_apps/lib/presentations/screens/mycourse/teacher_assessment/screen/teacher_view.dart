import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class TeacherAssignmentView extends StatelessWidget {
  const TeacherAssignmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Penilaian Pengajar',
          style: Style.title.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 66.0),
            SvgPicture.asset(
              'assets/images/blank_content.svg',
              width: 200,
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(top: 48.0),
              height: 158,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: ColorLxp.primaryLight,
              ),
              child: Text(
                'Pilihlah keterangan nilai yang paling mewakili penilaian Anda terhadap instruktur.\n\n\nketerangan : Sangat Setuju, Setuju, Tidak Setuju dan Sangat Tidak Setuju',
                style: Style.textTitleCourse.copyWith(
                  fontWeight: FontWeight.w400,
                  color: ColorLxp.infoNormal,
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(16.0),
        height: 48.0,
        decoration: Style.btnBlue,
        child: Center(
          child: Text(
            'Mulai',
            style: Style.textButtonBlank.copyWith(
              fontWeight: FontWeight.w500,
              color: ColorLxp.white,
            ),
          ),
        ),
      ),
    );
  }
}
