import 'package:base_project/config/routes/routes.dart';
import 'package:base_project/core/bloc_providers/bloc_providers.dart';
import 'package:base_project/core/dependency_injection/dependecy_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpLocator();

  runApp(
    MultiBlocProvider(
      providers: BlocProvidersList.blocProviderList,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRoute _appRoute = locator<AppRoute>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: MediaQuery.of(context).size,
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "Base Project",
        routerDelegate: _appRoute.router.routerDelegate,
        routeInformationParser: _appRoute.router.routeInformationParser,
        routeInformationProvider: _appRoute.router.routeInformationProvider,
      ),
    );
  }
}
