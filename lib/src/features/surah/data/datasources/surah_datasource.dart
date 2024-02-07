import 'package:alquran_app/src/features/surah/data/models/response/surah_response.dart';

abstract interface class SurahDatasource {
  Future<SurahResponse> getSurah();
}
