import 'package:equatable/equatable.dart';

class Audio extends Equatable {
  final String? primary;

  const Audio(this.primary);
  @override
  List<Object?> get props => [primary];
}
