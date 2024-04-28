import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class AllButton extends StatelessWidget {
  AllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 250.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Все',
            style: TextStyle(
              color: AppColors.brownColor,
              fontWeight: FontWeight.w400,
              fontSize: AppFonts.fontSize12,
            ),
          ),
          SizedBox(
            width: 5.w,
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: AppColors.brownColor,
            size: 10.h,
          )
        ],
      ),
    );
  }
}
