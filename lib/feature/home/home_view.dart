
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
import 'package:nest_mobile/gen/assets.gen.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Assets.images.imageUserProfile.image(),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Joseph Wilkins",
                    style:
                        AppTextsytle.size16w500(color: AppColor.primary1000),
                  ),
                  Row(
                    children: [
                      Assets.icons.iconLocation.svg(),
                      SizedBox(width: 4.w),
                      Text(
                        "Lagos, Nigeria",
                        style: AppTextsytle.size14w500(
                            color: AppColor.primary600),
                      ),
                      Icon(Icons.keyboard_arrow_down_outlined,
                          color: AppColor.primary600)
                    ],
                  ),
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColor.primary300),
                ),
                child: Assets.icons.iconNotification.svg(),
              )
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000.r),
              border: Border.all(color: AppColor.primary100),
              color: AppColor.primary200
            ),
          )
        ],
      ),
    );
  }
}
