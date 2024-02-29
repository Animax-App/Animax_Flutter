import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/interests_helper.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../logic/cubit/interests_cubit.dart';

class InterestsButtons extends StatelessWidget {
  const InterestsButtons({
    super.key,
    required this.interestCubit,
  });

  final InterestsCubit interestCubit;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: GridView.builder(
          itemCount: InterestsHelper.titles.length,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2.6 / 1,
            crossAxisSpacing: 12.w,
            mainAxisSpacing: 24.h,
          ),
          itemBuilder: (context, index) {
            return BlocBuilder<InterestsCubit, InterestsState>(
              builder: (context, state) => interestCubit.isPressed[index]
                  ? CustomButton(
                      buttonText: InterestsHelper.titles[index],
                      buttonColor: AppColors.primaryColor,
                      buttonAction: () {
                        interestCubit.interestNotChosen(index);
                      },
                      buttonStyle: AppTextStyles.robotoWhite16Bold,
                      height: 40.h,
                    )
                  : CustomButton(
                      buttonText: InterestsHelper.titles[index],
                      buttonColor: AppColors.scaffoldBackgroundColor,
                      buttonAction: () {
                        interestCubit.interestChosen(index);
                      },
                      buttonStyle: AppTextStyles.robotoOrange16Bold,
                      height: 40.h,
                      borderSide: const BorderSide(
                        strokeAlign: 1,
                        color: AppColors.primaryColor,
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
