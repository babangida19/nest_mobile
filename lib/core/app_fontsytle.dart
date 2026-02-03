import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';

class AppFontsytle {
 static TextStyle size24wBold(
      {double fontSize = 24,
      FontWeight fontWeight = FontWeight.bold,
      Color color = AppColor.white}) {
    return TextStyle(
        fontSize: fontSize.sp, fontWeight: fontWeight, color: color);
  }

}
