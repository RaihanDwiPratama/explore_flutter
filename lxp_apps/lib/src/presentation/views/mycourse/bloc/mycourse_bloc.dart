import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'mycourse_event.dart';
part 'mycourse_state.dart';

class MycourseBloc extends Bloc<MycourseEvent, MycourseState> {
  MycourseBloc() : super(MycourseInitial()) {
    on<MycourseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
