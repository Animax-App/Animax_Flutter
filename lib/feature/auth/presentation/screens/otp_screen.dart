import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/feature/auth/presentation/screens/reset_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_text.dart';
import '../widgets/custom_row.dart';
import '../widgets/otp.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        backgroundColor: AppColors.mainColor,
        elevation: 0.0,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 150.h),
        child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  const Text(
                    AppText.send,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600),
                  ),
                   const Text(
                    AppText.enterCode,
                    style: TextStyle(
                        fontSize: 12,
                        color: AppColors.grayColor,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Otp(),
                      Otp(),
                      Otp(),
                      Otp(),
                      Otp(),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: CustomRow(
                      screen: OtpScreen(),
                      textOne: AppText.didNotreceivecode,
                      textTwo: AppText.resend,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResetScreen(),
                            ));
                      },
                      color: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)),
                      child: const Text(
                        AppText.confirm,
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
            )),
      ),
    );
  }
}