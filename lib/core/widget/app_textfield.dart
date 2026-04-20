import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';

class AppTextfield extends StatelessWidget {
  final String? labelText;
  final String hintText;
  final TextEditingController textEditingController;
  const AppTextfield({super.key, required this.labelText, required this.hintText, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: TextField(
        controller: TextEditingController(),
        decoration: InputDecoration(
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 15.h,
          ),
          labelStyle: AppTextsytle.size14w500(
            color: AppColor.primary900,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xFF101828),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40), // 👈 pill shape
            borderSide: const BorderSide(color: AppColor.primary200),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: AppColor.secondary),
          ),
        ),
      ),
    );
  }
}
