import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/widgets/discussion_like_comment_reply.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DiscussionHeader extends StatelessWidget {
  const DiscussionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          leading: Image.asset("assets/images/neneng.png"),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Neneng Rohaye, S.Kom',
                style: Style.textTitleCourse.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Pengajar',
                style: Style.textSks.copyWith(
                  color: ColorLxp.neutral800,
                ),
              ),
              Text(
                '23 September 2023, 12.30',
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
        const SizedBox(height: 10),
        Image.asset(
          'assets/images/img_diskusi.png',
          width: 340,
        ),
        const SizedBox(height: 20),
        Text(
          'Apa yang dimaksud dengan pernyataan "Yang penting kamu mengerti" dalam konteks komunikasi?',
          style: Style.textTitleCourse.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 16.0),
        const DiscussionLikeCommentReply(),
        const SizedBox(height: 10),
        const Divider(
          color: ColorLxp.neutral200,
          thickness: 1,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
