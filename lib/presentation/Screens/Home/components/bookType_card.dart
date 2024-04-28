import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BookTypeCard extends StatelessWidget {
  final String topTitle;
  final int index;
  const BookTypeCard({
    required this.index,
    required this.topTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => index < 2
          ? context.pushNamed('allAudioBook', extra: {'topTitle': topTitle})
          : context.pushNamed('allNewTopBook', extra: {'index': index}),
      child: Container(
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
      ),
    );
  }
}
