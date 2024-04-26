import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AllButton extends StatelessWidget {
  const AllButton({
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
          SvgPicture.asset(arrowRightIcon),
        ],
      ),
    );
  }
}
