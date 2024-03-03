import 'package:alquran_app/src/core/service/core_response.dart';
import 'package:alquran_app/src/features/surah/data/models/surah_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'surah_response.g.dart';

@JsonSerializable(
  explicitToJson: true,
  createToJson: true,
)
class SurahResponse extends CoreResponse<List<SurahModel>> {
  SurahResponse({
    String? status,
    List<SurahModel>? data,
    int? code,
  }) : super(status: status, data: data, code: code);

  factory SurahResponse.fromJson(Map<String, dynamic> json) => _$SurahResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SurahResponseToJson(this);
}
