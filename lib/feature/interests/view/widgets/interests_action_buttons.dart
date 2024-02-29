import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';

class InterestsActionButtons extends StatelessWidget {
  const InterestsActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              buttonText: 'Skip',
              buttonColor: AppColors.secondaryColor,
              buttonAction: () {},
              buttonStyle: AppTextStyles.robotoWhite16Bold,
              height: 42.h,
            ),
          ),
          SizedBox(width: 24.w),
          Expanded(
            child: CustomButton(
              buttonText: 'Continue',
              buttonColor: AppColors.primaryColor,
              buttonAction: () {},
              buttonStyle: AppTextStyles.robotoWhite16Bold,
              height: 42.h,
            ),
          ),
        ],
      ),
    );
  }
}
