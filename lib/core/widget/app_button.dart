import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';

enum AppButtonType { full, border, text }

class AppButton extends StatelessWidget {
  final bool isLoading;
  final String title;
  final Function() onTap;
  final double width;
  final double height;
  final double elevation;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final AppButtonType buttonType;
  final double borderRadius;
  final Widget? prefixIcon;
  final Color borderColor;
  final Color? borderBGcolor;
  final bool isEnabled;

  const AppButton(
      {Key? key,
      this.isLoading = false,
      required this.title,
      required this.onTap,
      this.elevation = 0,
      this.width = double.infinity,
      this.height = 45,
      this.fontSize = 14,
      this.prefixIcon,
      this.borderBGcolor,
      this.backgroundColor = AppColor.secondary,
      this.textColor = AppColor.primary,
      this.borderRadius = 12,
      this.borderColor = AppColor.secondary,
      this.buttonType = AppButtonType.full,
      this.isEnabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bgColor = buttonType == AppButtonType.text
        ? Colors.transparent
        : buttonType == AppButtonType.border
            ? borderBGcolor ?? Colors.red
            : backgroundColor;

    final hasBorder = buttonType == AppButtonType.border;

    return Material(
      color: (bgColor.withOpacity(isEnabled ? 1 : 0.3)),
      elevation: elevation,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: () {
          if (isEnabled) {
            onTap();
          }
        },
        splashColor: Colors.white24,
        highlightColor: Colors.black12,
        child: Container(
          width: width.w,
          height: height.h,
          decoration: BoxDecoration(
            border: hasBorder
                ? Border.all(color: borderColor)
                : Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(borderRadius),
            color: bgColor
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          alignment: Alignment.center,
          child: isLoading
              ? SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: const CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 1.5,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (prefixIcon != null) ...[
                      prefixIcon!,
                      SizedBox(width: 8.w),
                    ],
                    Text(
                      title,
                      style: AppTextsytle.size16w500(
                        fontSize: fontSize.sp,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
