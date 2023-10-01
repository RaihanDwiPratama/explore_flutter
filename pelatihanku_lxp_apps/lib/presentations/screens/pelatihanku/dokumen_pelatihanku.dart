import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DokumenPelatihanku extends StatelessWidget {
  const DokumenPelatihanku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dokumen',
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
      body: const Center(
        child: Text('Dokumen'),
      ),
    );
  }
}
