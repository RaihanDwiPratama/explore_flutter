import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/quiz/soal_quiz/screen/soal_quiz_page.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class BottomNavigationQuiz extends StatelessWidget {
  const BottomNavigationQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Kesempatan Mengerjakan Tersisa : 3X',
            style: Style.textSks.copyWith(
              color: ColorLxp.infoNormal,
              fontWeight: FontWeight.w400,
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: SvgPicture.asset(
                    'assets/images/Thinking-Quiz.svg',
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Mulai Quiz?',
                        style: Style.textButtonBlank.copyWith(
                          color: ColorLxp.neutral100,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        width: 250,
                        child: Text(
                          "Tekan tombol 'Mulai' untuk lanjut!",
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
                              builder: (context) => const SoalQuizPage(),
                            ),
                          ),
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 68.0,
                            ),
                            decoration: Style.btnBlue,
                            child: Center(
                              child: Text(
                                'Mulai',
                                style: Style.textTitleCourse.copyWith(
                                  color: ColorLxp.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 98.0,
                            ),
                            decoration: Style.borderBlue,
                            child: Center(
                              child: Text(
                                'Batal',
                                style: Style.textTitleCourse.copyWith(
                                  color: ColorLxp.primary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            child: Container(
              height: 48,
              margin: const EdgeInsets.only(top: 8.0),
              width: double.infinity,
              decoration: Style.btnBlue,
              child: Center(
                child: Text(
                  'Mulai Quiz',
                  style: Style.textTitleCourse.copyWith(
                    color: ColorLxp.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 48,
            margin: const EdgeInsets.only(top: 16.0),
            width: double.infinity,
            decoration: Style.borderBlue,
            child: Center(
              child: Text(
                'Riwayat Quiz',
                style: Style.textTitleCourse.copyWith(
                  color: ColorLxp.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
