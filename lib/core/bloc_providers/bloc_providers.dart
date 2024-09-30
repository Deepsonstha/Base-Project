import 'package:base_project/core/dependency_injection/dependecy_injection.dart';
import 'package:base_project/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:base_project/features/see_testing/cubit/sse_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocProvidersList {
  static final blocProviderList = [
    BlocProvider<ProfileBloc>(create: (context) => locator<ProfileBloc>()..add(const FetchProfileEvent())),
    BlocProvider<SseCubit>(create: (context) => locator<SseCubit>()),
  ];
}
