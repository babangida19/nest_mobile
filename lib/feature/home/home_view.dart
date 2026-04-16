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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  borderRadius: BorderRadius.circular(8.r),
                  color: AppColor.secondary),
            ),
            Row(
              children: [
                Text(
                  "Apartment",
                  style: AppTextsytle.size16w500(color: AppColor.primary),
                ),
                Spacer(),
                Text(
                  "See all",
                  style: AppTextsytle.size16w500(color: AppColor.primary).copyWith(
                    decoration: TextDecoration.underline,
                    decorationColor: AppColor.secondary
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.h),
            ApartmentCard(),
            
          ],
        ),
      ),
    );
  }
}

class ApartmentCard extends StatelessWidget {
  const ApartmentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
          border: Border.all(color: AppColor.primary200)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Image.asset(
              Assets.images.imageHouse.path,
              height: 144.h,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 16.h),
          Text("The Ivory Arch",
              style: AppTextsytle.size14w500(color: AppColor.primary)),
          SizedBox(height: 2.h),
          Row(
            children: [
              Assets.icons.iconLocation.svg(color: AppColor.neutral400),
              SizedBox(width: 2.w),
              Text(
                "Victoria Island, Lagos",
                style: AppTextsytle.size14w400(color: AppColor.neutral400),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: List.generate(3, (i) {
              return Container(
                margin: EdgeInsets.only(right: 12.w),
                padding: EdgeInsets.symmetric(vertical: 6.w, horizontal: 8.w),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColor.primary300),
                    borderRadius: BorderRadius.circular(8.r)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Assets.icons.iconBath.svg(),
                    SizedBox(width: 8.w),
                    Text(
                      "x2",
                      style:
                          AppTextsytle.size12w500(color: AppColor.primary600),
                    )
                  ],
                ),
              );
            }),
          ),
          SizedBox(height: 16.h),
          RichText(
            text: TextSpan(
                text: "₦80,000 /",
                style: AppTextsytle.size20w500(),
                children: [
                  TextSpan(
                    text: " Month",
                    style: AppTextsytle.size12w500(),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
