import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewBook extends StatelessWidget {
  const NewBook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 15.h),
      height: 240.h,
      width: 327.w,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: AppBorderRadius.borderRadius8,
        border: Border.all(color: AppColors.greyColor1, width: 0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Новые книги и аудиокниги',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: AppFonts.fontSize12,
            ),
          ),
          Text(
            '54 книг',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: AppFonts.fontSize12,
            ),
          ),
          SizedBox(
            height: 181.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 80.w,
                      margin:
                          EdgeInsets.all(12.h).copyWith(bottom: 4.h, left: 0),
                      child: Image.asset(
                        bookImage,
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                      width: 80.w,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: AppColors.yellowColor,
                                size: 12.h,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 80,
                      child: Text(
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        'Позитивная организация',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: AppFonts.fontSize12,
                        ),
                      ),
                    ),
                    Text(
                      'Роберт Куинн',
                      style: TextStyle(
                        color: AppColors.darkgreyColor,
                        fontSize: AppFonts.fontSize9,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
