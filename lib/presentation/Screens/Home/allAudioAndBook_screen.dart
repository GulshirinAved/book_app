import 'package:book_app/blocs/filtering/filterCategorySelection/filter_category_selection_bloc.dart';
import 'package:book_app/config/constants/constants.dart';
import 'package:book_app/config/theme/theme.dart';
import 'package:book_app/presentation/CustomWidgets/custom_appbar.dart';
import 'package:book_app/presentation/Screens/Home/components/allBook_card.dart';
import 'package:book_app/presentation/Screens/Home/components/filtering_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AllAudioBookScreen extends StatelessWidget {
  final String topTitle;
  const AllAudioBookScreen({required this.topTitle, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterCategorySelectionBloc()
        ..add(const FilterCategorySelectEvent(categoryOption: 'Категория')),
      child: Scaffold(
        appBar: const CustomAppBar(),
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
                    child: const Icon(Icons.arrow_back),
                  ),
                ),
                Text(
                  'Все ${topTitle.toLowerCase()} ',
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: AppFonts.fontSize24,
                  ),
                ),
                //category filtering

                BlocBuilder<FilterCategorySelectionBloc,
                    FilterCategorySelectionState>(
                  builder: (context, state) {
                    if (state is FilterCategorySelectedState) {
                      return FilteringPanel(
                        title: state.selectedOption,
                        filteringList: categoryOption,
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
                //language filtering

                FilteringPanel(
                  title: 'Язык',
                  filteringList: languageOptoin,
                ),
                //popularity filtering
                FilteringPanel(
                  title: 'По популярности',
                  filteringList: languageOptoin,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const AllBookCard();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
