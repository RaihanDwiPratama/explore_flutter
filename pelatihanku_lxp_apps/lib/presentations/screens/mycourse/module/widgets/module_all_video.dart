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
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.chevron_left),
        ),
      ),
      body: const Column(
        children: [
          VideoLxp(title: 'Pendahuluan'),
          SizedBox(height: 16),
          VideoLxp(title: 'Komunikasi Efektif'),
          SizedBox(height: 16),
          VideoLxp(title: 'Mendengarkan Aktif'),
          SizedBox(height: 16),
          VideoLxp(title: 'Empati dalam Komunikasi'),
          SizedBox(height: 16),
          VideoLxp(title: 'Komunikasi Dua Arah'),
        ],
      ),
    );
  }
}
