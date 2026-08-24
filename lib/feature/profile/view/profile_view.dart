import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
import 'package:nest_mobile/core/widget/app_button.dart';
import 'package:nest_mobile/gen/assets.gen.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Profile",
              style: AppTextsytle.size20w500(color: AppColor.primary1000),
            ),
            SizedBox(height: 20.h),
            Column(
              children: [
                CircleAvatar(
                  radius: 60,
                ),
                SizedBox(height: 8.h),
                Text(
                  "Joseph Wilkins",
                  style: AppTextsytle.size16w500(color: AppColor.primary1000),
                ),
                SizedBox(height: 4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.icons.iconLocation.svg(color: AppColor.neutral400),
                    SizedBox(width: 4.w),
                    Text(
                      "Victoria Island, Lagos",
                      style:
                          AppTextsytle.size14w400(color: AppColor.neutral400),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 32.h),
            _ProfileNavButton(
              title: 'Profile',
              ontap: () {},
              icon: Assets.icons.iconUserProfile.svg(),
            ),
            _ProfileNavButton(
              title: 'Notifications',
              ontap: () {},
              icon: Assets.icons.iconNotification.svg(),
            ),
            _ProfileNavButton(
              title: 'Support',
              ontap: () {},
              icon: Assets.icons.iconSupport.svg(),
            ),
            _ProfileNavButton(
              title: 'Terms and Privacy Policy',
              ontap: () {},
              icon: Assets.icons.iconTermAndCondition.svg(),
            ),
            SizedBox(height: 40.h),
            AppButton(
              title: "Sign Out",
              onTap: () {},
              buttonType: AppButtonType.border,
              borderColor: AppColor.primary200,
              borderBGcolor: AppColor.white,
            ),
            SizedBox(height: 12.h),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Nest Version V1.00",
                style: AppTextsytle.size12w400(color: AppColor.primary600),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ProfileNavButton extends StatelessWidget {
  const _ProfileNavButton(
      {required this.title, required this.icon, required this.ontap});
  final String title;
  final Widget icon;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.all(7),
              constraints: BoxConstraints(minHeight: 32.h, minWidth: 32.w),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColor.primary200),
              child: icon),
          SizedBox(width: 12.w),
          Text(
            title,
            style: AppTextsytle.size14w500(color: AppColor.primary1000),
          ),
          Spacer(),
          Icon(Icons.keyboard_arrow_right, color: AppColor.primary500)
        ],
      ),
    );
  }
}
