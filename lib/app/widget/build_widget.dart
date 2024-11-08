import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget buildAndroidScreen(BuildContext context, GoRouter appRouter) {
  return MaterialApp.router(
    title: 'Cadbreeds',
    theme: ThemeData(
      fontFamily: 'Adlinnaka',
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.purple,
        brightness: Brightness.light,
      ),
      useMaterial3: true,
      primaryColor: Colors.purple,
      primaryColorLight: Colors.purple.shade200,
      primaryColorDark: Colors.purple.shade700,
      scaffoldBackgroundColor: Colors.purple.shade50,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.purple,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontFamily: 'Adlinnaka',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.purple,
        textTheme: ButtonTextTheme.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.purple,
          backgroundColor: Colors.white,
        ),
      ),
      textTheme: TextTheme(
        labelSmall:
            TextStyle(color: Colors.purple.shade800, fontFamily: 'Adlinnaka'),
        labelMedium:
            TextStyle(color: Colors.purple.shade600, fontFamily: 'Adlinnaka'),
        labelLarge: const TextStyle(
            color: Colors.purple,
            fontFamily: 'Adlinnaka',
            fontSize: 32,
            fontWeight: FontWeight.bold),
      ),
      iconTheme: const IconThemeData(color: Colors.purple),
    ),
    debugShowCheckedModeBanner: false,
    routerConfig: appRouter,
  );
}

Widget buildiOSScreen(BuildContext context, GoRouter appRouter) {
  return CupertinoApp.router(
    title: 'Cadbreeds',
    theme: const CupertinoThemeData(
      primaryColor: Colors.deepPurple,
      scaffoldBackgroundColor: CupertinoColors.systemGroupedBackground,
      barBackgroundColor: Colors.deepPurple,
      textTheme: CupertinoTextThemeData(
        textStyle: TextStyle(fontFamily: 'Adlinnaka'),
        primaryColor: Colors.deepPurple,
        actionTextStyle: TextStyle(
          fontFamily: 'Adlinnaka',
          color: Colors.deepPurple,
        ),
        navTitleTextStyle: TextStyle(
          fontFamily: 'Adlinnaka',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        navLargeTitleTextStyle: TextStyle(
          fontFamily: 'Adlinnaka',
          fontSize: 34,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
        tabLabelTextStyle: TextStyle(
          fontFamily: 'Adlinnaka',
          fontSize: 14,
          color: Colors.deepPurple,
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
    routerConfig: appRouter,
  );
}
