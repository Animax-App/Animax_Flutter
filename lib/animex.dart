import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';

class AnimeX extends StatelessWidget {
  const AnimeX({super.key});

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
          useMaterial3: true,
        ),
      ),
    );
  }
}
