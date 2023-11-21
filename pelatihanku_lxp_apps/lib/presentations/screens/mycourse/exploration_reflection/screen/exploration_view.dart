import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ExplorationView extends StatelessWidget {
  const ExplorationView({super.key});

  @override
  Widget build(BuildContext context) {
    final eksplorasi = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Refleksi Explorasi',
          style: Style.title.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
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
                      color: ColorLxp.primary,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Apa tanggapan kamu dari pertemuan 1 ini?',
                style: Style.textButtonBlank.copyWith(
                  fontWeight: FontWeight.w600,
                  color: ColorLxp.neutral800,
                ),
              ),
            ),
            TextField(
              controller: eksplorasi,
              maxLines: 5,
              decoration: Style.inputSummary.copyWith(
                hintText: 'Masukkan tanggapan anda...',
                hintStyle: Style.textSks.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 48.0,
        margin: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            'Simpan',
            style: Style.textButtonBlank.copyWith(
              color: ColorLxp.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
