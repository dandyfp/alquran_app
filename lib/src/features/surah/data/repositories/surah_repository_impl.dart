import 'package:alquran_app/src/features/surah/data/datasources/surah_datasource.dart';
import 'package:alquran_app/src/features/surah/domain/entities/surah.dart';
import 'package:alquran_app/src/features/surah/domain/repositories/surah_repository.dart';
import 'package:alquran_app/src/network/api_error.dart';
import 'package:dartz/dartz.dart';

class SurahRepositoryImpl implements SurahRepository {
  final SurahDatasource _surahDatasource;

  SurahRepositoryImpl({required SurahDatasource surahDatasource}) : _surahDatasource = surahDatasource;
  @override
  Future<Either<ApiError, List<Surah>>> getSurah() async {
    try {
      final response = await _surahDatasource.getSurah();
      final List<Surah> data = response.data!.map((e) => e.toEntity()).toList();
      return right(data);
    } catch (e) {
      return left(e as ApiError);
    }
  }
}
