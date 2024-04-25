import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookNameCard extends StatelessWidget {
  final int index;
  const BookNameCard({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92.h,
      width: 92.h,
      margin: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: AppBorderRadius.borderRadius12,
        border: Border.all(color: AppColors.blueColor, width: 2.w),
      ),
      child: Stack(
        children: [
          Container(
            height: 92.h,
            width: 92.h,
            margin: const EdgeInsets.all(1),
            child: Image.asset(
              personImage,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 5.h,
            child: SizedBox(
              width: 90.h,
              child: Text(
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w600,
                  fontFamily: fontInter,
                ),
                bookName[index].toString(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
