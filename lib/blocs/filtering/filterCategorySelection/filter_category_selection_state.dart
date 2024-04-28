part of 'filter_category_selection_bloc.dart';

sealed class FilterCategorySelectionState extends Equatable {
  const FilterCategorySelectionState();

  @override
  List<Object> get props => [];
}

final class FilterCategorySelectionInitial
    extends FilterCategorySelectionState {}

final class FilterCategorySelectedState extends FilterCategorySelectionState {
  final String selectedOption;

  const FilterCategorySelectedState({required this.selectedOption});

  @override
  List<Object> get props => [selectedOption];
}
