import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/video_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ModuleAllVideo extends StatelessWidget {
  const ModuleAllVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Semua Video',
          style: Style.title.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          VideoLxp(title: 'Pendahuluan'),
          VideoLxp(title: 'Komunikasi Efektif'),
          VideoLxp(title: 'Mendengarkan Aktif'),
          VideoLxp(title: 'Empati dalam Komunikasi'),
          VideoLxp(title: 'Komunikasi Dua Arah'),
        ],
      ),
    );
  }
}
