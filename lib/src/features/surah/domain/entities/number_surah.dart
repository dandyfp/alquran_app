import 'package:equatable/equatable.dart';

class NumberSurah extends Equatable {
  final int? inQuran;
  final int? inSurah;

  const NumberSurah({this.inQuran, this.inSurah});
  @override
  List<Object?> get props => [
        inQuran,
        inSurah,
      ];
}
