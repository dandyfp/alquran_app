import 'package:alquran_app/src/features/surah/domain/usecases/usecase.dart';
import 'package:alquran_app/src/network/api_error.dart';
import 'package:dartz/dartz.dart';

typedef FutureEither<T> = Future<Either<ApiError, T>>;
typedef FutureVoid = FutureEither<void>;
typedef UseCaseEither<T, R> = UseCase<Either<ApiError, T>, R>;
