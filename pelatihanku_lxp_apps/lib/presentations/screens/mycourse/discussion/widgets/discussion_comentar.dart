import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/widgets/discussion_like_comment_reply.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DiscussionComentar extends StatelessWidget {
  const DiscussionComentar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          leading: Image.asset("assets/images/aldi.png"),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Aldi Taher',
                style: Style.textTitleCourse.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Siswa',
                style: Style.textSks.copyWith(
                  color: ColorLxp.neutral800,
                ),
              ),
              Text(
                '23 September 2023, 15.30',
                style: Style.textSks.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          trailing: const Icon(
            Icons.more_horiz_outlined,
            color: ColorLxp.neutral800,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 73.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 270,
                child: Text(
                  'Dalam konteks ini, yang menjadi fokus utama adalah pemahaman dan pengertian yang diperoleh oleh pendengar terhadap pesan yang disampaikan.',
                  maxLines: 5,
                  style: Style.textTitleCourse.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const DiscussionLikeCommentReply(),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Divider(
          color: ColorLxp.neutral200,
          thickness: 1,
        ),
      ],
    );
  }
}
