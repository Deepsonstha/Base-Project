import 'dart:developer';

import 'package:base_project/config/routes/routes.dart';
import 'package:base_project/core/network_services/remote_service/api_network_handler.dart';
import 'package:base_project/core/network_services/remote_service/generic_api_handler.dart';
import 'package:base_project/features/profile/injection/profile_injection.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.I;
Future<void> setUpLocator() async {
  log('locator regiters', name: "location register");
  locator.registerLazySingleton(() => AppRoute());
  locator.registerLazySingleton(() => ApiNetworkHandler());
  locator.registerLazySingleton(() => ApiClient());
  ProfileInjection.register();
}
