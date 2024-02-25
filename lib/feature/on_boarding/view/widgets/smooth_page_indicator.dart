import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/theme/app_colors.dart';
import '../screens/on_boarding.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: SlideEffect(
        dotHeight: 8.w,
        dotWidth: 8.h,
        dotColor: Colors.white,
        activeDotColor: AppColors.primaryColor,
      ),
    );
  }
}
