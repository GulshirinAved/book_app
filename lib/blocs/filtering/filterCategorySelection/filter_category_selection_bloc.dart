import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'filter_category_selection_event.dart';
part 'filter_category_selection_state.dart';

class FilterCategorySelectionBloc
    extends Bloc<FilterCategorySelectionEvent, FilterCategorySelectionState> {
  FilterCategorySelectionBloc() : super(FilterCategorySelectionInitial()) {
    on<FilterCategorySelectEvent>((event, emit) {
      emit(FilterCategorySelectedState(selectedOption: event.categoryOption));
    });
  }
}
