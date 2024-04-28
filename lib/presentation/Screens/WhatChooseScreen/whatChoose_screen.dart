import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/presentation/CustomWidgets/custom_appbar.dart';
import 'package:book_app/presentation/Screens/Home/components/bookType_card.dart';
import 'package:book_app/presentation/Screens/Home/components/newBook_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhatChooseScreen extends StatelessWidget {
  const WhatChooseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
    );
  }
}
