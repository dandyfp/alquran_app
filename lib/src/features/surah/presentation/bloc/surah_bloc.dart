import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'surah_event.dart';
part 'surah_state.dart';

class SurahBloc extends Bloc<SurahEvent, SurahState> {
  SurahBloc() : super(SurahInitial()) {
    on<SurahEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
