import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class QuestionTeacher extends StatefulWidget {
  const QuestionTeacher({super.key});

  @override
  State<QuestionTeacher> createState() => _QuestionTeacherState();
}

class _QuestionTeacherState extends State<QuestionTeacher> {
  final Color _colorBtn = ColorLxp.neutral200;

  final _questionOptions = [
    'Sangat Setuju',
    'Setuju',
    'Tidak Setuju',
    'Sangat Tidak Setuju',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Penilaian Pengajar',
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
            Row(
              children: [
                Image.asset(
                  "assets/images/neneng.png",
                  width: 40,
                ),
                const SizedBox(width: 12.0),
                Column(
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
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 298,
              margin: const EdgeInsets.only(top: 24.0),
              decoration: BoxDecoration(
                color: ColorLxp.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff18212E).withOpacity(0.06),
                    offset: const Offset(0, 4),
                    blurRadius: 8.0,
                    spreadRadius: -4.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 74.0,
                    padding: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      color: ColorLxp.primary,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                    child: Text(
                      'Instruktur menerangkan konsep pada modul dengan jelas.',
                      style: Style.textTitleCourse.copyWith(
                        fontWeight: FontWeight.w600,
                        color: ColorLxp.white,
                      ),
                    ),
                  ),
                  ...List.generate(
                    _questionOptions.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.circle_outlined,
                            color: ColorLxp.neutral500,
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            _questionOptions.elementAt(index).toString(),
                            style: Style.textTitleCourse.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const QuestionTeacher(),
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(16.0),
          height: 48.0,
          decoration: Style.btnBlue.copyWith(
            color: _colorBtn,
          ),
          child: Center(
            child: Text(
              'Selanjutnya',
              style: Style.textButtonBlank.copyWith(
                fontWeight: FontWeight.w500,
                color: ColorLxp.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
