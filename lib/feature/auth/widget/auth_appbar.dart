
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
import 'package:nest_mobile/gen/assets.gen.dart';

class AuthAppbar extends StatelessWidget {
  final String title;
  final String subtitle;
  const AuthAppbar({
    super.key, required this.title, required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Assets.icons.iconOutlineBack.svg()),
        SizedBox(height: 16.h),
        Text(title,
            style:
                AppTextsytle.size20w500(color: AppColor.primary1000)),
        Text(
          subtitle,
          style: AppTextsytle.size14w500(color: AppColor.primary700),
        ),
      ],
    );
  }
}
