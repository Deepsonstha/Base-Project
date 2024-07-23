import 'package:base_project/features/profile/presentation/pages/profile_page.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static const String homeRoute = "/home";
  static const String profileRoute = "/profile";
  static const String thirdRoute = "/third";

  GoRouter router = GoRouter(
    initialLocation: profileRoute,
    routes: [
      GoRoute(
        path: profileRoute,
        builder: (context, state) {
          return const ProfileScreen();
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
