import 'package:alquran_app/src/features/surah/domain/entities/surah.dart';
import 'package:isar/isar.dart';

part 'surah_collection.g.dart';

@Collection()
class SurahCollection {
  Id id = Isar.autoIncrement;
  int? number;
  String? name;
  String? englishName;
  int? numberOfAyahs;
  String? revelationType;
  String? englishNameTranslation;

  SurahCollection({
    this.number,
    this.name,
    this.englishName,
    this.numberOfAyahs,
    this.englishNameTranslation,
    this.revelationType,
  });

  Surah toEntity() => Surah(
        number: number,
        name: name,
        englishName: englishName,
        numberOfAyahs: numberOfAyahs,
        revelationType: revelationType,
        englishNameTranslation: englishNameTranslation,
      );
}
