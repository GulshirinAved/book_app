import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 39.h,
          width: 229.w,
          child: TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(
                color: AppColors.blackColor.withOpacity(0.8),
              ),
              suffixIcon: Icon(
                CupertinoIcons.clear_circled_solid,
                size: 16.h,
                color: AppColors.orangeColor,
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 2.h,
                horizontal: 7.w,
              ),
              // contentPadding: EdgeInsets.only(top: 0.h, left: 5.w),
              hintText: 'Книга или автор',
              border: OutlineInputBorder(
                borderRadius: AppBorderRadius.borderRadius15,
                borderSide: BorderSide(
                  color: AppColors.orangeColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: AppBorderRadius.borderRadius15,
                borderSide: BorderSide(
                  color: AppColors.orangeColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: AppBorderRadius.borderRadius15,
                borderSide: BorderSide(
                  color: AppColors.orangeColor,
                ),
              ),
            ),
          ),
        ),
        Text(
          'Отмена',
          style: TextStyle(
            color: AppColors.brownColor,
            fontWeight: FontWeight.w600,
            fontSize: AppFonts.fontSize16,
          ),
        ),
      ],
    );
  }
}
