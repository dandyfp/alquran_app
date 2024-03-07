import 'package:alquran_app/src/features/surah/domain/entities/detail_surah.dart';
import 'package:alquran_app/src/features/surah/domain/entities/surah.dart';
import 'package:alquran_app/src/utils/type_defs.dart';

abstract interface class SurahRepository {
  FutureEither<List<Surah>> getSurah();
  FutureEither<DetailSurah> getDetailSurah(int numberSurah);
}
