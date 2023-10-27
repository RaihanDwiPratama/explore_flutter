import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/course/widgets/course_completed.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class CourseOngoing extends StatelessWidget {
  const CourseOngoing({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 80.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/blank_content.svg',
                semanticsLabel: 'Join Course Logo',
              ),
              const SizedBox(height: 36),
              SizedBox(
                width: 250,
                child: Text(
                  'Anda belum mengambil pelatihan apapun!',
                  style: Style.titleContentBlank.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
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
                        builder: (context) => const CourseCompleted(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorLxp.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
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
      ],
    );
  }
}
