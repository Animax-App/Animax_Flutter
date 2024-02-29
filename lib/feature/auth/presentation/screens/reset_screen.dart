import 'package:anime_app/core/helpers/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../../core/helpers/app_text.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class ResetScreen extends StatelessWidget {
  ResetScreen({super.key});

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.mainColor,
        appBar: AppBar(
          leading: const BackButton(color: Colors.white),
          backgroundColor: AppColors.mainColor,
          elevation: 0.0,
        ),
        body: Center(
          child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  children: [
                    Image.asset(Assets.reset),
                     const Text(AppText.resetPassword,
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                    const Text(
                      AppText.nowyoucanresetyouroldPassword,
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.grayColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTFF(
                      suffixIcon: const Icon(
                        Icons.visibility,
                        color: AppColors.primaryColor,
                      ),
                      hintText: "new password",
                      kbType: TextInputType.visiblePassword,
                      controller: passwordController, onChanged: (value) {  }, validator: (value) {  },),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTFF(
                      suffixIcon: const Icon(
                        Icons.visibility,
                        color: AppColors.primaryColor,
                      ),
                      hintText: "confirm password",
                      kbType: TextInputType.visiblePassword,
                      controller: confirmpasswordController, onChanged: (value) {  }, validator: (value) {  },),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: MaterialButton(
                        onPressed: () {
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              backgroundColor: AppColors.mainColor,
                              actions: <Widget>[
                                Center(
                                  child: SizedBox(
                                    width: 310,
                                    height: 410,
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        Image.asset(Assets.successVerify),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          AppText.congratulation,
                                          style: TextStyle(
                                              fontFamily: "Inter",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: const LinearGradient(
                                                colors: [
                                                  Colors.white,
                                                  AppColors.primaryColor
                                                ],
                                              ).colors[1]),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          AppText
                                              .yourAccountisreadytouseyouwillbedirectedtothehomepageinafewseconds,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: "Inter",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.grayColor),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        SpinKitCircle(
                                          color: const LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Colors.white,
                                              AppColors.primaryColor,
                                            ],
                                          ).colors[1],
                                          size: 60.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        color: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)),
                        child:  const Text(
                          AppText.reset,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Inter",
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: MaterialButton(
                        onPressed: () {},
                        color: AppColors.linesColor,
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
        ));
  }
}