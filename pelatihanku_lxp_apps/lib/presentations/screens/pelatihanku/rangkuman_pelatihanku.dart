import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/pelatihanku/list_rangkuman_pelatihanku.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class RangkumanPelatihanku extends StatefulWidget {
  const RangkumanPelatihanku({super.key});

  @override
  State<RangkumanPelatihanku> createState() => _RangkumanPelatihankuState();
}

class _RangkumanPelatihankuState extends State<RangkumanPelatihanku> {
  bool _isEnabled = false;
  final _rangkuman = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rangkuman',
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: _rangkuman,
              maxLines: null,
              onChanged: (value) {
                if (value.length >= 10) {
                  setState(() {
                    _isEnabled = true;
                  });
                } else {
                  setState(() {
                    _isEnabled = false;
                  });
                }
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(12),
                hintText: 'Buat rangkuman...',
                hintStyle: Style.textSks.copyWith(
                  color: ColorLxp.neutral800,
                  fontWeight: FontWeight.w400,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  gapPadding: 6.0,
                  borderSide: BorderSide(
                    color: ColorLxp.neutral200,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Minimal 1000 Karakter',
              style: Style.textIndicator.copyWith(
                color: ColorLxp.neutral800,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          if (_isEnabled) {
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
                            builder: (context) =>
                                const ListRangkumanPelatihanku(),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 12.0,
                            horizontal: 68.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorLxp.primary,
                          ),
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
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: ColorLxp.primary,
                              )),
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
            color: _isEnabled ? ColorLxp.primary : ColorLxp.neutral300,
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
}
