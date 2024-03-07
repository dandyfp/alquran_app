part of 'surah_bloc.dart';

abstract class SurahEvent extends Equatable {
  const SurahEvent();

  @override
  List<Object> get props => [];
}

class OnSurah extends SurahEvent {}

class GetDetailSurahEvent extends SurahEvent {
  final int numberSurah;

  const GetDetailSurahEvent({required this.numberSurah});
}
