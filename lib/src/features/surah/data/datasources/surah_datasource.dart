import 'package:alquran_app/src/features/surah/data/models/response/surah_response.dart';
import 'package:alquran_app/src/features/surah/data/repositories/surah_repository.dart';
import 'package:alquran_app/src/network/api_error.dart';
import 'package:alquran_app/src/network/network_exceptions.dart';
import 'package:dio/dio.dart';

class SurahDataSource implements SurahRepository {
  final Dio dio;

  SurahDataSource(this.dio);
  @override
  Future<SurahResponse> getSurah() async {
    try {
      var response = await dio.get("http://api.alquran.cloud/v1/surah");
      return SurahResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw ApiError.failure(
        error: NetworkExceptions.getDioException(e),
        errorRes: NetworkExceptions.getErrorResponse(e),
      );
    }
  }
}
