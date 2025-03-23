import 'package:base_project/features/custom_showcase_view/my_showcase_view.dart';
import 'package:base_project/features/profile/presentation/pages/profile_page.dart';
import 'package:go_router/go_router.dart';
import 'package:showcaseview/showcaseview.dart';

class AppRoute {
  static const String homeRoute = "/home";
  static const String profileRoute = "/profile";
  static const String thirdRoute = "/third";
  static const String showCaseview = "/showCaseview";

  GoRouter router = GoRouter(
    initialLocation: profileRoute,
    routes: [
      GoRoute(
        path: profileRoute,
        builder: (context, state) {
          return const ProfileScreen();
        },
      ),

      GoRoute(
        path: showCaseview,
        builder: (context, state) {
          return ShowCaseWidget(
            builder: (context) => const MyHomePage(title: "My Home"),
          );
        },
      ),
      // GoRoute(
      //   path: profileRoute,
      //   builder: (context, state) {
      //     final person = state.extra as Person;
      //     return ProfilePage(
      //       person: person,
      //     );
      //   },
      //   routes: const [
      // GoRoute(
      //   path: 'details',
      //   builder: (context, state) {
      //     return const ProfileDetails();
      //   },
      //   // pageBuilder: (context, state) => CustomTransitionPage(
      //   //   child: const ProfileDetails(),
      //   //   transitionsBuilder: (context, animation, secondaryAnimation, child) {
      //   //     return SlideTransition(
      //   //       position: Tween<Offset>(
      //   //         begin: const Offset(1.0, 0.0), // Slide from right to left
      //   //         end: Offset.zero,
      //   //       ).chain(CurveTween(curve: Curves.easeIn)).animate(animation),
      //   //       child: child,
      //   //     );
      //   //   },
      //   // ),
      // ),
      // ],
      // ),
      // GoRoute(
      //   path: '$thirdRoute/:userId',
      //   builder: (context, state) {
      //     final id = state.pathParameters['userId'];
      //     return ThirdPage(
      //       id: id,
      //     );
      //   },
      // ),
    ],
  );
}
