import 'package:alquran_app/src/features/surah/domain/entities/number_surah.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'number_model.g.dart';

@JsonSerializable(explicitToJson: true)
class NumberModel extends Equatable {
  final int? inQuran;
  final int? inSurah;
  const NumberModel(
    this.inQuran,
    this.inSurah,
  );

  factory NumberModel.fromJson(Map<String, dynamic> json) => _$NumberModelFromJson(json);
  Map<String, dynamic> toJson() => _$NumberModelToJson(this);

  @override
  List<Object?> get props => [
        inQuran,
        inSurah,
      ];

  NumberSurah toEntity() => NumberSurah(
        inQuran: inQuran,
        inSurah: inSurah,
      );
}
