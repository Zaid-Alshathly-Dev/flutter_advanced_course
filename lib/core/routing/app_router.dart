import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/routing/routes.dart';
import 'package:flutter_advanced_course/features/login/ui/widgets/login_screen.dart';
import 'package:flutter_advanced_course/features/onBoarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {

    final argument =settings.arguments;
    
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
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