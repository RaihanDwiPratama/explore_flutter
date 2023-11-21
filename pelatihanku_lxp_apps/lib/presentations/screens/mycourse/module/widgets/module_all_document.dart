import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/dokumen_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ModuleAllDocument extends StatelessWidget {
  const ModuleAllDocument({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Semua Dokumen',
          style: Style.title.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
        child: Column(
          children: [
            DokumenLxp(title: 'Materi 1.pdf'),
            DokumenLxp(title: 'Materi 2.pdf'),
            DokumenLxp(title: 'Materi 3.pdf'),
            DokumenLxp(title: 'Materi 4.pdf'),
            DokumenLxp(title: 'Materi 5.pdf'),
            DokumenLxp(title: 'Materi 6.pdf'),
            DokumenLxp(title: 'Materi 7.pdf'),
          ],
        ),
      ),
    );
  }
}
