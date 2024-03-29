import 'package:anime_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTFF extends StatelessWidget {
  final String hintText;
  final TextInputType kbType;
  final TextEditingController controller;
  final Icon? suffixIcon;
  final Function? onSubmit;
  final Function? onChange;
  final Function? onTap;
  final bool isPassword = false;
  final dynamic validate;
  const CustomTFF({
    Key? key,
    this.suffixIcon,
    required this.hintText,
    required this.kbType,
    required this.controller,
    this.onSubmit,
    this.onChange,
    this.onTap,
    this.validate, required Null Function(dynamic value) onChanged, required String? Function(dynamic value) validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(70),
            borderSide: const BorderSide(color: AppColors.primaryColor, width: 1.5),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(70),
            borderSide: const BorderSide(color: AppColors.primaryColor, width: 1.5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(70),
            borderSide: const BorderSide(color: AppColors.primaryColor, width: 1.5),
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(70)),
              borderSide: BorderSide(color: Colors.grey)),
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          hintStyle: const TextStyle(color: Colors.grey, fontFamily: "Inter"),
        ),
      ),
    );
  }
}