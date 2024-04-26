import 'package:book_app/blocs/bottomNavBar/bottom_nav_bar_bloc.dart';
import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

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
            backgroundColor: AppColors.whiteColor,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              context
                  .read<BottomNavBarBloc>()
                  .add(TriggerBottomNavBarEvent(value));
              GoRouter.of(context).pushNamed(indexRouteNames[value]);
            },
            unselectedItemColor: AppColors.whiteColor,
            selectedItemColor: AppColors.blueColor,
            selectedLabelStyle: TextStyle(
              color: AppColors.blueColor,
              fontFamily: fontInter,
              fontWeight: FontWeight.w700,
              fontSize: AppFonts.fontSize12,
            ),
            showUnselectedLabels: false,
            elevation: 0,
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
        homeIcon,
        color: selected == 0 ? AppColors.blueColor : AppColors.greyColor1,
      ),
      label: 'Главная',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        personIcon,
        color: selected == 1 ? AppColors.blueColor : AppColors.greyColor1,
      ),
      label: 'Что выбрать',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        bookIcon,
        color: selected == 2 ? AppColors.blueColor : AppColors.greyColor1,
      ),
      label: 'Библиотека',
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        personIcon,
        color: selected == 3 ? AppColors.blueColor : AppColors.greyColor1,
      ),
      label: 'Профиль',
    ),
  ];
}
