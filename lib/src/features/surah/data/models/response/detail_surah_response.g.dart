// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_surah_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailSurahResponse _$DetailSurahResponseFromJson(Map<String, dynamic> json) =>
    DetailSurahResponse(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : DetailSurahModel.fromJson(json['data'] as Map<String, dynamic>),
      code: json['code'] as int?,
    )..message = json['message'] as String?;

Map<String, dynamic> _$DetailSurahResponseToJson(
        DetailSurahResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data?.toJson(),
    };
