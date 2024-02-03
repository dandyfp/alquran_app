// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    ErrorResponse(
      status: json['status'] as String?,
      message: json['message'] as String?,
    )
      ..code = json['code'] as int?
      ..data = json['data'];
