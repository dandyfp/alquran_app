import 'package:alquran_app/src/features/surah/domain/entities/text.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'text_model.g.dart';

@JsonSerializable(explicitToJson: true)
class TextModel extends Equatable {
  final String? arab;

  const TextModel(this.arab);

  factory TextModel.fromJson(Map<String, dynamic> json) => _$TextModelFromJson(json);
  Map<String, dynamic> toJson() => _$TextModelToJson(this);
  @override
  List<Object?> get props => [arab];

  TextSurah toEntity() => TextSurah(arab);
}
