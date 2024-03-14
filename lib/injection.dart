import 'package:alquran_app/src/core/service/isar_service.dart';
import 'package:alquran_app/src/features/surah/data/datasources/surah_datasource.dart';
import 'package:alquran_app/src/features/surah/data/datasources/surah_datasource_impl.dart';
import 'package:alquran_app/src/features/surah/data/local_data/surah_local_data_service.dart';
import 'package:alquran_app/src/features/surah/data/repositories/surah_repository_impl.dart';
import 'package:alquran_app/src/features/surah/domain/repositories/surah_repository.dart';
import 'package:alquran_app/src/features/surah/domain/usecases/get_detail_surah/get_detail_surah.dart';
import 'package:alquran_app/src/features/surah/domain/usecases/get_surah.dart/get_surah.dart';
import 'package:alquran_app/src/features/surah/presentation/bloc/detail_surah/detail_surah_bloc.dart';
import 'package:alquran_app/src/features/surah/presentation/bloc/surah/surah_bloc.dart';
import 'package:alquran_app/src/network/http_helper.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  // Bloc
  locator.registerFactory(() => SurahBloc(locator(), locator()));
  locator.registerFactory(() => DetailSurahBloc(locator()));

  // Respository
  locator.registerLazySingleton<SurahRepository>(() => SurahRepositoryImpl(
        locator(),
        surahDatasource: locator(),
      ));

  // Usescase
  locator.registerLazySingleton(() => GetSurah(surahRepository: locator()));
  locator.registerLazySingleton(() => GetDetailSurah(surahRepository: locator()));

  // Datasource
  locator.registerLazySingleton<SurahDatasource>(() => SurahDataSourceImpl(locator()));

  // External
  final pref = await SharedPreferences.getInstance();
  locator.registerLazySingleton(() => pref);

  // Dio
  Dio dio = Dio();
  final httpHelper = HttpHelper(locator());
  // Register HttpHelper
  locator.registerLazySingleton(() => httpHelper);
  // Register Dio interceptor
  locator.registerLazySingleton(() {
    dio.interceptors.add(httpHelper.getDioInterceptor());
    return dio;
  });

  // Isar db
  locator.registerLazySingleton(() => IsarService());
  locator.registerLazySingleton(() => SurahLocalDataService(locator()));
}
