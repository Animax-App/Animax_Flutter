import 'package:anime_app/core/helpers/app_text.dart';
import 'package:anime_app/feature/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/icon_row.dart';
import '../widgets/lines.dart';
import '../widgets/new_to_anime.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailControl = TextEditingController();
    TextEditingController passwordControl = TextEditingController();
    TextEditingController usernameControl = TextEditingController();
    TextEditingController confirmPasswordControl = TextEditingController();
    TextEditingController phoneNumberControl = TextEditingController();
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 50.0.h),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset('assets/images/login.png'),
                    Text(AppText.welcome,
                        style: AppTextStyles.robotoWhite20Semi),
                    verticalSpace(15.h),
                    CustomTFF(
                      hintText: AppText.enterName,
                      kbType: TextInputType.name,
                      controller: usernameControl,
                      onChanged: (value) {},
                      validator: (value) {},
                    ),
                    verticalSpace(15.h),
                    CustomTFF(
                      hintText: AppText.enterEmail,
                      kbType: TextInputType.emailAddress,
                      controller: emailControl,
                      onChanged: (value) {},
                      validator: (value) {},
                    ),
                    verticalSpace(15.h),
                    CustomTFF(
                      hintText: AppText.enterPhone,
                      kbType: TextInputType.phone,
                      controller: phoneNumberControl,
                      onChanged: (value) {},
                      validator: (value) {},
                    ),
                    verticalSpace(15.h),
                    CustomTFF(
                      hintText: AppText.enterPassword,
                      kbType: TextInputType.visiblePassword,
                      controller: passwordControl,
                      onChanged: (value) {},
                      validator: (value) {},
                    ),
                    verticalSpace(15.h),
                    CustomTFF(
                      hintText: AppText.enterConfirmPassword,
                      kbType: TextInputType.visiblePassword,
                      controller: confirmPasswordControl,
                      onChanged: (value) {},
                      validator: (value) {},
                    ),
                    verticalSpace(25.h),
                    CustomButton(
                      buttonText: AppText.signUp,
                      buttonColor: AppColors.primaryColor,
                      buttonAction: () {},
                      buttonStyle: AppTextStyles.robotoWhite16Medium,
                    ),
                    NewToAnime(
                      textOne: AppText.alreadyHaveAccount,
                      textTwo: AppText.login,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                    ),
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
        ));
  }
}
