import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
import 'package:nest_mobile/core/widget/app_bottomsheet.dart';
import 'package:nest_mobile/core/widget/app_button.dart';
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
                onFilterTap: () {
                  customBottomSheet(
                      context,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Filter",
                            style: AppTextsytle.size16w500(
                                color: AppColor.primary),
                          ),
                          SizedBox(height: 16.h),
                          Text("Property Type",
                              style: AppTextsytle.size16w500()),
                          SizedBox(height: 8.h),
                          PropertyFilterWrap(),
                          SizedBox(height: 8.h),
                          Divider(),
                          SizedBox(height: 24.h),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Price range",
                              style: AppTextsytle.size16w500(
                                  color: AppColor.primary),
                            ),
                          ),
                          SizedBox(height: 8.h),
                          PriceRangeSlider(),
                          SizedBox(height: 24.h),
                          PropertyUnit(),
                          SizedBox(height: 16.h),
                          Divider(),
                          SizedBox(height: 24.h),
                          Text(
                            "Amenities:",
                            style: AppTextsytle.size14w600(),
                          ),
                          SizedBox(height: 8.h),
                          PropertyFilterWrap(),
                          SizedBox(height: 22.h),
                          Divider(),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              Expanded(
                                  child: AppButton(
                                title: "Reset",
                                onTap: () {},
                                buttonType: AppButtonType.border,
                                borderBGcolor: AppColor.white,
                                borderColor: AppColor.primary200,

                              )),
                              SizedBox(width: 12.w),
                              Expanded(
                                  child: AppButton(
                                title: "Apply ",
                                onTap: () {},
                              )),
                            ],
                          )
                        ],
                      ));
                },
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

class PropertyUnit extends StatelessWidget {
  const PropertyUnit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Bedrooms",
          style: AppTextsytle.size14w500(color: AppColor.primary900),
        ),
        Spacer(),
        Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: AppColor.primary200),
          padding: EdgeInsets.all(14),
          child: Center(
            child: Text(
              "-",
              style: AppTextsytle.size16w500(color: AppColor.primary),
            ),
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        Text(
          "0",
          style: AppTextsytle.size16w500(color: AppColor.primary),
        ),
        SizedBox(
          width: 16.w,
        ),
        Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: AppColor.secondary),
          padding: EdgeInsets.all(14),
          child: Center(
            child: Text(
              "+",
              style: AppTextsytle.size16w500(color: AppColor.primary),
            ),
          ),
        ),
      ],
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

