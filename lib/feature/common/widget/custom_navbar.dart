import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nest_mobile/core/app_color.dart';
import 'package:nest_mobile/core/app_textsytle.dart';
 

class CustomBottomNav extends StatelessWidget {
  final String title;
  final int index;
  final String assetName;

  const CustomBottomNav({
    super.key,
    required this.title,
    required this.index,
    required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    // var vm = Provider.of<BaseViewmodel>(context);
    return SizedBox(
      height: 86.0.h,
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: (){},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 21.h,
                width: 20.w,
                child: SvgPicture.asset(
                  assetName,
                  // ignore: deprecated_member_use
                
                )),
              SizedBox(height: 2.h),
            Text(title, style: AppTextsytle.size12w500(color: AppColor.primary500)),
           
          ],
        ),
      ),
    );
  }
}
