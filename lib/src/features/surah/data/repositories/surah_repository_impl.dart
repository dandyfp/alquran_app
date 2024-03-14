import 'package:alquran_app/src/features/surah/data/collections/surah_collection.dart';
import 'package:alquran_app/src/features/surah/data/datasources/surah_datasource.dart';
import 'package:alquran_app/src/features/surah/data/local_data/surah_local_data_service.dart';
import 'package:alquran_app/src/features/surah/domain/entities/detail_surah.dart';
import 'package:alquran_app/src/features/surah/domain/entities/surah.dart';
import 'package:alquran_app/src/features/surah/domain/repositories/surah_repository.dart';
import 'package:alquran_app/src/network/api_error.dart';
import 'package:alquran_app/src/utils/type_defs.dart';
import 'package:dartz/dartz.dart';

class SurahRepositoryImpl implements SurahRepository {
  final SurahDatasource _surahDatasource;
  final SurahLocalDataService _surahLocalDataService;

  SurahRepositoryImpl(this._surahLocalDataService, {required SurahDatasource surahDatasource}) : _surahDatasource = surahDatasource;
  @override
  Future<Either<ApiError, List<Surah>>> getSurah() async {
    await _surahLocalDataService.cleanDB();
    try {
      final response = await _surahDatasource.getSurah();
      final List<Surah> data = response.data!.map((e) => e.toEntity()).toList();
      final List<SurahCollection> dataSurahCollection = response.data!.map((e) => e.toCollection()).toList();
      await _surahLocalDataService.saveDataSurah(dataSurahCollection);
      return right(data);
    } catch (e) {
      return left(e as ApiError);
    }
  }

  @override
  FutureEither<DetailSurah> getDetailSurah(int numberSurah) async {
    try {
      final response = await _surahDatasource.getDetailSurah(numberSurah);
      return right(response.data!.toEntity());
    } catch (e) {
      return left(e as ApiError);
    }
  }
}
