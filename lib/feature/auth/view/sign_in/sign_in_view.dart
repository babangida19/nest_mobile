import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
import 'package:nest_mobile/core/widget/app_button.dart';
import 'package:nest_mobile/core/widget/app_textfield.dart';
import 'package:nest_mobile/feature/auth/widget/auth_appbar.dart';
import 'package:nest_mobile/gen/assets.gen.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthAppbar(
              title: "Welcome Back!",
              subtitle: "Sign in to Nest, We miss you",
            ),
            SizedBox(height: 16.h),
            AppTextfield(
              labelText: 'Email address',
              hintText: 'Enter your email',
              textEditingController: TextEditingController(),
            ),
            AppTextfield(
              labelText: 'Password',
              hintText: 'Enter your password',
              textEditingController: TextEditingController(),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text("Reset Password?",
                  style: AppTextsytle.size16w500(
                      color: AppColor.primary1000, fontWeight: FontWeight.w600)),
            ),
            SizedBox(height: 32.h),
            
            AppButton(title: "Sign In", onTap: () {}),
            SizedBox(height: 16.h),
            Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: "Not registered yet? ",
                    style: AppTextsytle.size16w500(color: AppColor.primary500),
                    children: [
                      TextSpan(
                        text: "Sign Up",
                        style: AppTextsytle.size16w500(
                            color: AppColor.primary1000),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60.h),
                Text("Continue with", style: AppTextsytle.size16w400()),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.icons.iconGoogle.svg(),
                    SizedBox(width: 12.w),
                    Assets.icons.iconApple.svg(),
                  ],
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
