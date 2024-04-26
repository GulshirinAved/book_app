import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:book_app/presentation/Screens/Home/components/all_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookSlider extends StatelessWidget {
  final List bookList;
  const BookSlider({
    required this.bookList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 10.h),
      height: 240.h,
      width: 327.w,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: AppBorderRadius.borderRadius8,
        border: Border.all(color: AppColors.blackColor, width: 0.2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Недавно Добавленные книги',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: AppFonts.fontSize12,
                ),
              ),
              const AllButton(),
            ],
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
                        bookList[index]['image'],
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
                              SvgPicture.asset(
                                starIcon,
                                color: AppColors.yellowColor,
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
                        bookList[index]['name'].toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: AppFonts.fontSize12,
                        ),
                      ),
                    ),
                    Text(
                      'Роберт Куинн',
                      style: TextStyle(
                        color: AppColors.greyColor2,
                        fontSize: AppFonts.fontSize9,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
