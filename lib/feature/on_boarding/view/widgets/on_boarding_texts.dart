import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_styles.dart';

class OnBoardingTexts extends StatelessWidget {
  final String headerText, descriptionText;

  const OnBoardingTexts({
    super.key,
    required this.headerText,
    required this.descriptionText,
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
      ],
    );
  }
}