class PropertyFilterWrap extends HookWidget {
  const PropertyFilterWrap({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);
    return Wrap(
      spacing: 12.w,
      runSpacing: 12.h,
      children: List.generate(propertyFilters.length, (index) {
        final isSelected = selectedIndex.value == index;
        return InkWell(
          onTap: () {
            selectedIndex.value = index;
          },
          child: Container(
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
      }),
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

class PriceRangeSlider extends HookWidget {
  const PriceRangeSlider({
    super.key,
    this.min = 0,
    this.max = 500000,
    this.initial = const RangeValues(20000, 200000),
  });

  final double min;
  final double max;
  final RangeValues initial;

  @override
  Widget build(BuildContext context) {
    final values = useState(initial);
    final startCtrl =
        useTextEditingController(text: _formatAmount(initial.start));
    final endCtrl = useTextEditingController(text: _formatAmount(initial.end));
    final startFocus = useFocusNode();
    final endFocus = useFocusNode();

    useEffect(() {
      if (!startFocus.hasFocus) {
        final t = _formatAmount(values.value.start);
        if (startCtrl.text != t) startCtrl.text = t;
      }
      if (!endFocus.hasFocus) {
        final t = _formatAmount(values.value.end);
        if (endCtrl.text != t) endCtrl.text = t;
      }
      return null;
    }, [values.value]);

    useEffect(() {
      void sync() {
        if (!startFocus.hasFocus) {
          startCtrl.text = _formatAmount(values.value.start);
        }
        if (!endFocus.hasFocus) {
          endCtrl.text = _formatAmount(values.value.end);
        }
      }

      startFocus.addListener(sync);
      endFocus.addListener(sync);
      return () {
        startFocus.removeListener(sync);
        endFocus.removeListener(sync);
      };
    }, const []);

    void updateFromText({required bool isStart, required String text}) {
      final digits = text.replaceAll(RegExp(r'[^\d]'), '');
      if (digits.isEmpty) return;
      final parsed = double.tryParse(digits);
      if (parsed == null) return;
      final clamped = parsed.clamp(min, max).toDouble();
      if (isStart) {
        final start = clamped > values.value.end ? values.value.end : clamped;
        values.value = RangeValues(start, values.value.end);
      } else {
        final end = clamped < values.value.start ? values.value.start : clamped;
        values.value = RangeValues(values.value.start, end);
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SliderTheme(
          data: SliderThemeData(
            trackHeight: 4.h,
            activeTrackColor: AppColor.secondary,
            inactiveTrackColor: AppColor.primary300,
            rangeThumbShape: _HaloRangeThumbShape(
              thumbRadius: 8.r,
              haloRadius: 14.r,
              thumbColor: AppColor.secondary,
              haloColor: AppColor.secondary.withValues(alpha: 0.25),
            ),
            overlayShape: SliderComponentShape.noOverlay,
            rangeValueIndicatorShape:
                const PaddleRangeSliderValueIndicatorShape(),
            valueIndicatorColor: AppColor.secondary,
            valueIndicatorTextStyle:
                AppTextsytle.size16w500(color: AppColor.primary),
            showValueIndicator: ShowValueIndicator.always,
            rangeTrackShape: const RoundedRectRangeSliderTrackShape(),
          ),
          child: RangeSlider(
            min: min,
            max: max,
            values: values.value,
            labels: RangeLabels(
              '₦${_formatAmount(values.value.start)}',
              '₦${_formatAmount(values.value.end)}',
            ),
            onChanged: (v) => values.value = v,
          ),
        ),
        SizedBox(height: 12.h),
        Row(
          children: [
            Expanded(
              child: _AmountField(
                controller: startCtrl,
                focusNode: startFocus,
                onChanged: (t) => updateFromText(isStart: true, text: t),
              ),
            ),
            SizedBox(width: 8.w),
            Text('—',
                style: AppTextsytle.size16w500(color: AppColor.primary500)),
            SizedBox(width: 8.w),
            Expanded(
              child: _AmountField(
                controller: endCtrl,
                focusNode: endFocus,
                onChanged: (t) => updateFromText(isStart: false, text: t),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _AmountField extends StatelessWidget {
  const _AmountField({
    required this.controller,
    required this.focusNode,
    required this.onChanged,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.primary300),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: TextInputType.number,
        style: AppTextsytle.size16w500(color: AppColor.primary),
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
          prefixText: '₦ ',
          prefixStyle: AppTextsytle.size16w500(color: AppColor.primary),
        ),
        onChanged: onChanged,
      ),
    );
  }
}

String _formatAmount(double value) {
  final s = value.round().toString();
  final buf = StringBuffer();
  for (int i = 0; i < s.length; i++) {
    if (i > 0 && (s.length - i) % 3 == 0) buf.write(',');
    buf.write(s[i]);
  }
  return buf.toString();
}

class _HaloRangeThumbShape extends RangeSliderThumbShape {
  const _HaloRangeThumbShape({
    required this.thumbRadius,
    required this.haloRadius,
    required this.thumbColor,
    required this.haloColor,
  });

  final double thumbRadius;
  final double haloRadius;
  final Color thumbColor;
  final Color haloColor;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) =>
      Size.fromRadius(haloRadius);

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    bool isDiscrete = false,
    bool isEnabled = false,
    bool isOnTop = false,
    required SliderThemeData sliderTheme,
    TextDirection textDirection = TextDirection.ltr,
    Thumb thumb = Thumb.start,
    bool isPressed = false,
  }) {
    final canvas = context.canvas;
    canvas.drawCircle(center, haloRadius, Paint()..color = haloColor);
    canvas.drawCircle(
        center, haloRadius, Paint()..color = thumbColor.withValues(alpha: 0.4));
    canvas.drawCircle(center, thumbRadius, Paint()..color = thumbColor);
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
