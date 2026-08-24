import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
import 'package:nest_mobile/core/widget/app_bottomsheet.dart';
import 'package:nest_mobile/core/widget/app_button.dart';
import 'package:nest_mobile/feature/property_detail/widget/schedule_modal.dart';
import 'package:nest_mobile/gen/assets.gen.dart';

class PropertyDetailView extends StatelessWidget {
  const PropertyDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child: Row(
            children: [
              Expanded(
                child: AppButton(
                  title: "Schedule  ",
                  onTap: () {
                    customBottomSheet(context, ScheduleInspectionModal());
                  },
                  buttonType: AppButtonType.border,
                  borderBGcolor: AppColor.white,
                  borderColor: AppColor.primary300,
                  fontSize: 16,
                  height: 56,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: AppButton(
                  title: "Proceed  ",
                  onTap: () {},
                  fontSize: 16,
                  height: 56,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.images.imageHouse.path,
                    height: 205.h,
                    width: 1.sw,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    children: [
                      Text(
                        "The Ivory Arch",
                        style: AppTextsytle.size16w500(color: AppColor.primary),
                      ),
                      Spacer(),
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
                  SizedBox(height: 4.h),
                  Row(
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
                  SizedBox(height: 16.h),
                  Text(
                    "Spacious and modern 3-bedroom apartment featuring an open-plan living area, fully fitted kitchen, and en-suite master bedroom. Perfectly located close to key amenities for comfortable family living.",
                    style: AppTextsytle.size14w400(color: AppColor.primary600),
                  ),
                  SizedBox(height: 48.h),
                  Row(
                    children: [
                      Assets.images.imageUserProfile.image(),
                      SizedBox(width: 12.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Eleanor Pena",
                            style: AppTextsytle.size16w500(
                                color: AppColor.primary900),
                          ),
                          SizedBox(height: 4.h),
                          Text("Agent",
                              style: AppTextsytle.size12w400(
                                  color: AppColor.primary600)),
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColor.primary200,
                          shape: BoxShape.circle,
                        ),
                        child: Assets.icons.iconChat.svg(),
                      ),
                      SizedBox(width: 16.w),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColor.primary200,
                          shape: BoxShape.circle,
                        ),
                        child: Assets.icons.iconCall.svg(),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  Text("Amenities:", style: AppTextsytle.size16w600()),
                  SizedBox(height: 8.h),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.primary300,
                        ),
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Text(
                      "24/7 security & CCTV",
                      style:
                          AppTextsytle.size12w500(color: AppColor.primary600),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Text("Payment Breakdown", style: AppTextsytle.size16w600()),
                  SizedBox(height: 12.h),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.primary300),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Column(
                      children: [
                        PaymentBreakdownRow(
                            label: "Rent/Year", amount: "₦ 960,000"),
                        Container(height: 1, color: AppColor.primary300),
                        PaymentBreakdownRow(
                            label: "Service Charge/Year", amount: "₦ 200,000"),
                        Container(height: 1, color: AppColor.primary300),
                        PaymentBreakdownRow(
                            label: "Agent Fee", amount: "₦ 300,000"),
                        Container(height: 1, color: AppColor.primary300),
                        PaymentBreakdownRow(
                            label: "Legal", amount: "₦ 300,000"),
                        Container(height: 1, color: AppColor.primary300),
                        PaymentBreakdownRow(
                            label: "Caution Fee", amount: "₦ 150,000"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PaymentBreakdownRow extends StatelessWidget {
  const PaymentBreakdownRow({
    super.key,
    required this.label,
    required this.amount,
  });

  final String label;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Text(
                label,
                style: AppTextsytle.size14w500(color: AppColor.primary),
              ),
            ),
          ),
          Container(width: 1, color: AppColor.primary300),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Text(
                amount,
                style: AppTextsytle.size14w400(color: AppColor.primary500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
