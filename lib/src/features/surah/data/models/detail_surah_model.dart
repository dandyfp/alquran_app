import 'package:alquran_app/src/features/surah/data/models/verse_model.dart';
import 'package:alquran_app/src/features/surah/domain/entities/detail_surah.dart';
import 'package:alquran_app/src/features/surah/domain/entities/verse.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'detail_surah_model.g.dart';

@JsonSerializable(explicitToJson: true)
class DetailSurahModel extends Equatable {
  final int? number;
  final int? sequence;
  final int? numberOfVerses;
  final List<VerseModel>? verses;

  const DetailSurahModel(this.number, this.sequence, this.numberOfVerses, this.verses);

  @override
  List<Object?> get props => [
        number,
        sequence,
        numberOfVerses,
        verses,
      ];

  factory DetailSurahModel.fromJson(Map<String, dynamic> json) => _$DetailSurahModelFromJson(json);
  Map<String, dynamic> toJson() => _$DetailSurahModelToJson(this);

  DetailSurah toEntity() {
    List<Verse>? dataVerses = verses?.map((e) => e.toEntity()).toList();
    return DetailSurah(
      number: number,
      numberOfVerses: numberOfVerses,
      sequence: sequence,
      verses: dataVerses,
    );
  }
}
