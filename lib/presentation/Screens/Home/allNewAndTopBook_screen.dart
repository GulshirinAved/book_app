import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:book_app/presentation/CustomWidgets/custom_appbar.dart';
import 'package:book_app/presentation/Screens/Home/components/newBook_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AllNewTopBookScreen extends StatelessWidget {
  final int index;
  const AllNewTopBookScreen({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24).h,
                child: GestureDetector(
                  onTap: () => context.pop(),
                  child: const Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
              Text(
                index == 2
                    ? 'Подборки последних новинок книг'
                    : 'Подборки самых популярных книг',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: AppFonts.fontSize24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24).h,
                child: Text(
                  index == 2
                      ? 'На этой странице представлены 347 подборок последних новинок книг и аудиокниг от лучших авторов. Подборки обновляются каждую неделю, что позволит каждому читателю найти книгу по своему вкусу. Начните читать последние новинки прямо на сайте или установите наше удобное приложение, чтобы не расставаться с любимыми книгами даже при отсутствии подключения к интернету!'
                      : 'На этой странице представлены 101 подборок самых рейтинговых книг электронной библиотеки MyBook. Подборки составляются каждый месяц, что позволит каждому читателю найти книгу по своему вкусу. Читайте самые популярные книги прямо на сайте или установите наше удобное приложение, чтобы не расставаться с любимыми произведениями даже при отсутствии подключения к интернету!',
                  style: TextStyle(
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w400,
                    fontSize: AppFonts.fontSize14,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
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
            ],
          ),
        ),
      ),
    );
  }
}
