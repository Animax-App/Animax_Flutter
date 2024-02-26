import 'package:anime_app/feature/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../../feature/on_boarding/view/screens/first_screen.dart';
import '../../feature/on_boarding/view/screens/on_boarding.dart';
import '../../feature/on_boarding/view/screens/second_screen.dart';
import '../../feature/on_boarding/view/screens/third_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case Routes.onBoardingFirstScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingFirstScreen(),
        );
      case Routes.onBoardingSecondScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingSecondScreen(),
        );
      case Routes.onBoardingThirdScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingThirdScreen(),
        );
    }
    return null;
  }
}
