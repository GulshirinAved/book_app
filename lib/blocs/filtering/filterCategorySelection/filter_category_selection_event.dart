part of 'filter_category_selection_bloc.dart';

sealed class FilterCategorySelectionEvent extends Equatable {
  const FilterCategorySelectionEvent();

  @override
  List<Object> get props => [];
}

final class FilterCategorySelectEvent extends FilterCategorySelectionEvent {
  final String categoryOption;

  const FilterCategorySelectEvent({required this.categoryOption});
  @override
  List<Object> get props => [categoryOption];
}
