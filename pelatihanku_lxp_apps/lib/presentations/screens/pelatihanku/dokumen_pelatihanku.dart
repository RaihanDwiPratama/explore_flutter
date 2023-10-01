import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/commons/dokumen_lxp.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
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
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              DokumenLxp(title: 'Materi 1.pdf'),
              SizedBox(height: 16),
              Divider(
                color: ColorLxp.neutral200,
                height: 1,
              ),
              SizedBox(height: 16),
              DokumenLxp(title: 'Materi 2.pdf'),
              SizedBox(height: 16),
              Divider(
                color: ColorLxp.neutral200,
                height: 1,
              ),
              SizedBox(height: 16),
              DokumenLxp(title: 'Materi 3.pdf'),
              SizedBox(height: 16),
              Divider(
                color: ColorLxp.neutral200,
                height: 1,
              ),
              SizedBox(height: 16),
              DokumenLxp(title: 'Materi 4.pdf'),
              SizedBox(height: 16),
              Divider(
                color: ColorLxp.neutral200,
                height: 1,
              ),
              SizedBox(height: 16),
              DokumenLxp(title: 'Materi 5.pdf'),
              SizedBox(height: 16),
              Divider(
                color: ColorLxp.neutral200,
                height: 1,
              ),
              SizedBox(height: 16),
              DokumenLxp(title: 'Materi 6.pdf'),
              SizedBox(height: 16),
              Divider(
                color: ColorLxp.neutral200,
                height: 1,
              ),
              SizedBox(height: 16),
              DokumenLxp(title: 'Materi 7.pdf'),
              SizedBox(height: 16),
              Divider(
                color: ColorLxp.neutral200,
                height: 1,
              ),
            ],
          ),
        ));
  }
}
