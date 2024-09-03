// import 'package:capitalmarket/core/network_services/local_service/hive/hive_boxname.dart';
// import 'package:capitalmarket/core/network_services/local_service/hive/hive_keys.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// class AppSettingHiveService {
//   //* LANGUAGE SETTER AND GETTER

//   static Future<void> setLanguage({required String languageCode}) async {
//     var box = Hive.box(HiveBoxesName.languageCodeBox);
//     box.put(HiveKeys.languageKey, languageCode);
//   }

//   static String? getLanguage() {
//     var box = Hive.box(HiveBoxesName.languageCodeBox);
//     return box.get(HiveKeys.languageKey);
//   }

//   //* THEME SETTER AND GETTER
//   static Future<void> setTheme({required bool isThemeDark}) async {
//     var themeBoxVar = Hive.box(HiveBoxesName.themeBox);
//     await themeBoxVar.put(HiveKeys.themeKey, isThemeDark);
//   }

//   static bool getTheme() {
//     var themeBoxVar = Hive.box(HiveBoxesName.themeBox);
//     return themeBoxVar.get(HiveKeys.themeKey, defaultValue: false);
//   }
// }
