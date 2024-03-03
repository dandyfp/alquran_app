import 'package:alquran_app/src/features/surah/domain/entities/surah.dart';
import 'package:alquran_app/src/features/surah/domain/repositories/surah_repository.dart';
import 'package:alquran_app/src/network/api_error.dart';
import 'package:alquran_app/src/utils/type_defs.dart';
import 'package:dartz/dartz.dart';

class GetSurah implements UseCaseEither<List<Surah>, void> {
  final SurahRepository _surahRepository;

  GetSurah({required SurahRepository surahRepository}) : _surahRepository = surahRepository;

  @override
  Future<Either<ApiError, List<Surah>>> call(void params) async {
    var result = await _surahRepository.getSurah();
    return result;
  }
}
