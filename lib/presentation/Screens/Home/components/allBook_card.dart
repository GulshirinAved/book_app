import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:book_app/presentation/Screens/Home/components/statusDescription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllBookCard extends StatelessWidget {
  const AllBookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 144.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: AppBorderRadius.borderRadius16,
        border: Border.all(
          color: AppColors.greyColor1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(bookImage),
          Container(
            height: 111.h,
            width: 170.w,
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Хозяйка корней',
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: AppFonts.fontSize16,
                  ),
                ),
                Text(
                  'Джейд Дэвлин',
                  style: TextStyle(
                    color: AppColors.brownColor,
                    fontWeight: FontWeight.w400,
                    fontSize: AppFonts.fontSize12,
                  ),
                ),
                Container(
                  width: 128.w,
                  margin: EdgeInsets.only(top: 16.h),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StatusDescription(
                        icon: starIcon,
                        title: '4.7',
                      ),
                      StatusDescription(
                        icon: starIcon,
                        title: 'Премиум',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.bookmark_border_outlined,
              color: AppColors.brownColor,
            ),
          ),
        ],
      ),
    );
  }
}
