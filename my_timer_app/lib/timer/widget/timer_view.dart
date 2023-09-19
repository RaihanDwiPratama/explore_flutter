import 'package:flutter/material.dart';
import 'package:my_timer_app/timer/widget/actions_timer.dart';
import 'package:my_timer_app/timer/widget/background.dart';
import 'package:my_timer_app/timer/widget/timer_text.dart';

class TimerView extends StatelessWidget {
  const TimerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Timer'),
      ),
      body: const Stack(children: [
        Background(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 100.0),
              child: Center(
                child: TimerText(),
              ),
            ),
            ActionsTimer(),
          ],
        )
      ]),
    );
  }
}
