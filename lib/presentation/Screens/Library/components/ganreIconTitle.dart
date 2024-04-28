import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

Widget iconTitle({String? icon, String? title}) {
  return Row(
    children: [
      SvgPicture.asset(icon!),
      SizedBox(
        width: 1.w,
      ),
      Text(
        title!,
        style: TextStyle(
          color: AppColors.greyColor3,
          fontWeight: FontWeight.w400,
          fontSize: AppFonts.fontSize10,
        ),
      ),
    ],
  );
}
