import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
import 'package:nest_mobile/core/widget/app_button.dart';

class ScheduleInspectionModal extends HookWidget {
  const ScheduleInspectionModal({super.key});

  @override
  Widget build(BuildContext context) {
    var selectedTime = useState<TimeOfDay?>(null);
    var selectedDate = useState<DateTime?>(null);
    return Column(
      children: [
        Text("Schedule a tour", style: AppTextsytle.size16w500(
          color: AppColor.primary1000
        )),
        SizedBox(height: 16.h),
        CalendarDatePicker2(
          config: CalendarDatePicker2Config(
            animateToDisplayedMonthDate: true,
            hideScrollViewTopHeader: true,
            firstDate: DateTime.now(),
            calendarType: CalendarDatePicker2Type.single,
            centerAlignModePicker: true,
            disableModePicker: true,
            modePickersGap: 0,
            controlsTextStyle: AppTextsytle.size14w400(),
            lastMonthIcon: Icon(
              CupertinoIcons.left_chevron,
              size: 20,
              color: AppColor.black,
            ),
            nextMonthIcon: Icon(
              CupertinoIcons.chevron_right,
              size: 20,
              color: AppColor.black,
            ),
            weekdayLabels: [
              "Sun",
              "Mon",
              "Tue",
              "Wed",
              "Thu",
              "Fri",
              "Sat",
              "Sun"
            ],
            selectedDayHighlightColor: AppColor.black,
          ),
          value: [selectedDate.value],
          onValueChanged: (dates) {
            selectedDate.value = dates.first;
          },
        ),
        Divider(),
        SizedBox(height: 16.h),
        GestureDetector(
          onTap: () async {
            final picked = await showTimePicker(
              context: context,
              initialTime: selectedTime.value ?? TimeOfDay(hour: 10, minute: 0),
            );
            if (picked != null) {
              selectedTime.value = picked;
            }
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: AppColor.white,
              border: Border.all(color: AppColor.primary300),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select Time",
                        style: AppTextsytle.size12w400(
                          color: AppColor.primary600,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        _formatTimeRange(selectedTime.value),
                        style: AppTextsytle.size16w600(
                          color: AppColor.primary1000,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  CupertinoIcons.clock,
                  size: 20,
                  color: AppColor.primary1000,
                ),
              ],
            ),
          ),
        ),
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
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: AppButton(
                title: "Apply ",
                onTap: () {},
              ),
            ),
          ],
        )
      ],
    );
  }

  String _formatTimeRange(TimeOfDay? start) {
    final s = start ?? TimeOfDay(hour: 10, minute: 0);
    final endMinutes = s.hour * 60 + s.minute + 30;
    final end = TimeOfDay(hour: (endMinutes ~/ 60) % 24, minute: endMinutes % 60);
    return "${_format(s)} - ${_format(end)}";
  }

  String _format(TimeOfDay t) {
    final period = t.hour >= 12 ? "pm" : "am";
    final hour = t.hourOfPeriod == 0 ? 12 : t.hourOfPeriod;
    final minute = t.minute.toString().padLeft(2, '0');
    return "$hour:$minute$period";
  }
}
