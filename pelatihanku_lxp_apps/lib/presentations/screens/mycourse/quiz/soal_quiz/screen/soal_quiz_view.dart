import 'package:flutter/material.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/quiz/soal_quiz/widgets/quiz.dart';
import 'package:pelatihanku_lxp_apps/presentations/screens/mycourse/quiz/soal_quiz/widgets/result.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/color.dart';
import 'package:pelatihanku_lxp_apps/presentations/utils/style.dart';

class SoalQuizView extends StatefulWidget {
  const SoalQuizView({super.key});

  @override
  State<SoalQuizView> createState() => _SoalQuizViewState();
}

class _SoalQuizViewState extends State<SoalQuizView> {
  final _questions = const [
    {
      'questionText': 'Apa yang dimaksud dengan komunikasi nonverbal?',
      'answers': [
        {
          'text': 'A. Komunikasi melalui kata-kata tertulis',
          'score': -20,
        },
        {
          'text': 'B.  bahasa tubuh, mimik  dan nada suara',
          'score': 20,
        },
        {
          'text': 'C.  Komunikasi melalui kata-kata lisan',
          'score': -20,
        },
        {
          'text': 'D. Komunikasi melalui surat elektronik',
          'score': -20,
        },
      ]
    },
    {
      'questionText': 'Apa maksud "feedback" dalam konteks komunikasi?',
      'answers': [
        {
          'text': 'A. Mengirim pesan kepada seseorang',
          'score': -20,
        },
        {
          'text': 'B. Membagi informasi secara acak',
          'score': 20,
        },
        {
          'text': 'C. Berbicara dengan volume tinggi',
          'score': -20,
        },
        {
          'text': 'D. Respon terhadap pesan yang diterima',
          'score': -20,
        },
      ]
    },
    {
      'questionText': 'Apa yang dimaksud dengan komunikasi nonverbal?',
      'answers': [
        {
          'text': 'A. Komunikasi melalui kata-kata tertulis',
          'score': -20,
        },
        {
          'text': 'B.  bahasa tubuh, mimik  dan nada suara',
          'score': 20,
        },
        {
          'text': 'C.  Komunikasi melalui kata-kata lisan',
          'score': -20,
        },
        {
          'text': 'D. Komunikasi melalui surat elektronik',
          'score': -20,
        },
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: null,
        title: Text(
          'Quiz - Pertemuan 1',
          style: Style.title.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1/10',
                  style: Style.textSks.copyWith(
                    color: ColorLxp.neutral800,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '09.20',
                  style: Style.textSks.copyWith(
                    color: ColorLxp.dangerNormal,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              backgroundColor: ColorLxp.primaryLight,
              borderRadius: BorderRadius.circular(10),
              value: 0.1,
              valueColor: const AlwaysStoppedAnimation(
                ColorLxp.primary,
              ),
              minHeight: 10,
            ),
            _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  )
                : Result(
                    resultScore: _totalScore,
                    resetHandler: _resetQuiz,
                  ),
          ],
        ),
      ),
      bottomNavigationBar: _questionIndex == 0
          ? Padding(
              padding: const EdgeInsets.only(
                bottom: 20.0,
                right: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Soal Berikutnya',
                    style: Style.textTitleCourse.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      border: Border.all(
                        width: 2,
                        color: ColorLxp.primary,
                      ),
                    ),
                    child: const Icon(
                      Icons.chevron_right,
                      color: ColorLxp.primary,
                      size: 25,
                    ),
                  )
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(
                bottom: 20.0,
                right: 16.0,
                left: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          border: Border.all(
                            width: 2,
                            color: ColorLxp.primary,
                          ),
                        ),
                        child: const Icon(
                          Icons.chevron_left,
                          color: ColorLxp.primary,
                          size: 25,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Soal Sebelumnya',
                        style: Style.textTitleCourse.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 134,
                    height: 42,
                    decoration: BoxDecoration(
                      color: _questionIndex == _questions.length - 1
                          ? ColorLxp.primary
                          : ColorLxp.neutral02,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Selesai',
                        style: Style.textTitleCourse.copyWith(
                          fontWeight: FontWeight.w500,
                          color: _questionIndex == _questions.length - 1
                          ? ColorLxp.white
                          : ColorLxp.neutral05,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
