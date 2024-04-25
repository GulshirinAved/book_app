import 'package:book_app/blocs/bottomNavBar/bottom_nav_bar_bloc.dart';
import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final Widget child;
  const BottomNavBar({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
      builder: (context, state) {
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.index,
            backgroundColor: AppColors.blackGreyColor,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              context
                  .read<BottomNavBarBloc>()
                  .add(TriggerBottomNavBarEvent(value));
            },
            unselectedItemColor: AppColors.whiteColor,
            selectedItemColor: AppColors.yellowColor1,
            selectedLabelStyle: TextStyle(
              color: AppColors.yellowColor1,
              fontFamily: fontInter,
              fontWeight: FontWeight.w700,
              fontSize: AppFonts.fontSize12,
            ),
            unselectedLabelStyle: TextStyle(
              color: AppColors.whiteColor,
              fontFamily: fontInter,
              fontWeight: FontWeight.w700,
              fontSize: AppFonts.fontSize12,
            ),
            items: bottomtabs(context, state.index),
          ),
        );
      },
    );
  }
}

List<BottomNavigationBarItem> bottomtabs(BuildContext context, int selected) {
  return [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        personIcon,
        color: selected == 0 ? AppColors.yellowColor1 : AppColors.whiteColor,
      ),
      label: 'Мои книги',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        personIcon,
        color: selected == 1 ? AppColors.yellowColor1 : AppColors.whiteColor,
      ),
      label: 'Что выбрать',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        searchIcon,
        color: selected == 2 ? AppColors.yellowColor1 : AppColors.whiteColor,
      ),
      label: 'Поиск',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        personIcon,
        color: selected == 3 ? AppColors.yellowColor1 : AppColors.whiteColor,
      ),
      label: 'Профиль',
    ),
  ];
}
