import 'package:alquran_app/src/core/service/request_state.dart';
import 'package:alquran_app/src/features/surah/domain/entities/surah.dart';
import 'package:alquran_app/src/features/surah/domain/usecases/get_surah.dart/get_surah.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'surah_event.dart';
part 'surah_state.dart';

class SurahBloc extends Bloc<SurahEvent, SurahState> {
  final GetSurah _getSurah;
  SurahBloc(this._getSurah) : super(SurahInitial()) {
    on<SurahEvent>((event, emit) async {
      emit(SurahLoading());
      final result = await _getSurah.call(null);
      result.fold(
        (l) => emit(SurahFailure(RequestState.error(l.getErrorMessage()))),
        (r) => emit(SurahLoaded(r)),
      );
    });
  }
}
