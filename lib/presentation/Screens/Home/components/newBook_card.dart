import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:book_app/presentation/Screens/Home/components/all_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class BookSlider extends StatelessWidget {
  final List bookList;
  final bool isAudioBook;
  final String topTitle;
  BookSlider({
    required this.bookList,
    this.isAudioBook = false,
    required this.topTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
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
          Row(
            children: [
              Expanded(
                child: Text(
                  topTitle,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: AppFonts.fontSize12,
                  ),
                ),
              ),
              AllButton(),
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
                    isAudioBook == true
                        ? Stack(
                            children: [
                              Container(
                                width: 80.w,
                                margin: EdgeInsets.all(12.h)
                                    .copyWith(bottom: 4.h, left: 0),
                                child: Image.asset(
                                  bookList[index]['image'],
                                ),
                              ),
                              Positioned(
                                bottom: 10.h,
                                right: 5.w,
                                child: Container(
                                  padding: EdgeInsets.all(2.w),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.whiteColor,
                                    border: Border.all(
                                      color: AppColors.greyColor1,
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.headphones,
                                    color: AppColors.blackColor,
                                    size: 15.h,
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Container(
                            width: 80.w,
                            margin: EdgeInsets.all(12.h)
                                .copyWith(bottom: 4.h, left: 0),
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
