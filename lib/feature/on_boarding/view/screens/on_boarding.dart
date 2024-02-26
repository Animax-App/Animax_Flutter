import 'package:anime_app/feature/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/smooth_page_indicator.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'third_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController(keepPage: true);
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
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            itemBuilder: (context, index) => pages[index],
            itemCount: pages.length,
            controller: controller,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 110.0.h),
            child: PageIndicator(controller: controller),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 42.0.h,
              left: 24.w,
              right: 24.w,
            ),
            child: CustomButton(
              buttonText: 'Get Started',
              buttonColor: AppColors.primaryColor,
              buttonAction: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              ),
              buttonStyle: AppTextStyles.robotoWhite16Medium,
            ),
          ),
        ],
      ),
    );
  }
}
