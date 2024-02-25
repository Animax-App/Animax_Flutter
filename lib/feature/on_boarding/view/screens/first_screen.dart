import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_images.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/on_boarding_body.dart';

class OnBoardingFirstScreen extends StatelessWidget {
  const OnBoardingFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.onBoardingFirstScreenBackgroundColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          //Background image.
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: Image.asset(
              Assets.imagesOnBoardingImage1,
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
            ),
          ),
          //=======================================
          //Bluring the whole screen.
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 1.6,
                sigmaY: 1.6,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ),
          ),
          //=======================================
          //Body with shadow.
          //---------------------
          //Black shadow.
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 428.h,
            padding: EdgeInsets.only(
              right: 32.w,
              top: 140.h,
              left: 32.w,
              bottom: 50.h,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.35),
                  Colors.black.withOpacity(0.4),
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [
                  0.3,
                  0.7,
                  1,
                ],
              ),
            ),
            //====================================
            //Body.
            child: const OnBoardingBody(
              headerText: 'Welcome to AnimaX',
              descriptionText:
                  'The best-streaming anime app of the century to entertain you every day',
              buttonText: 'Next',
            ),
          ),
          //=======================================
        ],
      ),
    );
  }
}
