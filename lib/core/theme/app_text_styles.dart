import 'app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final robotoWhite32Black = GoogleFonts.roboto(
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: 32.sp,
      fontWeight: FontWeight.w900,
    ),
  );
  static final robotoWhite16Medium = GoogleFonts.roboto(
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
    ),
  );
  static final robotoWhite14Medium = GoogleFonts.roboto(
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: 14.sp,
      fontWeight: FontWeight.w500,
    ),
  );
  static final interWhite20Medium = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
    ),
  );
  static final interWhite14Regular = GoogleFonts.inter(
    textStyle: TextStyle(
      color: Colors.white.withOpacity(0.8),
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    ),
  );
  static final robotoWhite16Bold = GoogleFonts.roboto(
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
    ),
  );
  static final robotoOrange16Bold = GoogleFonts.roboto(
    textStyle: TextStyle(
      color: AppColors.primaryColor,
      fontSize: 16.sp,
      fontWeight: FontWeight.w700,
    ),
  );
}
