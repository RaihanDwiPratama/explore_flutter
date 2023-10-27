import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class DetailRangkumanPelatihanku extends StatelessWidget {
  const DetailRangkumanPelatihanku({super.key});

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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pertemuan 1 - Pengenalan',
                  style: Style.textTitleCourse.copyWith(
                    color: ColorLxp.neutral800,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '12 September 2023',
                  style: Style.textSks.copyWith(
                    color: ColorLxp.primary,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Bahasa tubuh, ekspresi wajah, memiliki peran besar dalam menyampaikan pesan tanpa kata-kata. Oleh karena itu, penting bagi peserta pelatihan untuk mengisi formulir yang mencakup pelatihan keterampilan komunikasi non-verbal. Komunikasi non-verbal mencakup gestur tangan, posisi tubuh, dan bahkan kontak mata. Semua ini adalah elemen-elemen penting yang dapat membantu peserta pelatihan memahami bagaimana mereka dapat meningkatkan kemampuan mereka dalam berkomunikasi tanpa menggunakan kata-kata.',
              style: Style.textSks.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Dalam dunia bisnis, komunikasi non-verbal seringkali menjadi kunci keberhasilan dalam negosiasi, presentasi, dan kepemimpinan. Seorang pemimpin yang dapat memahami ekspresi wajah dan bahasa tubuh timnya akan dapat mengidentifikasi ketidakpuasan atau kebutuhan anggota tim dengan lebih baik. Hal ini dapat membantu menciptakan lingkungan kerja yang lebih produktif dan harmonis.',
              style: Style.textSks.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Selain itu, pemahaman tentang bahasa tubuh dan ekspresi wajah juga dapat membantu peserta pelatihan dalam berbagai aspek kehidupan mereka, baik itu dalam interaksi sosial sehari-hari, berbicara di depan umum, atau bahkan dalam konteks profesional. Kemampuan untuk membaca dan menginterpretasikan sinyal-sinyal non-verbal dapat membantu seseorang menjadi lebih efektif dalam membangun hubungan dengan orang lain, menghindari kesalahpahaman, dan mengungkapkan diri dengan lebih baik.',
              style: Style.textSks.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
