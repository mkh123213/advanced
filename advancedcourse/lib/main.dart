import 'package:advancedcourse/core/di/get_it.dart';
import 'package:advancedcourse/core/routing/app_router.dart';
import 'package:advancedcourse/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  // LOG IN FROM MAIN
  setupGetIt();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
