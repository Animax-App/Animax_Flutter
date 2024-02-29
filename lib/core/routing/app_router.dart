import 'package:anime_app/feature/interests/logic/cubit/interests_cubit.dart';
import 'package:anime_app/feature/interests/view/screens/interests_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          builder: (context) => const OnBoarding(),
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
      case Routes.interestsScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<InterestsCubit>(
            create: (context) => InterestsCubit(),
            child: const InterestsScreen(),
          ),
        );
    }
    return null;
  }
}
