import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonAction,
    required this.buttonStyle,
    required this.height,
    this.borderSide,
  });

  final String buttonText;
  final Color buttonColor;
  final TextStyle buttonStyle;
  final Function() buttonAction;
  final double height;
  final BorderSide? borderSide;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: MaterialButton(
        onPressed: buttonAction,
        padding: EdgeInsets.zero,
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.r),
          side: borderSide ??
              const BorderSide(
                width: 0,
                strokeAlign: 0,
                color: Colors.transparent,
              ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: buttonStyle,
          ),
        ),
      ),
    );
  }
}
