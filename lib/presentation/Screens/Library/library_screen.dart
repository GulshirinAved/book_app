import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:book_app/presentation/CustomWidgets/custom_appbar.dart';
import 'package:book_app/presentation/Screens/Library/components/ganre_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Популярные категории',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: AppFonts.fontSize20,
            ),
          ),
          SizedBox(
            height: 47.h,
            child: ListView.builder(
              itemCount: categoryOption.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GenreCard(index: index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
