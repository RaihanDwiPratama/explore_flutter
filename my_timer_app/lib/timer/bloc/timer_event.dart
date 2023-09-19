part of 'timer_bloc.dart';

sealed class TimerEvent {
  const TimerEvent();
}

// TimerStarted — informs the TimerBloc that the timer should be started.
final class TimerStarted extends TimerEvent {
  const TimerStarted({required this.duration});
  final int duration;
}

// TimerPaused — informs the TimerBloc that the timer should be paused.
final class TimerPaused extends TimerEvent {
  const TimerPaused();
}

// TimerResumed — informs the TimerBloc that the timer should be resumed.
final class TimerResumed extends TimerEvent {
  const TimerResumed();
}

// TimerReset — informs the TimerBloc that the timer should be reset to the original state.
class TimerReset extends TimerEvent {
  const TimerReset();
}

// _TimerTicked — informs the TimerBloc that a tick has occurred and that it needs to update its state accordingly.
// ignore: unused_element
class _TimerTicked extends TimerEvent {
  const _TimerTicked({required this.duration});
  final int duration;
}