// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerseModel _$VerseModelFromJson(Map<String, dynamic> json) => VerseModel(
      number: json['number'] == null
          ? null
          : NumberModel.fromJson(json['number'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : TextModel.fromJson(json['text'] as Map<String, dynamic>),
      audio: json['audio'] == null
          ? null
          : AudioModel.fromJson(json['audio'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerseModelToJson(VerseModel instance) =>
    <String, dynamic>{
      'number': instance.number,
      'text': instance.text,
      'audio': instance.audio,
    };
