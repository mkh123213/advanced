import 'package:advancedcourse/core/routing/routes.dart';
import 'package:advancedcourse/features/log_in/presentation/log_in_view.dart';
import 'package:advancedcourse/features/on_boarding/presentation/on_bording_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBordingView(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LogInView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
