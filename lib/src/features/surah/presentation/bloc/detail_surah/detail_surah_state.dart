part of 'detail_surah_bloc.dart';

@freezed
class DetailSurahState with _$DetailSurahState {
  const factory DetailSurahState.initial() = _Initial;
  const factory DetailSurahState.loading() = _Loading;
  const factory DetailSurahState.error(RequestState requestState) = _RequestState;
  const factory DetailSurahState.loaded(DetailSurah data) = _Loaded;
}
