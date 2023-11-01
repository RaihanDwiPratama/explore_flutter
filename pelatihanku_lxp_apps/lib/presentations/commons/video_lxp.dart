import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/radio_button_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/module/widgets/module_detail_video.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class VideoLxp extends StatelessWidget {
  final String title;

  const VideoLxp({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ModuleDetailVideo(),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
        height: 108,
        decoration: Style.shadowCourses,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/video.png',
              width: 76,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 178,
                  child: Text(
                    title,
                    style: Style.textTitleCourse.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.alarm,
                      color: ColorLxp.neutral500,
                      size: 16,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '6 Menit',
                      style: Style.textSks.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const RadioButtonLxp(),
          ],
        ),
      ),
    );
  }
}
