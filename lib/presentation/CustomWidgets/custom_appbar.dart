import 'package:book_app/blocs/languageChange/language_change_bloc.dart';
import 'package:book_app/blocs/searchExpanded/search_expanded_bloc.dart';
import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:book_app/presentation/Screens/Home/components/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LanguageChangeBloc(),
        ),
        BlocProvider(
          create: (context) => SearchExpandedBloc(),
        ),
      ],
      child: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 10.w),
          child: SvgPicture.asset(
            logo,
          ),
        ),
        centerTitle: false,
        leadingWidth: 130.w,
        actions: [
          //Search Icon
          BlocBuilder<SearchExpandedBloc, SearchExpandedState>(
            builder: (context, state) {
              return GestureDetector(
                onTap: () {
                  context
                      .read<SearchExpandedBloc>()
                      .add(SearchPressedEvent(isExpanded: false));
                },
                child: SvgPicture.asset(
                  searchIcon,
                  height: 16.h,
                  width: 16.h,
                  color: state.isExpanded == true
                      ? AppColors.blackColor
                      : AppColors.brownColor,
                ),
              );
            },
          ),
          //Language Drop Down
          BlocBuilder<LanguageChangeBloc, LanguageChangeState>(
            builder: (context, state) {
              return Padding(
                padding: EdgeInsets.only(left: 12.w),
                child: DropdownButton<String>(
                  iconEnabledColor: AppColors.brownColor,
                  iconDisabledColor: AppColors.brownColor,
                  underline: Container(),
                  elevation: 0,
                  focusColor: AppColors.orangeColor,
                  items: language
                      .map(
                        (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              color: AppColors.brownColor,
                              fontWeight: FontWeight.w700,
                              fontSize: AppFonts.fontSize14,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  value: state.language,
                  onChanged: (value) {
                    context
                        .read<LanguageChangeBloc>()
                        .add(LanguageSelectionEvent(language: value ?? 'Tm'));
                  },
                ),
              );
            },
          ),
          //Login Accaunt
          Container(
            height: 33.h,
            width: 33.h,
            margin: EdgeInsets.only(right: 12.w),
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
        ],
        bottom: PreferredSize(
          preferredSize: preferredSize,
          child: BlocBuilder<SearchExpandedBloc, SearchExpandedState>(
            builder: (context, state) => state.isExpanded == true
                ? const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    child: SearchField(),
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(85.h);
}
