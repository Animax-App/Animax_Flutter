import 'package:anime_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDivider extends StatelessWidget {
  final String text;

  const CustomDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.33,
          child: Divider(
            height: 25.0.h,
            color: AppColors.linesColor,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: "Roboto",
              fontSize: 20.sp),
        ),
        SizedBox(
          width: 10.w,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.35,
          child: Divider(
            height: 25.h,
            color: AppColors.linesColor,
          ),
        ),
      ],
    );
  }
}
