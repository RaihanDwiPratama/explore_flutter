import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/module/widgets/module_list_summary.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class ModuleSummary extends StatefulWidget {
  const ModuleSummary({super.key});

  @override
  State<ModuleSummary> createState() => _ModuleSummaryState();
}

class _ModuleSummaryState extends State<ModuleSummary> {
  final _rangkumanVideo = TextEditingController();
  final _rangkumanDokumen = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tugas',
          style: Style.title.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        forceMaterialTransparency: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.chevron_left),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Buatlah rangkuman pemahaman anda dari semua materi yang telah anda pelajari, minimal 150 karakter.',
                style: Style.textSks.copyWith(
                  color: ColorLxp.grayModern,
                  fontWeight: FontWeight.w500,
                ),
              ),
              summary(
                'Buat Rangkuman Video',
                _rangkumanVideo,
                'Buat Rangkuman Seluruh Video...',
              ),
              summary(
                'Buat Rangkuman Dokumen',
                _rangkumanDokumen,
                'Buat Rangkuman Seluruh Dokumen...',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          if (_rangkumanDokumen.text.length >= 150 &&
              _rangkumanVideo.text.length >= 150) {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: SvgPicture.asset(
                  'assets/images/add_notes.svg',
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Rangkuman berhasil dibuat!',
                      style: Style.textButtonBlank.copyWith(
                        color: ColorLxp.neutral100,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Rangkuman telah berhasil dibuat...',
                        style: Style.textTitleCourse.copyWith(
                          color: ColorLxp.neutral100,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                actions: <Widget>[
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ModuleListSummary(),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12.0,
                            horizontal: 68.0,
                          ),
                          decoration: Style.btnBlue,
                          child: Text(
                            'Lihat rangkuman',
                            style: Style.textTitleCourse.copyWith(
                              color: ColorLxp.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12.0,
                            horizontal: 98.0,
                          ),
                          decoration: Style.borderBlue,
                          child: Text(
                            'Kembali',
                            style: Style.textTitleCourse.copyWith(
                              color: ColorLxp.primary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          } else {}
        },
        child: Container(
          height: 48.0,
          margin: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: _rangkumanDokumen.text.length >= 150 &&
                    _rangkumanVideo.text.length >= 150
                ? ColorLxp.primary
                : ColorLxp.neutral300,
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
      ),
    );
  }

  Widget summary(
    String title,
    TextEditingController controller,
    String hintText,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24.0),
        Text(
          title,
          style: Style.textSks.copyWith(
            color: ColorLxp.neutral800,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          maxLines: 5,
          decoration: Style.inputSummary.copyWith(
            hintText: hintText,
          ),
        ),
        const SizedBox(height: 12),
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            'Minimal 150 Karakter',
            style: Style.textIndicator.copyWith(
              color: ColorLxp.neutral800,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
