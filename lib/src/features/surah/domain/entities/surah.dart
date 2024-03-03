import 'package:equatable/equatable.dart';

class Surah extends Equatable {
  final int? number;
  final String? name;
  final String? englishName;
  final int? numberOfAyahs;
  final String? englishNameTranslation;
  final String? revelationType;

  const Surah({
    this.number,
    this.englishNameTranslation,
    this.name,
    this.englishName,
    this.numberOfAyahs,
    this.revelationType,
  });
  @override
  List<Object?> get props => [
        number,
        name,
        englishName,
        numberOfAyahs,
        revelationType,
        englishNameTranslation,
      ];
}
