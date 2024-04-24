import 'package:book_app/config/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp.router(
        title: 'Book App',
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      ),
    ),
  );
}
