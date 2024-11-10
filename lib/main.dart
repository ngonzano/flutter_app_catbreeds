import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_catbreeds/app/get_it/get_it.dart';

import 'package:flutter_app_catbreeds/app/router/router.dart';
import 'package:flutter_app_catbreeds/presentation/widget/build_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  setup();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouteProvider);
    return Platform.isIOS
        ? buildiOSScreen(context, appRouter)
        : buildAndroidScreen(context, appRouter);
  }
}
