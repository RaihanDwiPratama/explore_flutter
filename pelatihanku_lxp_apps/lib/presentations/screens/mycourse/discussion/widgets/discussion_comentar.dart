import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/widgets/discussion_like_comment_reply.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DiscussionComentar extends StatelessWidget {
  final String image;
  final String name;
  final String job;
  final String date;
  final String comment;

  const DiscussionComentar({
    super.key,
    required this.image,
    required this.name,
    required this.job,
    required this.date,
    required this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 0),
          leading: Image.asset(image),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                name,
                style: Style.textTitleCourse.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                job,
                style: Style.textSks.copyWith(
                  color: ColorLxp.neutral800,
                ),
              ),
              Text(
                date,
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
                  comment,
                  maxLines: 10,
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
