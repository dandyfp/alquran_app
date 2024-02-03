import 'package:alquran_app/src/features/surah/domain/entities/surah.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'surah_model.g.dart';

@JsonSerializable(explicitToJson: true)
class SurahModel extends Equatable {
  final int? number;
  final String? name;
  final String? englishName;
  final int? numberOfAyahs;
  final String? revelationType;

  const SurahModel(
    this.number,
    this.name,
    this.englishName,
    this.numberOfAyahs,
    this.revelationType,
  );

  @override
  List<Object?> get props => [
        number,
        name,
        englishName,
        numberOfAyahs,
        revelationType,
      ];

  factory SurahModel.fromJson(Map<String, dynamic> json) => _$SurahModelFromJson(json);
  Map<String, dynamic> toJson() => _$SurahModelToJson(this);

  Surah toEntity() => Surah(
        number: number,
        name: name,
        englishName: englishName,
        numberOfAyahs: numberOfAyahs,
        revelationType: revelationType,
      );
}
