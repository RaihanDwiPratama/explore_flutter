import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/pelatihanku/widget/view_course_fix.dart';

class JoinPelatihanku extends StatelessWidget {
  const JoinPelatihanku({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/images/blank_content.svg';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pelatihan-ku',
          style: Style.title.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              assetName,
              semanticsLabel: 'Join Course Logo',
            ),
            const SizedBox(height: 36),
            Text(
              'Anda belum mengambil pelatihan apapun!',
              style: Style.titleContentBlank.copyWith(
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewCourseFix(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorLxp.primary,
                ),
                child: Text(
                  'Ikuti Pelatihan',
                  style: Style.textButtonBlank.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}