import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DetailVideoPelatihanku extends StatelessWidget {
  DetailVideoPelatihanku({super.key});

  final List<String> content = <String>[
    'Tujuan Pelatihan',
    'Alasan Pentingnya Keterampilan Komunikasi',
    'Struktur Pelatihan',
    'Antusiasme dan Motivasi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Komunikasi Kreatif',
          style: Style.title.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Image.asset('assets/images/detail_video.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24.0),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage(
                        'assets/images/profile_woman.jpg',
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Neneng Rohaye',
                          style: Style.textTitleCourse.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Mentor',
                          style: Style.textSks.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Deskripsi',
                  style: Style.textTitleCourse.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Pelatihan Keterampilan Komunikasi adalah program pendidikan yang dirancang untuk membantu peserta mengembangkan kemampuan.',
                  style: Style.textSks.copyWith(
                    color: ColorLxp.grayModern,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 16.0),
                Text(
                  'Pembahasan Video',
                  style: Style.textTitleCourse.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8.0),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  child: ListView.builder(
                    itemCount: content.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0),
                        horizontalTitleGap: 8.0,
                        visualDensity: const VisualDensity(vertical: -4.0),
                        leading: const Icon(
                          Icons.check_circle_outline,
                          color: ColorLxp.primary,
                        ),
                        title: Text(
                          content[index],
                          style: Style.textSks.copyWith(
                            color: ColorLxp.neutral800,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
