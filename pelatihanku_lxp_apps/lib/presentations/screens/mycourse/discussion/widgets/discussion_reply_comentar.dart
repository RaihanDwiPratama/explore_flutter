import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/widgets/discussion_like_comment_reply.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DiscussionReplyComentar extends StatefulWidget {
  const DiscussionReplyComentar({super.key});

  @override
  State<DiscussionReplyComentar> createState() =>
      _DiscussionReplyComentarState();
}

class _DiscussionReplyComentarState extends State<DiscussionReplyComentar> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(
              () {
                isExpanded ? isExpanded = false : isExpanded = true;
              },
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              isExpanded
                  ? 'Tampilkan lebih sedikit...'
                  : 'Tampilkan 2 komentar lainnya...',
              style: Style.textSks.copyWith(
                color: ColorLxp.neutral800,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Visibility(
          visible: isExpanded,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/fauzi.png',
                    width: 40,
                  ),
                  const SizedBox(width: 12.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fauzi Ramadansyah',
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
                        '23 September 2023, 15.32',
                        style: Style.textSks.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.more_horiz_outlined,
                    color: ColorLxp.neutral800,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 56.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/cat.png',
                      width: 120,
                    ),
                    Text(
                      'mang eak?',
                      style: Style.textTitleCourse.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    const DiscussionLikeCommentReply(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
