import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/widgets/discussion_comentar.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/widgets/discussion_like_comment_reply.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/widgets/discussion_reply.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DiscussionViewReply extends StatelessWidget {
  const DiscussionViewReply({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Diskusi - Pertemuan 1',
          style: Style.title.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.chevron_left),
        ),
        forceMaterialTransparency: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const DiscussionReply(),
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
          ),
        ),
      ),
    );
  }
}
