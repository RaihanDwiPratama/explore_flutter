import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';
import 'package:pelatihanku_lxp_apps/presentations/views/view_course.dart';

class JoinCourse extends StatelessWidget {
  const JoinCourse({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/images/blank_content.svg';

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              assetName,
              semanticsLabel: 'Join Course Logo',
            ),
            const SizedBox(height: 24),
            const Text(
              'Anda belum mengambil pelatihan apapun!',
              style: Style.titleContentBlank,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ViewCourse(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorLxp.primary,
                ),
                child: const Text(
                  'Ikuti Pelatihan',
                  style: Style.textButtonBlank,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
