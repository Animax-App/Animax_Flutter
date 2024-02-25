import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/on_boarding_body.dart';

class OnBoardingSecondScreen extends StatelessWidget {
  const OnBoardingSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: 150.h,
          right: 32.w,
          left: 32.w,
          bottom: 50.h,
        ),
        child: Column(
          children: [
            Image.asset(
              Assets.imagesOnBoardingImage2,
            ),
            SizedBox(height: 155.h),
            const Expanded(
              child: OnBoardingBody(
                headerText: 'Download and watch offline',
                descriptionText: 'Always have something to watch offline',
                buttonText: 'Next',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
