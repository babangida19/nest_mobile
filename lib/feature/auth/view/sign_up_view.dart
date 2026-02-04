import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
import 'package:nest_mobile/core/widget/app_button.dart';
import 'package:nest_mobile/core/widget/app_textfield.dart';
import 'package:nest_mobile/feature/auth/widget/auth_appbar.dart';
import 'package:nest_mobile/gen/assets.gen.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
              title: "Create account",
              subtitle: "Sign up with Nest, your one stop for properties",
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Expanded(
                  child: AppTextfield(
                    labelText: 'First Name',
                    hintText: 'Wilkins',
                    textEditingController: TextEditingController(),
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: AppTextfield(
                    labelText: 'Last Name',
                    hintText: 'Smith',
                    textEditingController: TextEditingController(),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.h),
            AppTextfield(
              labelText: 'Enter your password',
              hintText: 'Password',
              textEditingController: TextEditingController(),
            ),
            AppTextfield(
              labelText: 'Confirm Password',
              hintText: 'Re enter your password',
              textEditingController: TextEditingController(),
            ),
            AppButton(title: "Sign Up", onTap: () {}),
            SizedBox(height: 16.h),
            Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: AppTextsytle.size16w500(color: AppColor.primary500),
                    children: [
                      TextSpan(
                        text: "Sign In",
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
