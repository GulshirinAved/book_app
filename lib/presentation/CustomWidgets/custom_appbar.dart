import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SvgPicture.asset(
        logo,
      ),
      actions: [
        SvgPicture.asset(
          searchIcon,
          height: 16.h,
          width: 16.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 15).w,
          child: Container(
            height: 33.h,
            width: 33.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.beigeColor,
              borderRadius: AppBorderRadius.borderRadius4,
              border: Border.all(
                color: AppColors.brownColor,
                width: 0.5.w,
              ),
            ),
            child: Text(
              'A',
              style: TextStyle(
                color: AppColors.brownColor,
                fontSize: AppFonts.fontSize14,
                fontFamily: fontInter,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55.h);
}
