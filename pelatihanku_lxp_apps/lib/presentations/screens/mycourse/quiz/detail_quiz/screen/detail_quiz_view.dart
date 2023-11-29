import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/quiz/detail_quiz/widgets/bottom_navigation_quiz.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/quiz/detail_quiz/widgets/row_icon_text.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

// ignore: must_be_immutable
class DetailQuizView extends StatelessWidget {
  DetailQuizView({super.key});

  List<String> icon = [
    'assets/icons/ListNumbers.svg',
    'assets/icons/Timer.svg',
    'assets/icons/Exam2.svg',
    'assets/icons/ClockCounterClockwise.svg',
  ];

  List<String> text = [
    '10 Soal',
    'Durasi 10 Menit',
    'Nilai Kelulusan 80',
    'Max. 3x Pengulangan',
  ];

  List<String> iconChecklist = [
    'assets/icons/CheckCircle.svg',
    'assets/icons/CheckCircle.svg',
    'assets/icons/CheckCircle.svg',
    'assets/icons/CheckCircle.svg',
  ];

  List<String> description = [
    'Kerjakan Dengan Jujur',
    'Dilarang Bekerjasama',
    'Apabila Keluar dari App, Waktu Quiz tetap berjalan',
    'Percobaan Quiz Terakhir merupakan Nilai Dipakai ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz - Pertemuan 1',
          style: Style.title.copyWith(
            fontWeight: FontWeight.w600,
            color: ColorLxp.white,
          ),
        ),
        centerTitle: true,
        foregroundColor: ColorLxp.white,
        toolbarHeight: 80.0,
        flexibleSpace: SvgPicture.asset(
          'assets/images/kuis.svg',
          fit: BoxFit.cover,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        foregroundDecoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Detail Quiz',
              style: Style.textTitleCourse.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            ...List.generate(
              icon.length,
              (index) => RowIconText(
                image: icon[index],
                text: text[index],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Deskripsi',
              style: Style.textTitleCourse.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Quiz ini bertujuan untuk menguji pengetahuan Anda tentang materi yang telah dipelajari di pertemuan ini.',
              style: Style.textSks.copyWith(
                fontWeight: FontWeight.w400,
                color: ColorLxp.grayModern,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Peraturan Quiz',
              style: Style.textTitleCourse.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            ...List.generate(
              icon.length,
              (index) => RowIconText(
                image: iconChecklist[index],
                text: description[index],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationQuiz(),
    );
  }
}
