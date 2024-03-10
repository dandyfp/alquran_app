import 'package:alquran_app/src/features/surah/data/models/audio_model.dart';
import 'package:alquran_app/src/features/surah/data/models/number_model.dart';
import 'package:alquran_app/src/features/surah/data/models/text_model.dart';
import 'package:alquran_app/src/features/surah/domain/entities/verse.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'verse_model.g.dart';

@JsonSerializable()
class VerseModel extends Equatable {
  final NumberModel? number;
  final TextModel? text;
  final AudioModel? audio;

  const VerseModel({
    this.number,
    this.text,
    this.audio,
  });

  @override
  List<Object?> get props => [];

  factory VerseModel.fromJson(Map<String, dynamic> json) => _$VerseModelFromJson(json);
  Map<String, dynamic> toJson() => _$VerseModelToJson(this);

  Verse toEntity() => Verse(
        number: number?.toEntity(),
        text: text?.toEntity(),
        audio: audio?.toEntity(),
      );
}
