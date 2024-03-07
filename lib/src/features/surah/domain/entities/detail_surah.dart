import 'package:alquran_app/src/features/surah/domain/entities/verse.dart';
import 'package:equatable/equatable.dart';

class DetailSurah extends Equatable {
  final int? number;
  final int? sequence;
  final int? numberOfVerses;
  final List<Verse>? verses;

  const DetailSurah({
    this.number,
    this.sequence,
    this.verses,
    this.numberOfVerses,
  });

  @override
  List<Object?> get props => [
        number,
        sequence,
        numberOfVerses,
        verses,
      ];
}
