import 'package:book_app/blocs/filtering/filterCategorySelection/filter_category_selection_bloc.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilteringPanel extends StatelessWidget {
  final String title;
  final List filteringList;
  const FilteringPanel({
    required this.title,
    required this.filteringList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 13.h),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: AppBorderRadius.borderRadius16,
        border: Border.all(
          color: AppColors.greyColor1,
        ),
      ),
      child: BlocBuilder<FilterCategorySelectionBloc,
          FilterCategorySelectionState>(
        builder: (context, state) {
          if (state is FilterCategorySelectedState) {
            return ExpansionTile(
              backgroundColor: AppColors.whiteColor,
              shape: const RoundedRectangleBorder(side: BorderSide.none),
              iconColor: AppColors.brownColor,
              collapsedIconColor: AppColors.brownColor,
              collapsedShape: RoundedRectangleBorder(
                borderRadius: AppBorderRadius.borderRadius16,
              ),
              title: Text(
                title,
                style: TextStyle(
                  fontSize: AppFonts.fontSize16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              children: List.generate(
                filteringList.length,
                (index) => GestureDetector(
                  onTap: () {
                    context.read<FilterCategorySelectionBloc>().add(
                          FilterCategorySelectEvent(
                            categoryOption: filteringList[index],
                          ),
                        );
                  },
                  child: ListTile(
                    title: Container(
                      padding: EdgeInsetsDirectional.symmetric(vertical: 5.h),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: AppColors.greyColor,
                            width: 1.w,
                          ),
                        ),
                      ),
                      child: Text(
                        filteringList[index],
                        style: TextStyle(
                          fontSize: AppFonts.fontSize16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
