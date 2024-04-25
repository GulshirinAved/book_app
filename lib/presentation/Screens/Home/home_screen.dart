import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/presentation/Screens/Home/components/bookName_card.dart';
import 'package:book_app/presentation/Screens/Home/components/bookType_card.dart';
import 'package:book_app/presentation/Screens/Home/components/newBook_card.dart';
import 'package:book_app/presentation/Screens/Home/components/recommendation_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Book Name
              SizedBox(
                height: 110.h,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: bookName.length,
                  itemBuilder: (context, index) {
                    return BookNameCard(
                      index: index,
                    );
                  },
                ),
              ),

              //Book Type
              SizedBox(
                height: 59.h,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: bookType.length,
                  itemBuilder: (context, index) {
                    return BookTypeCard(
                      index: index,
                    );
                  },
                ),
              ),
              //Recomondation
              const RecommendationCard(),
              //New Book
              const NewBook(),
            ],
          ),
        ),
      ),
    );
  }
}
