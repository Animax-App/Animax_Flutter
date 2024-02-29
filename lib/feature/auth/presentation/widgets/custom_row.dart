import 'package:anime_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRow extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final Widget? screen;

  const CustomRow(
      {super.key,
        required this.textOne,
        required this.textTwo,
        this.screen});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 12.0.w),
      child: Row(
        children: [
          Text(
            textOne,
            style: const TextStyle(color: Colors.grey, fontFamily: "Inter"),
          ),
          const SizedBox(
            width: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return screen!;
              }));
            },
            child: Text(
              textTwo,
              style: const TextStyle(
                  color: AppColors.primaryColor, fontFamily: "Inter"),
            ),
          )
        ],
      ),
    );
  }
}