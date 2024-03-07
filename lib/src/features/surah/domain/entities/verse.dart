import 'package:alquran_app/src/features/surah/domain/entities/number_surah.dart';
import 'package:alquran_app/src/features/surah/domain/entities/text.dart';
import 'package:equatable/equatable.dart';

class Verse extends Equatable {
  final NumberSurah? number;
  final TextSurah? text;

  const Verse({
    this.number,
    this.text,
  });
  @override
  List<Object?> get props => [number, text];
}
