import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class FakeScreen extends StatelessWidget {
  const FakeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Center(
        child: Text(
          textAlign: TextAlign.center,
          'Fake Screen for Navigation',
          style: AppTextStyles.robotoWhite32Black.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
