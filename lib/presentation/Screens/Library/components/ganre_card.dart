import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:book_app/presentation/Screens/Library/components/ganreIconTitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenreCard extends StatelessWidget {
  final int index;
  const GenreCard({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      width: 103.w,
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: AppBorderRadius.borderRadius6,
        border: Border.all(color: AppColors.greyColor1),
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.outer,
            offset: const Offset(0, 2),
            blurRadius: 3,
            color: AppColors.greyColor,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 3.w),
            child: Text(
              maxLines: 2,
              categoryOption[index].toString(),
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: AppFonts.fontSize12,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              iconTitle(icon: libraryIcon, title: '47 184'),
              iconTitle(icon: headphoneIcon, title: '11 293'),
            ],
          ),
        ],
      ),
    );
  }
}
