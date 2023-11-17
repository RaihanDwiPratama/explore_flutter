import 'package:flutter/material.dart';
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
          'score': -1,
        },
        {
          'text': 'B.  bahasa tubuh, mimik  dan nada suara',
          'score': 1,
        },
        {
          'text': 'C.  Komunikasi melalui kata-kata lisan',
          'score': -1,
        },
        {
          'text': 'D. Komunikasi melalui surat elektronik',
          'score': -1,
        },
      ]
    },
    {
      'questionText': 'Apa maksud "feedback" dalam konteks komunikasi?',
      'answers': [
        {
          'text': 'A. Mengirim pesan kepada seseorang',
          'score': -1,
        },
        {
          'text': 'B. Membagi informasi secara acak',
          'score': 1,
        },
        {
          'text': 'C. Berbicara dengan volume tinggi',
          'score': -1,
        },
        {
          'text': 'D. Respon terhadap pesan yang diterima',
          'score': -1,
        },
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(int score) {
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
          ],
        ),
      ),
    );
  }
}
