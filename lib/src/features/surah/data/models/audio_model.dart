import 'package:alquran_app/src/features/surah/domain/entities/audio.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'audio_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AudioModel extends Equatable {
  final String primary;

  const AudioModel(this.primary);
  @override
  List<Object?> get props => [primary];

  factory AudioModel.fromJson(Map<String, dynamic> json) => _$AudioModelFromJson(json);
  Map<String, dynamic> toJson() => _$AudioModelToJson(this);

  Audio toEntity() {
    return Audio(primary);
  }
}
