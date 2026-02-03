import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
import 'package:nest_mobile/core/widget/app_bottomsheet.dart';
import 'package:nest_mobile/core/widget/app_button.dart';
import 'package:nest_mobile/gen/assets.gen.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/onboarding_image.jpg',
              ),
              fit: BoxFit.cover,
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(6, 9, 15, 0.45),
                Color.fromRGBO(6, 9, 15, 0.65),
                Color.fromRGBO(6, 9, 15, 0.85),
                Color(0xFF06090F),
              ],
              stops: [0.0, 0.4074, 0.6986, 0.8798],
            ),
            backgroundBlendMode: BlendMode.darken),
        //  foregroundDecoration:  BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //       colors: [
        //         Color.fromRGBO(6, 9, 15, 0.45),
        //         Color.fromRGBO(6, 9, 15, 0.65),
        //         Color.fromRGBO(6, 9, 15, 0.85),
        //         Color(0xFF06090F),
        //       ],
        //       stops: [0.0, 0.4074, 0.6986, 0.8798],
        //     )),

        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                Spacer(),
                Text("Find Your Perfect Space",
                    style: AppTextsytle.size36w500()),
                SizedBox(height: 20.h),
                Text(
                  "Discover houses, shops, hubs, and warehouses tailored to your needs.",
                  style: AppTextsytle.size14w500(color: AppColor.white),
                ),
                SizedBox(height: 40.h),
                AppButton(
                    title: "Gest started",
                    onTap: () {
                      customBottomSheet(
                          context,
                          Column(
                            children: [
                              AppButton(title: "Sign Up", onTap: () {}),
                              SizedBox(height: 16.h),
                              AppButton(
                                title: "Sign In",
                                onTap: () {},
                                backgroundColor: AppColor.primary,
                                textColor: AppColor.white,
                              ),
                              SizedBox(height: 40.h),
                              Text("Continue with",
                                  style: AppTextsytle.size16w400()),
                              SizedBox(height: 16.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Assets.icons.iconGoogle.svg(),
                                  SizedBox(width: 12.w),
                                  Assets.icons.iconApple.svg(),
                                ],
                              ),

                              // Container(
                              //   decoration: BoxDecoration(
                              //     color: Colors.white,
                              //     borderRadius:
                              //         BorderRadius.circular(16), // optional
                              //     boxShadow: [
                              //       BoxShadow(
                              //         offset: const Offset(0, 6.4),
                              //         blurRadius: 9.6,
                              //         spreadRadius: -6.4,
                              //         color: const Color(0x1A101828),
                              //       ),
                              //       BoxShadow(
                              //         offset: const Offset(0, 16),
                              //         blurRadius: 24,
                              //         spreadRadius: -4.8,
                              //         color: const Color(0x1A101828),
                              //       ),
                              //     ],
                              //   ),
                              //   child:
                              // )
                            ],
                          ));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
