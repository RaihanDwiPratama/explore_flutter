import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/radio_button_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/pelatihanku/detail_video_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class VideoLxp extends StatelessWidget {
  final String title;

  const VideoLxp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const DetailVideoPelatihanku(),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.symmetric(horizontal: 24.0),
        height: 108,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SvgPicture.asset(
                'assets/images/video_content.svg',
                width: 94,
              ),
            ),
            const SizedBox(width: 16),
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
                    ),
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
