import 'package:anime_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/helpers/app_text.dart';
import '../widgets/custom_text_form_field.dart';
import 'otp_screen.dart';

// ignore: must_be_immutable
class ForgotScreen extends StatelessWidget {
  ForgotScreen({super.key});

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        backgroundColor: AppColors.mainColor,
        elevation: 0.0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Center(
                child: Column(
                  children: [
                    Image.asset(Assets.imageForgotPassword),
                    const SizedBox(
                      height: 20,
                    ),
                     const Text(
                      AppText.forgotPassword,
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(AppText.dontWorry,
                        style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                    const SizedBox(
                      height: 25,
                    ),
                    CustomTFF(
                      hintText: "Enter your Email",
                      kbType: TextInputType.emailAddress,
                      controller: emailController, onChanged: (value) {  }, validator: (value) {  },),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const OtpScreen(),));
                        },
                        color: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        child: const Text(
                          AppText.send,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Roboto",
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: MaterialButton(
                        onPressed: () {},
                        color: AppColors.grayButton,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        child: const Text(
                          AppText.cancel,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Roboto",
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}