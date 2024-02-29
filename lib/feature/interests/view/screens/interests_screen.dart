import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../logic/cubit/interests_cubit.dart';
import '../widgets/interests_action_buttons.dart';
import '../widgets/interests_button.dart';

class InterestsScreen extends StatelessWidget {
  const InterestsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var interestCubit = BlocProvider.of<InterestsCubit>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          'Choose Your interest',
          style: AppTextStyles.interWhite20Medium,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 16.h,
            right: 16.w,
            left: 16.w,
            bottom: 32.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose you interests and get the best anime\nrecommendation. Don’t worry, You can always\nchange it later.',
                style: AppTextStyles.interWhite14Regular,
              ),
              SizedBox(height: 40.h),
              InterestsButtons(interestCubit: interestCubit),
              const InterestsActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
