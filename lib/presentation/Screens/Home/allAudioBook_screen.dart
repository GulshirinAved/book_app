import 'package:book_app/config/theme/theme.dart';
import 'package:book_app/presentation/CustomWidgets/custom_appbar.dart';
import 'package:book_app/presentation/Screens/Home/components/allBook_card.dart';
import 'package:book_app/presentation/Screens/Home/components/filtering_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllAudioBookScreen extends StatelessWidget {
  const AllAudioBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24).h,
                child: const Icon(Icons.arrow_back),
              ),
              Text(
                'Все аудиокниги',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w400,
                  fontSize: AppFonts.fontSize24,
                ),
              ),
              const ButtonForFiltering(
                title: 'Категория',
              ),
              const ButtonForFiltering(
                title: 'Язык',
              ),
              const ButtonForFiltering(
                title: 'По популярности',
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const AllBookCard();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
