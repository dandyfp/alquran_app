import 'package:alquran_app/src/core/service/core_response.dart';
import 'package:alquran_app/src/features/surah/data/models/detail_surah_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'detail_surah_response.g.dart';

@JsonSerializable(
  explicitToJson: true,
  createToJson: true,
)
class DetailSurahResponse extends CoreResponse<DetailSurahModel> {
  DetailSurahResponse({
    String? status,
    DetailSurahModel? data,
    int? code,
  }) : super(code: code, data: data, status: status);

  factory DetailSurahResponse.fromJson(Map<String, dynamic> json) => _$DetailSurahResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DetailSurahResponseToJson(this);
}
