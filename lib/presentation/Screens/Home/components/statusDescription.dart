import 'package:book_app/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StatusDescription extends StatelessWidget {
  final String icon;
  final String title;
  const StatusDescription({
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          icon,
          color: AppColors.yellowColor,
        ),
        Text(
          title,
          style: TextStyle(
            color: AppColors.blackColor,
            fontWeight: FontWeight.w400,
            fontSize: AppFonts.fontSize12,
          ),
        ),
      ],
    );
  }
}
