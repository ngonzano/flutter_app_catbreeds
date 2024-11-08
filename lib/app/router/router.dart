import 'package:flutter_app_catbreeds/app/constant/navigator_key.dart';
import 'package:flutter_app_catbreeds/app/router/home/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter appRoute(ref) {
  return GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
