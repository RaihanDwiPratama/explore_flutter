import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ContentVideoLxp extends StatelessWidget {
  final String title;
  const ContentVideoLxp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/video.png',
              width: 80,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 200,
                child: Text(
                  title,
                  style: Style.textTitleCourse.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 2,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 4, bottom: 8),
                width: 200,
                child: Text(
                  'ini adalah sumber belajar yang sempurna',
                  style: Style.textSks.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
