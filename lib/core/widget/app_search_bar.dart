import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
import 'package:nest_mobile/gen/assets.gen.dart';

class AppSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final VoidCallback? onFilterTap;

  const AppSearchBar({
    super.key,
    required this.controller,
    this.hint = 'Search',
    this.onFilterTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(40.r),
        border: Border.all(color: AppColor.primary100),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: AppColor.primary600, size: 20.sp),
          SizedBox(width: 8.w),
          Expanded(
            child: TextField(
              controller: controller,
              style: AppTextsytle.size14w400(color: AppColor.primary),
              decoration: InputDecoration(
                isCollapsed: true,
                border: InputBorder.none,
                hintText: hint,
                hintStyle: AppTextsytle.size14w400(color: AppColor.primary600),
              ),
            ),
          ),
          if (onFilterTap != null) ...[
            SizedBox(width: 8.w),
            GestureDetector(
              onTap: onFilterTap,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: AppColor.secondary,
                  borderRadius: BorderRadius.circular(1000.r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Assets.icons.iconFilter.svg(),
                    SizedBox(width: 6.w),
                    Text(
                      'Filter',
                      style: AppTextsytle.size12w500(color: AppColor.primary),
                    ),
                  ],
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
