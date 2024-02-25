import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../screens/on_boarding.dart';
import 'smooth_page_indicator.dart';

class OnBoardingBody extends StatelessWidget {
  final String headerText, descriptionText, buttonText;

  const OnBoardingBody({
    super.key,
    required this.headerText,
    required this.descriptionText,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          textAlign: TextAlign.center,
          headerText,
          style: AppTextStyles.robotoWhite32Black,
        ),
        SizedBox(height: 5.h),
        Text(
          textAlign: TextAlign.center,
          descriptionText,
          style: AppTextStyles.robotoWhite16Medium,
        ),
        SizedBox(height: 64.h),
        const PageIndicator(),
        SizedBox(height: 24.h),
        CustomButton(
          buttonText: buttonText,
          buttonColor: AppColors.primaryColor,
          buttonAction: () {
            controller.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          },
          buttonStyle: AppTextStyles.robotoWhite16Medium,
        ),
      ],
    );
  }
}
