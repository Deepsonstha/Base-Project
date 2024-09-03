import 'package:base_project/core/errors_handler/error_handler.dart';
import 'package:base_project/core/network_services/local_service/hive/hive_boxname.dart';
import 'package:base_project/features/profile/data/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ProfileLocalDatasource {
  static Future<Either<AppErrorHandler, void>> saveUserData({required List<UserModel> users}) async {
    try {
      final box = Hive.box<UserModel>(HiveBoxesName.userBox);

      // Clear the box before inserting new data
      await box.clear();

      await box.addAll(users);

      return right(null);
    } catch (e) {
      return left(AppErrorHandler(message: e.toString()));
    }
  }

  static Future<Either<AppErrorHandler, List<UserModel>>> getUserModelList() async {
    try {
      final box = Hive.box<UserModel>(HiveBoxesName.userBox);
      final userlist = box.values.toList();

      return right(userlist);
    } catch (e) {
      return left(AppErrorHandler(message: e.toString()));
    }
  }
}
