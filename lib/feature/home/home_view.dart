import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
import 'package:nest_mobile/core/widget/app_search_bar.dart';
import 'package:nest_mobile/feature/property_detail/property_detail_view.dart';
import 'package:nest_mobile/gen/assets.gen.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
        child: SingleChildScrollView(
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
                        style: AppTextsytle.size16w500(
                            color: AppColor.primary1000),
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
              SizedBox(height: 16.w),
              AppSearchBar(
                controller: TextEditingController(),
                onFilterTap: () {},
              ),
              SizedBox(height: 16.h),
              PropertyFilter(),
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
                    style: AppTextsytle.size16w500(color: AppColor.primary)
                        .copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: AppColor.secondary),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              ApartmentCard(),
              Container(
                padding:
                    EdgeInsets.symmetric(vertical: 12.5.h, horizontal: 12.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(color: AppColor.primary200)),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(16.r),
                        child: Image.asset(
                          Assets.images.imageHouse.path,
                          height: 75.h,
                          width: 75.h,
                          fit: BoxFit.cover,
                        )),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "NexaHub",
                          style:
                              AppTextsytle.size14w500(color: AppColor.primary),
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          children: [
                            Assets.icons.iconLocation
                                .svg(color: AppColor.neutral400),
                            SizedBox(width: 2.w),
                            Text(
                              "Victoria Island, Lagos",
                              style: AppTextsytle.size14w400(
                                  color: AppColor.neutral400),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        RichText(
                          text: TextSpan(
                              text: "₦80,000 /",
                              style: AppTextsytle.size20w500(),
                              children: [
                                TextSpan(
                                  text: " Month",
                                  style: AppTextsytle.size16w500(
                                      color: AppColor.primary),
                                )
                              ]),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(16.r),
                      child: Image.asset(
                        Assets.images.imageHouse.path,
                        height: 297.h,
                        width: 215.h,
                        fit: BoxFit.cover,
                      )),
                  Positioned(
                    bottom: 12.h,
                    left: 12.w,
                    right: 12.w,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color: AppColor.white.withValues(alpha: 0.20)),
                          color: AppColor.black.withValues(alpha: 0.30)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "The Vertex",
                            style: AppTextsytle.size14w500(),
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            children: [
                              Assets.icons.iconLocation
                                  .svg(color: AppColor.white),
                              SizedBox(width: 2.w),
                              Text(
                                "Victoria Island, Lagos",
                                style: AppTextsytle.size14w400(
                                    color: AppColor.white),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          RichText(
                            text: TextSpan(
                                text: "₦80,000 /",
                                style: AppTextsytle.size16w500(
                                    color: AppColor.white),
                                children: [
                                  TextSpan(
                                    text: " Month",
                                    style: AppTextsytle.size16w500(
                                        color: AppColor.white),
                                  )
                                ]),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PropertyFilter extends HookWidget {
  const PropertyFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: propertyFilters.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          final isSelected = selectedIndex.value == index;
          return InkWell(
            onTap: () {
              selectedIndex.value = index;
            },
            child: Container(
              margin: EdgeInsets.only(right: 12.w),
              padding: EdgeInsets.symmetric(vertical: 6.w, horizontal: 12.w),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.primary300),
                  color: isSelected ? AppColor.secondary : AppColor.primary200,
                  borderRadius: BorderRadius.circular(8.r)),
              child: Text(
                propertyFilters[index],
                style: AppTextsytle.size12w500(
                    color: isSelected ? AppColor.primary : AppColor.primary600),
              ),
            ),
          );
        },
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
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PropertyDetailView()));
      },
      child: Container(
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
      ),
    );
  }
}

List<String> propertyFilters = [
  "All",
  "Apartment",
  "House",
  "Hub Space",
  "High Rise",
  "Duplex",
];
