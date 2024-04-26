import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/routes/app_router.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp.router(
        title: 'Book App',
        theme: ThemeData(
          backgroundColor: AppColors.whiteColor,
          colorSchemeSeed: AppColors.whiteColor,
          primaryColorLight: AppColors.whiteColor,
          scaffoldBackgroundColor: AppColors.whiteColor,
          appBarTheme: AppBarTheme(
            elevation: 0,
            foregroundColor: AppColors.whiteColor,
            backgroundColor: AppColors.whiteColor,
            shadowColor: AppColors.whiteColor,
            surfaceTintColor: AppColors.whiteColor,
          ),
          useMaterial3: true,
          fontFamily: fontFireSans,
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      ),
    ),
  );
}
