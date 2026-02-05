import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
import 'package:nest_mobile/core/widget/app_button.dart';
import 'package:nest_mobile/core/widget/app_otp_view.dart';
import 'package:nest_mobile/core/widget/app_textfield.dart';
import 'package:nest_mobile/feature/auth/widget/auth_appbar.dart';
import 'package:nest_mobile/gen/assets.gen.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

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
              labelText: 'Password',
              hintText: 'Enter your password',
              textEditingController: TextEditingController(),
            ),
            AppTextfield(
              labelText: 'Confirm Password',
              hintText: 'Confirm your password',
              textEditingController: TextEditingController(),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                dense: true,
                contentPadding: EdgeInsets.zero,
                leading: Assets.icons.iconCharmTick.svg(),
                horizontalTitleGap: 4,
                minLeadingWidth: 0,
                title: Text(
                  "At least 8 to 12 characters",
                  style: AppTextsytle.size14w400(
                    color: AppColor.primary700,
                  ),
                ),
              ),
            ),

            ListTile(
              contentPadding: const EdgeInsets.only(bottom: 4),
              leading: Assets.icons.iconCharmTick.svg(),
              horizontalTitleGap: 4,
              minLeadingWidth: 0,
              title: Text(
                "Special character (@#<>()(&*|})",
                style: AppTextsytle.size14w400(
                  color: AppColor.primary700,
                ),
              ),
            ),
            ListTile(
                contentPadding: const EdgeInsets.only(bottom: 4),
                leading: Assets.icons.iconCharmTick.svg(),
                horizontalTitleGap: 4,
                minLeadingWidth: 0,
                title: Text(
                  "One uppercase (ABCD)",
                  style: AppTextsytle.size14w400(
                    color: AppColor.primary700,
                  ),
                )),
            ListTile(
                contentPadding: const EdgeInsets.only(bottom: 4),
                leading: Assets.icons.iconCharmTick.svg(),
                horizontalTitleGap: 4,
                minLeadingWidth: 0,
                title: Text(
                  "One number (1234)",
                  style: AppTextsytle.size14w400(
                    color: AppColor.primary700,
                  ),
                )),
            // Spacer(),
            SizedBox(height: 32.h),
            AppButton(title: "Reset Password", onTap: () {}),
            SizedBox(height: 16.h),
          ],
        ),
      )),
    );
  }
}
