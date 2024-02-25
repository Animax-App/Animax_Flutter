import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

final controller = PageController(keepPage: true);

class _OnBoardingState extends State<OnBoarding> {
  final List<Widget> pages = const [
    OnBoardingFirstScreen(),
    OnBoardingSecondScreen(),
    OnBoardingThirdScreen(),
  ];
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: PageView.builder(
        itemBuilder: (context, index) => pages[index],
        itemCount: pages.length,
        controller: controller,
      ),
    );
  }
}
