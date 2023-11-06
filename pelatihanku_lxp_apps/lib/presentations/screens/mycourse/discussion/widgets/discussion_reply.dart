import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/widgets/discussion_comentar.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/widgets/discussion_like_comment_reply.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DiscussionReply extends StatelessWidget {
  const DiscussionReply({super.key});

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
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 28),
            SvgPicture.asset('assets/images/line.svg'),
            const SizedBox(width: 18),
            Column(
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
          ],
        ),
        const SizedBox(height: 10),
        const Divider(
          color: ColorLxp.neutral200,
          thickness: 1,
        ),
        DiscussionComentar(
          image: "assets/images/owen.png",
          name: 'Owen Arya',
          job: 'Siswa',
          date: '23 September 2023, 16.30',
          imgComment: "",
          comment:
              'Pernyataan ini menekankan bahwa dalam sebuah interaksi komunikasi, tujuan utama bukan hanya sekadar berbicara atau menyampaikan pesan, tetapi juga memastikan bahwa pendengar atau penerima pesan benar-benar memahami apa yang ingin disampaikan oleh pembicara.',
        ),
        DiscussionComentar(
          image: "assets/images/bob.png",
          name: 'Bob Marley',
          job: 'Admin',
          date: '23 September 2023, 16.30',
          imgComment: 'assets/images/img_reply_person.png',
          comment:
              'Dengan kata lain, pesan ini menggambarkan bahwa tidak hanya berbicara yang penting, tetapi juga memastikan bahwa apa yang telah disampaikan oleh pembicara telah dipahami dengan benar oleh pendengar.',
        ),
      ],
    );
  }
}
