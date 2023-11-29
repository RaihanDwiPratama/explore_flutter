import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ExplorationView extends StatefulWidget {
  const ExplorationView({super.key});

  @override
  State<ExplorationView> createState() => _ExplorationViewState();
}

class _ExplorationViewState extends State<ExplorationView> {
  final _eksplorasi = TextEditingController();
  Color _buttonColor = ColorLxp.neutral200;
  bool isFilled = false;

  @override
  void initState() {
    super.initState();
    _eksplorasi.addListener(checkCharacter);
  }

  void checkCharacter() {
    setState(() {
      if (_eksplorasi.text.length >= 10) {
        _buttonColor = ColorLxp.primary;
      } else {
        _buttonColor = ColorLxp.neutral200;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
              controller: _eksplorasi,
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
      bottomNavigationBar: GestureDetector(
        // onTap: () {

        // },
        child: Container(
          height: 48.0,
          margin: const EdgeInsets.symmetric(
            vertical: 24.0,
            horizontal: 16.0,
          ),
          decoration: BoxDecoration(
            color: _buttonColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'Kirim Tanggapan',
              style: Style.textButtonBlank.copyWith(
                color: _eksplorasi.text.length >= 10
                    ? ColorLxp.white
                    : ColorLxp.neutral400,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
