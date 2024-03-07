import 'package:alquran_app/src/core/service/request_state.dart';
import 'package:alquran_app/src/features/surah/domain/entities/detail_surah.dart';
import 'package:alquran_app/src/features/surah/domain/usecases/get_detail_surah/get_detail_surah.dart';
import 'package:alquran_app/src/features/surah/domain/usecases/get_detail_surah/get_detail_surah_params.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_surah_event.dart';
part 'detail_surah_state.dart';
part 'detail_surah_bloc.freezed.dart';

class DetailSurahBloc extends Bloc<DetailSurahEvent, DetailSurahState> {
  final GetDetailSurah _getDetailSurah;
  DetailSurahBloc(
    this._getDetailSurah,
  ) : super(const DetailSurahState.initial()) {
    on<_GetDetailSurahEvent>(
      (event, emit) async {
        emit(const DetailSurahState.loading());
        var result = await _getDetailSurah.call(GetDetailSurahParams(numberSurah: event.params));
        result.fold(
          (l) => emit(DetailSurahState.error(RequestState.error(l.getErrorMessage()))),
          (data) => emit(DetailSurahState.loaded(data)),
        );
      },
    );
  }
}
