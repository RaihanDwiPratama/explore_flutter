import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_timer_app/timer/bloc/timer_bloc.dart';

class ActionsTimer extends StatelessWidget {
  const ActionsTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
        buildWhen: (previous, current) =>
            previous.runtimeType != current.runtimeType,
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ...switch (state) {
                TimerInitial() => [
                    FloatingActionButton(
                      child: const Icon(Icons.play_arrow),
                      onPressed: () => context
                          .read<TimerBloc>()
                          .add(TimerStarted(duration: state.duration)),
                    )
                  ],
                TimerRunInProgress() => [
                    FloatingActionButton(
                      child: const Icon(Icons.pause),
                      onPressed: () =>
                          context.read<TimerBloc>().add(const TimerPaused()),
                    ),
                    FloatingActionButton(
                      child: const Icon(Icons.replay),
                      onPressed: () =>
                          context.read<TimerBloc>().add(const TimerReset()),
                    ),
                  ],
                TimerRunPause() => [
                    FloatingActionButton(
                      child: const Icon(Icons.play_arrow),
                      onPressed: () =>
                          context.read<TimerBloc>().add(const TimerResumed()),
                    ),
                    FloatingActionButton(
                      child: const Icon(Icons.replay),
                      onPressed: () =>
                          context.read<TimerBloc>().add(const TimerResumed()),
                    ),
                  ],
                TimerRunComplete() => [
                    FloatingActionButton(
                      child: const Icon(Icons.replay),
                      onPressed: () =>
                          context.read<TimerBloc>().add(const TimerReset()),
                    ),
                  ]
              }
            ],
          );
        });
  }
}
