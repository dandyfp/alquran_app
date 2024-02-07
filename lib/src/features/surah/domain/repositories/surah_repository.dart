import 'package:alquran_app/src/features/surah/domain/entities/surah.dart';
import 'package:alquran_app/src/utils/type_defs.dart';

abstract interface class SurahRepository {
  FutureEither<Surah> getSurah();
}
