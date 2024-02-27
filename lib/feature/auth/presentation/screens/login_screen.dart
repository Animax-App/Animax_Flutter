import 'package:anime_app/core/helpers/app_images.dart';
import 'package:anime_app/core/helpers/app_text.dart';
import 'package:anime_app/core/helpers/spacing.dart';
import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/feature/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:anime_app/feature/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/icon_row.dart';
import '../widgets/lines.dart';
import '../widgets/new_to_anime.dart';
import '../widgets/remeberMe.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailControl = TextEditingController();
    TextEditingController passwordControl = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(Assets.imagesLogin),
                  Text(
                    AppText.welcomeLogin,
                    style: AppTextStyles.robotoWhite20Semi,
                  ),
                  verticalSpace(15.h),
                  CustomTFF(
                    hintText: 'Email',
                    kbType: TextInputType.emailAddress,
                    controller: emailControl,
                    onChanged: (value) {},
                    validator: (value) {},
                  ),
                  verticalSpace(15.h),
                  CustomTFF(
                    hintText: 'Password',
                    kbType: TextInputType.visiblePassword,
                    controller: passwordControl,
                    onChanged: (value) {},
                    validator: (value) {},
                  ),
                  const RememberMe(),
                  CustomButton(
                    buttonText: AppText.login,
                    buttonColor: AppColors.primaryColor,
                    buttonAction: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    buttonStyle: AppTextStyles.robotoWhite16Medium,
                  ),
                  verticalSpace(4.h),
                  const NewToAnime(),
                  verticalSpace(10.h),
                  const CustomDivider(
                    text: AppText.orWith,
                  ),
                  verticalSpace(10.h),
                  const IconRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
