import 'package:flutter/material.dart';
import '../../../../core/helpers/app_text.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../screens/forgot_password_screen.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Checkbox(
          activeColor: AppColors.primaryColor,

          checkColor: Colors.white,
          value: value,
          onChanged: (bool? value) {
            setState(() {
              this.value = value!;
            });
          },
        ),
        Text(AppText.rememberMe,
            style: AppTextStyles.robotoGray12Medium),
        const Spacer(),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                    const ForgetPasswordScreen()));
          },
          child: Text(
            AppText.forgot,
            style: AppTextStyles.robotoGray12Medium,
          ),
        ),
      ],
    );
  }
}
