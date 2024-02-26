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

  static final robotoWhite20Semi = GoogleFonts.roboto(
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
    ),
  );
}
