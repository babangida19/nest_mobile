import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AppOtpField extends StatelessWidget {
  const AppOtpField({
    super.key,
    required this.pinController,
    this.obscureText = true,
    this.onComplete,
    this.validator,
  });
  final bool obscureText;
  final TextEditingController pinController;
  final String? Function(String?)? validator;
  final Function(String)? onComplete;
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      enableActiveFill: true,
      validator: validator,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      appContext: context,
      length: 4,
      obscuringWidget:
          Text("●", style: AppTextsytle.size16w500(color: AppColor.primary)),
      obscureText: obscureText,
      keyboardType: TextInputType.number,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        activeColor: AppColor.secondary,
        activeFillColor: AppColor.white,
        inactiveColor: AppColor.secondary,
        selectedColor: AppColor.secondary,
        shape: PinCodeFieldShape.box,
        fieldWidth: 51.w,
        fieldHeight: 51.h,
        borderRadius: BorderRadius.circular(12.r),
        inactiveFillColor: AppColor.white,
        selectedFillColor: AppColor.secondary,
        borderWidth: 1,
      ),
      controller: pinController,
      onCompleted: onComplete,
      onChanged: (value) {},
      beforeTextPaste: (text) {
        return true;
      },
    );
  }
}
