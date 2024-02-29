import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/theme/app_colors.dart';

class AnimaX extends StatelessWidget {
  const AnimaX({super.key});

  @override
  Widget build(BuildContext context) {
    //Widget to make the application responsive.
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        initialRoute: 'onBoarding',
        onGenerateRoute: AppRouter().onGenerateRoute,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
          useMaterial3: true,
        ),
      ),
    );
  }
}
