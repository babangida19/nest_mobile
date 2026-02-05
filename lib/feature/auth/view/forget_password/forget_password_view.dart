import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/widget/app_button.dart';
import 'package:nest_mobile/core/widget/app_textfield.dart';
import 'package:nest_mobile/feature/auth/widget/auth_appbar.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

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
              title: "Forgot Password",
              subtitle:
                  "Please provide the email you used to register your account",
            ),
            SizedBox(height: 16.h),
            AppTextfield(
              labelText: 'Email address',
              hintText: 'Enter your email',
              textEditingController: TextEditingController(),
            ),
            Spacer(),
            AppButton(title: "Proceed", onTap: () {}),
            SizedBox(height: 16.h),
          ],
        ),
      )),
    );
  }
}
