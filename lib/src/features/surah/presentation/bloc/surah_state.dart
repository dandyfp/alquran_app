part of 'surah_bloc.dart';

abstract class SurahState extends Equatable {
  const SurahState();

  @override
  List<Object> get props => [];
}

class SurahInitial extends SurahState {}

class SurahFailure extends SurahState {
  final RequestState requestState;

  const SurahFailure(this.requestState);
}

class SurahLoaded extends SurahState {
  final Surah data;

  const SurahLoaded(this.data);
}
