import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/widgets/discussion_comentar.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/widgets/discussion_header.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/discussion/widgets/discussion_reply.dart';
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
              const DiscussionHeader(),
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
