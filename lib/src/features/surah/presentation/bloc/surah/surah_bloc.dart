import 'package:alquran_app/src/core/service/request_state.dart';
import 'package:alquran_app/src/features/surah/data/local_data/surah_local_data_service.dart';
import 'package:alquran_app/src/features/surah/domain/entities/detail_surah.dart';
import 'package:alquran_app/src/features/surah/domain/entities/surah.dart';
import 'package:alquran_app/src/features/surah/domain/usecases/get_surah.dart/get_surah.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'surah_event.dart';
part 'surah_state.dart';

class SurahBloc extends Bloc<SurahEvent, SurahState> {
  final GetSurah _getSurah;
  final SurahLocalDataService _surahLocalDataService;
  // final GetDetailSurah _getDetailSurah;
  SurahBloc(this._getSurah, this._surahLocalDataService) : super(SurahInitial()) {
    on<OnSurah>((event, emit) async {
      emit(SurahLoading());
      final localData = await _surahLocalDataService.getListSurah();
      final result = await _getSurah.call(null);
      result.fold(
        (l) => emit(SurahFailure(RequestState.error(l.getErrorMessage()))),
        (r) => emit(SurahLoaded(localData)),
      );
    });

    /*  on<GetDetailSurahEvent>((event, emit) async {
      // emit(GetDetailSurahLoading());
      var result = await _getDetailSurah.call(GetDetailSurahParams(numberSurah: event.numberSurah));
      result.fold(
        (l) => emit(GetDetailSurahFailure(RequestState.error(l.getErrorMessage()))),
        (data) => emit(GetDetailSurahLoaded(data)),
      );
    }); */
  }
}
