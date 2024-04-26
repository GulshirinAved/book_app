import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonForFiltering extends StatelessWidget {
  final String title;
  const ButtonForFiltering({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12.h),
      width: MediaQuery.of(context).size.width,
      height: 48.h,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: AppBorderRadius.borderRadius16,
        border: Border.all(
          color: AppColors.greyColor,
          width: 0.5.w,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.blackColor,
              fontSize: AppFonts.fontSize16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.brownColor,
          ),
        ],
      ),
    );
  }
}
