import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/on_boarding_texts.dart';

class OnBoardingThirdScreen extends StatelessWidget {
  const OnBoardingThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: 90.h,
          right: 0,
          left: 0,
        ),
        child: Column(
          children: [
            Image.asset(
              Assets.imagesOnBoardingImage3,
            ),
            SizedBox(height: 85.h),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 0,
                  right: 32.w,
                  left: 32.w,
                  bottom: 0,
                ),
                child: const OnBoardingTexts(
                  headerText: 'Watch everywhere',
                  descriptionText:
                      'Stream on your phone, tablet, laptop\nand more',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
