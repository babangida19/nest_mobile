import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
import 'package:nest_mobile/core/widget/app_button.dart';
import 'package:nest_mobile/core/widget/app_otp_view.dart';
import 'package:nest_mobile/feature/auth/widget/auth_appbar.dart';

class SignUpOtpView extends StatelessWidget {
  const SignUpOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AuthAppbar(
              title: "OTP ",
              subtitle:
                  "Enter the 5 digit code we sent to your email. joewil123@gmail.com",
            ),
            SizedBox(height: 16.h),
            AppOtpField(pinController: TextEditingController()),
            SizedBox(height: 18.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("I didn’t receive any code.",
                    style: AppTextsytle.size16w400(color: AppColor.primary700)),
                Text("Resend OTP",
                    style:
                        AppTextsytle.size16w500(color: AppColor.primary1000)),
              ],
            ),
            SizedBox(height: 100.h),
            AppButton(title: "Verify", onTap: () {}),
            SizedBox(height: 16.h)
          ],
        ),
      )),
    );
  }
}
