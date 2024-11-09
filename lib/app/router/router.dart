import 'package:flutter_app_catbreeds/app/constant/navigator_key.dart';
import 'package:flutter_app_catbreeds/presentation/details_screen.dart';
import 'package:flutter_app_catbreeds/presentation/home_screen.dart';
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
      GoRoute(
        path: '/details',
        name: '/details',
        builder: (context, state) {
          final query = state.uri.queryParameters;
          Map<String, dynamic> data = {
            'description': query['description'],
            'country': query['country'],
            'temperament': query['temperament'],
            'breed': query['breed'],
            'intelligence': query['intelligence'],
            'url_image': query['url_image'],
            'life_span': query['life_span'],
            'adaptability': query['adaptability'],
          };
          return DetailsScreen(
            data: data,
          );
        },
      ),
    ],
  );
}
