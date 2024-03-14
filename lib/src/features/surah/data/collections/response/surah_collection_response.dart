/* import 'package:isar/isar.dart';

part 'surah_collection_response.g.dart';

@Collection()
class SurahCollectionResponse {
  Id id = Isar.autoIncrement;
  int? code;
  List<SurahModelCollection>? data;
  String? status;

  SurahCollectionResponse({
    this.status,
    this.data,
    this.code,
  });
}

@embedded
class SurahModelCollection {
  SurahModelCollection({
    this.englishName,
    this.englishNameTranslation,
    this.name,
    this.number,
    this.numberOfAyahs,
    this.revelationType,
  });
  int? number;
  String? name;
  String? englishName;
  int? numberOfAyahs;
  String? revelationType;
  String? englishNameTranslation;

  factory SurahModelCollection.formJson(json) {
    return SurahModelCollection(
      englishName: json['englishName'],
      englishNameTranslation: json['englishNameTranslation'],
      name: json['name'],
      number: json['number'],
      numberOfAyahs: json['numberOfAyahs'],
      revelationType: json['revelationType'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'englishName': englishName,
      'name': name,
      'number': number,
      'numberOfAyahs': numberOfAyahs,
      'revelationType': revelationType,
      'englishNameTranslation': englishNameTranslation,
    };
  }
}
 */