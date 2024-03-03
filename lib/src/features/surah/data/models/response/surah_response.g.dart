// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurahResponse _$SurahResponseFromJson(Map<String, dynamic> json) =>
    SurahResponse(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SurahModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as int?,
    )..message = json['message'] as String?;

Map<String, dynamic> _$SurahResponseToJson(SurahResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
