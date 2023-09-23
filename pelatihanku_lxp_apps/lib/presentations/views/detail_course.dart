import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/checkbox_lxp.dart';

class DetailCourse extends StatelessWidget {
  const DetailCourse({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> titleContent = [
      'Pengenalan',
      'Dasar Keterampilan Komunikasi',
      'Tugas - Pertemuan 1'
    ];

    return ListView.builder(
      itemCount: titleContent.length,
      itemBuilder: (context, index) {
        return const Row(
          children: [
            Text('1'),
            Column(
              children: [
                Text('Pengenalan'),
                Row(
                  children: [
                    Icon(Icons.alarm),
                    Text('8 Mnt'),
                  ],
                ),
              ],
            ),
            CheckboxLxp()
          ],
        );
      },
    );
  }
}
