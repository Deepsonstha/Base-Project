import 'package:base_project/core/errors_handler/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type, Params> {
  Future<Either<AppErrorHandler, Type>> call(Params parms);
}
