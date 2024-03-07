import 'package:alquran_app/src/features/surah/domain/entities/detail_surah.dart';
import 'package:alquran_app/src/features/surah/domain/repositories/surah_repository.dart';
import 'package:alquran_app/src/features/surah/domain/usecases/get_detail_surah/get_detail_surah_params.dart';
import 'package:alquran_app/src/network/api_error.dart';
import 'package:alquran_app/src/utils/type_defs.dart';
import 'package:dartz/dartz.dart';

class GetDetailSurah implements UseCaseEither<DetailSurah, GetDetailSurahParams> {
  final SurahRepository _surahRepository;

  GetDetailSurah({required SurahRepository surahRepository}) : _surahRepository = surahRepository;

  @override
  Future<Either<ApiError, DetailSurah>> call(GetDetailSurahParams params) async {
    var result = await _surahRepository.getDetailSurah(params.numberSurah);
    return result;
  }
}
