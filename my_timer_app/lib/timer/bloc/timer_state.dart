part of 'timer_bloc.dart';

sealed class TimerState extends Equatable {
  const TimerState();
  
  @override
  List<Object> get props => [];
}

final class TimerInitial extends TimerState {}
