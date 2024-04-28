import 'package:book_app/blocs/searchExpanded/search_expanded_bloc.dart';
import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:book_app/presentation/CustomWidgets/custom_appbar.dart';
import 'package:book_app/presentation/Screens/Home/components/bookType_card.dart';
import 'package:book_app/presentation/Screens/Home/components/newBook_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSceen extends StatelessWidget {
  const HomeSceen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchExpandedBloc(),
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //short ad with reading girl
              Stack(
                fit: StackFit.loose,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: 327.w,
                    alignment: Alignment.center,
                    child: Text(
                      'Bilimli kitap — читайте и слушайте по одной подписке',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: AppFonts.fontSize24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.h),
                    child: Image.asset(
                      girlReadingImage,
                    ),
                  ),
                ],
              ),
              //Book Types
              SizedBox(
                height: 50.h,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: bookType.length,
                  itemBuilder: (context, index) {
                    return BookTypeCard(
                      index: index,
                      topTitle: bookType[index]['title'],
                    );
                  },
                ),
              ),
              //Book New Added
              BookSlider(
                bookList: newAddedBook,
                topTitle: 'Недавно Добавленные книги',
              ),
              //Top Audio Book
              BookSlider(
                bookList: audioBook,
                isAudioBook: true,
                topTitle: 'Топ аудиокниги',
              ),
              //Top Books
              BookSlider(
                bookList: topBook,
                topTitle: 'Топ книги',
              ),
              //Tradink Book
              BookSlider(
                bookList: tradinkBook,
                topTitle: 'Традинк книг',
              ),
              //Bestseller Book
              BookSlider(
                bookList: bestSellerBook,
                topTitle: 'Бестселлер книг',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
