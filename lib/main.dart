import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/feature/auth/view/sign_in_view.dart';
import 'package:nest_mobile/feature/auth/view/sign_up_view.dart';
import 'package:nest_mobile/onboarding_view.dart';
import 'package:nest_mobile/splash_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Nest',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: AppColor.white,
              fontFamily: GoogleFonts.spaceGrotesk().fontFamily,
            ),
            home: SignInView(),
          );
        });
  }
}
