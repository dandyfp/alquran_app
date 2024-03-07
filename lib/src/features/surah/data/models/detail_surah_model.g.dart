// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_surah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailSurahModel _$DetailSurahModelFromJson(Map<String, dynamic> json) =>
    DetailSurahModel(
      json['number'] as int?,
      json['sequence'] as int?,
      json['numberOfVerses'] as int?,
      (json['verses'] as List<dynamic>?)
          ?.map((e) => VerseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DetailSurahModelToJson(DetailSurahModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'sequence': instance.sequence,
      'numberOfVerses': instance.numberOfVerses,
      'verses': instance.verses?.map((e) => e.toJson()).toList(),
    };
