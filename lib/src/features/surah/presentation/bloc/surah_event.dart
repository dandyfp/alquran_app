part of 'surah_bloc.dart';

abstract class SurahEvent extends Equatable {
  const SurahEvent();

  @override
  List<Object> get props => [];
}

class OnSurah extends SurahEvent {}
