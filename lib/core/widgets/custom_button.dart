import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonAction,
    required this.buttonStyle,
  });

  final String buttonText;
  final Color buttonColor;
  final TextStyle buttonStyle;
  final Function() buttonAction;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: MaterialButton(
          onPressed: buttonAction,
          color: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.r),
          ),
          child: Text(
            buttonText,
            style: buttonStyle,
          ),
        ),
      ),
    );
  }
}
