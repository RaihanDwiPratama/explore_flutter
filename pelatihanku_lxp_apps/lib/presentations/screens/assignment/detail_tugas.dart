import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DetailTugas extends StatefulWidget {
  const DetailTugas({super.key});

  @override
  State<DetailTugas> createState() => _DetailTugasState();
}

class _DetailTugasState extends State<DetailTugas> {
  FilePickerResult? result;
  List<PlatformFile> files = [];

  void hapusFile() {
    setState(() {
      files.clear();
      if (files.isEmpty) {
        result = null;
      }
    });
  }

  void gantiFile() async {
    FilePickerResult? newFileResult = await FilePicker.platform.pickFiles(
      allowMultiple: false,
    );
    if (newFileResult != null && newFileResult.files.isNotEmpty) {
      // ambil file yang baru dipilih oleh pengguna
      // PlatformFile newFile = newFileResult.files.first;

      // menyimpan file baru
      setState(() {
        files.clear();
        files.addAll(newFileResult.files);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Tugas',
          style: Style.title.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.chevron_left),
        ),
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Keterampilan Komunikasi - Pertemuan 1',
              style: Style.textDetail,
              maxLines: 2,
            ),
            const SizedBox(height: 4),
            Text(
              'Almira Samudra, S.Kom., M.Kom.',
              style: Style.textTitleCourse.copyWith(
                fontWeight: FontWeight.w500,
                color: ColorLxp.neutral800,
              ),
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Post by ',
                    style: Style.textSks.copyWith(
                      fontWeight: FontWeight.w400,
                      color: ColorLxp.neutral400,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Almira Samudra',
                        style: TextStyle(color: ColorLxp.primary),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Rabu, 07 Juli 2023, 13.24',
                  style: Style.textSks.copyWith(
                    fontWeight: FontWeight.w400,
                    color: ColorLxp.neutral400,
                  ),
                )
              ],
            ),
            Container(
              height: 235,
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 16,
                bottom: 28,
              ),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: ColorLxp.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: ColorLxp.black.withOpacity(0.10),
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tugas Pertemuan 1',
                    style: Style.textTitleCourse.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Berikan contoh konkret dari kehidupan sehari-hari tentang proses komunikasi yang melibatkan pengirim, pesan, saluran, penerima, dan umpan balik. Jelaskan setiap elemen proses komunikasi ini dalam konteks contoh yang Anda berikan.',
                    style: Style.textSks.copyWith(
                      fontWeight: FontWeight.w400,
                      color: ColorLxp.black,
                    ),
                  ),
                  Container(
                    height: 36,
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: ColorLxp.neutral300,
                        strokeAlign: 1,
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/FilePdf.svg'),
                        const SizedBox(width: 4),
                        Text(
                          'Tugas Komunikasi 1.pdf',
                          style: Style.textSks.copyWith(
                            fontWeight: FontWeight.w400,
                            color: ColorLxp.neutral800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset('assets/icons/CalendarCheck.svg'),
                      const SizedBox(width: 4),
                      Text(
                        ' 15/09/2023 - 23:59:00',
                        style: Style.textSks.copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorLxp.neutral800,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            result == null
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 28),
                      Text(
                        'Jawaban Terkirim',
                        style: Style.textTitleCourse.copyWith(
                          fontWeight: FontWeight.w500,
                          color: ColorLxp.neutral800,
                        ),
                      ),
                      const Divider(
                        color: ColorLxp.neutral300,
                        thickness: 1,
                      ),
                      Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 24),
                            SvgPicture.asset('assets/icons/FileX.svg'),
                            const SizedBox(height: 4),
                            SizedBox(
                              width: 100,
                              child: Text(
                                'Belum mengumpulkan',
                                style: Style.textSks.copyWith(
                                  color: ColorLxp.neutral300,
                                ),
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 28),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jawaban Terkirim',
                            style: Style.textTitleCourse.copyWith(
                              fontWeight: FontWeight.w500,
                              color: ColorLxp.neutral800,
                            ),
                          ),
                          const Text('Sedang Dinilai', style: Style.textSks),
                        ],
                      ),
                      const Divider(
                        color: ColorLxp.neutral300,
                        thickness: 1,
                      ),
                      Container(
                        height: 58,
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: ColorLxp.neutral300,
                            strokeAlign: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/FilePdf.svg'),
                                    const SizedBox(width: 4),
                                    Text(
                                      'Tugas Komunikasi 1_Jhon.pdf',
                                      style: Style.textSks.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: ColorLxp.neutral800,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      'Terkirim',
                                      style: Style.textSks.copyWith(
                                        color: ColorLxp.neutral800,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    const Icon(
                                      Icons.check_circle,
                                      color: ColorLxp.successNormal,
                                      size: 18,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      '15:13:30 - 14/09/2023',
                                      style: Style.textSks.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: ColorLxp.successNormal,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            PopupMenuButton(
                              onSelected: (value) {
                                if (value == 'hapus') {
                                  hapusFile();
                                } else if (value == 'ubah') {
                                  gantiFile();
                                }
                              },
                              itemBuilder: (context) =>
                                  <PopupMenuEntry<String>>[
                                const PopupMenuItem<String>(
                                  value: 'hapus',
                                  child: ListTile(
                                    leading: Icon(Icons.delete),
                                    title: Text('Hapus'),
                                  ),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'ubah',
                                  child: ListTile(
                                    leading: Icon(Icons.edit),
                                    title: Text('Ubah'),
                                  ),
                                )
                              ],
                              child: const Icon(
                                Icons.more_vert,
                                color: ColorLxp.neutral500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () async {
          FilePickerResult? newFileResult = await FilePicker.platform.pickFiles(
            allowMultiple: true,
          );
          if (newFileResult != null && newFileResult.files.isNotEmpty) {
            setState(() {
              files.clear();
              files.addAll(newFileResult.files);
            });
          }
        },
        child: Container(
          height: 48.0,
          margin: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: ColorLxp.primary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.file_download_outlined,
                color: ColorLxp.white,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'Upload Tugas',
                style: Style.textButtonBlank.copyWith(
                  color: ColorLxp.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
