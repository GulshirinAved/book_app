import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.h),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: AppBorderRadius.borderRadius8,
        border: Border.all(color: AppColors.greyColor1, width: 0.2),
      ),
      height: 315.h,
      width: 327.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 120.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(12.h),
                  child: Image.asset(
                    bookImage,
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 36.h),
            width: 189.w,
            child: Text(
              textAlign: TextAlign.center,
              'Выберите книги, которые нравятся',
              style: TextStyle(
                fontFamily: fontInter,
                fontWeight: FontWeight.w600,
                fontSize: AppFonts.fontSize18,
              ),
            ),
          ),
          Container(
            width: 151.w,
            margin: EdgeInsets.symmetric(vertical: 12.w),
            child: Text(
              textAlign: TextAlign.center,
              'Получите рекомендации от MyBook',
              style: TextStyle(
                fontFamily: fontInter,
                fontWeight: FontWeight.w400,
                fontSize: AppFonts.fontSize12,
              ),
            ),
          ),
          Container(
            width: 189.w,
            height: 37.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: AppBorderRadius.borderRadius8,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.purpleColor, AppColors.blueColor],
              ),
            ),
            child: Text(
              textAlign: TextAlign.center,
              'Выбрать книги',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: AppFonts.fontSize14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
