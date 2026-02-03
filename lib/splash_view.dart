import 'package:flutter/material.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/gen/assets.gen.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Assets.icons.iconLogoLight.svg()),
        ],
      ),
    );
  }
}
