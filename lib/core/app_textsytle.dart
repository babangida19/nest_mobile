import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';

class AppTextsytle {
  static TextStyle size36w500(
      {double fontSize = 36,
      FontWeight fontWeight = FontWeight.w500,
      Color color = AppColor.white}) {
    return TextStyle(
        fontSize: fontSize.sp, fontWeight: fontWeight, color: color);
  }

  static TextStyle size24wBold(
      {double fontSize = 24,
      FontWeight fontWeight = FontWeight.bold,
      Color color = AppColor.white}) {
    return TextStyle(
        fontSize: fontSize.sp, fontWeight: fontWeight, color: color);
  }
  static TextStyle size20w500(
      {double fontSize = 20,
      FontWeight fontWeight = FontWeight.w500,
      Color color = AppColor.primary}) {
    return TextStyle(
        fontSize: fontSize.sp, fontWeight: fontWeight, color: color);
  }

  static TextStyle size16w500(
      {double fontSize = 16,
      FontWeight fontWeight = FontWeight.w500,
      Color color = AppColor.white}) {
    return TextStyle(
        fontSize: fontSize.sp, fontWeight: fontWeight, color: color);
  }

  static TextStyle size16w400(
      {double fontSize = 16,
      FontWeight fontWeight = FontWeight.w400,
      Color color = AppColor.primary}) {
    return TextStyle(
        fontSize: fontSize.sp, fontWeight: fontWeight, color: color);
  }

  static TextStyle size14w500(
      {double fontSize = 14,
      FontWeight fontWeight = FontWeight.w500,
      Color color = AppColor.white}) {
    return TextStyle(
        fontSize: fontSize.sp, fontWeight: fontWeight, color: color);
  }
}
