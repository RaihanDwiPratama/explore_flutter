import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.fromLTRB(24.0, 23.0, 24.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: _rangkuman,
              maxLines: null,
              onChanged: (value) {
                value.length < 1000 ? _isEnabled = false : _isEnabled = true;
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
          setState(() {
            _isEnabled = !_isEnabled;
          });
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
