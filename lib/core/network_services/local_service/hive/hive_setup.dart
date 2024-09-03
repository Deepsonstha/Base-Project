import 'package:base_project/core/network_services/local_service/hive/hive_boxname.dart';
import 'package:base_project/features/profile/data/models/address_model.dart';
import 'package:base_project/features/profile/data/models/company_model.dart';
import 'package:base_project/features/profile/data/models/geo_model.dart';
import 'package:base_project/features/profile/data/models/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

Future<void> setUpHive() async {
  var dir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(dir.path);

  // Registering adapters
  Hive
    ..registerAdapter(AddressModelAdapter())
    ..registerAdapter(CompanyModelAdapter())
    ..registerAdapter(GeoModelAdapter())
    ..registerAdapter(UserModelAdapter());

  await Hive.openBox<UserModel>(HiveBoxesName.userBox);
}
