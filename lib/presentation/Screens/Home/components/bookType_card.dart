import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookTypeCard extends StatelessWidget {
  final int index;
  const BookTypeCard({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.h),
      padding: EdgeInsets.all(6.h),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: AppBorderRadius.borderRadius4,
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.outer,
            offset: const Offset(0, 2),
            blurRadius: 3,
            color: AppColors.greyColor,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            bookType[index]['icon'],
          ),
          SizedBox(
            width: 6.w,
          ),
          Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            bookType[index]['title'].toString(),
            style: TextStyle(
              color: AppColors.brownColor,
              fontSize: AppFonts.fontSize14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
