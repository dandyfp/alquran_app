import 'package:alquran_app/src/features/surah/domain/entities/surah.dart';
import 'package:alquran_app/src/network/api_error.dart';
import 'package:dartz/dartz.dart';

abstract interface class SurahRepository {
  Future<Either<ApiError, Surah>> getSurah();
}
