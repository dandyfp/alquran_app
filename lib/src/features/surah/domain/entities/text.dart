import 'package:equatable/equatable.dart';

class TextSurah extends Equatable {
  final String? arab;
  const TextSurah(this.arab);

  @override
  List<Object?> get props => [arab];
}
