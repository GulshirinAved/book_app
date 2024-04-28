import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_expanded_event.dart';
part 'search_expanded_state.dart';

class SearchExpandedBloc
    extends Bloc<SearchExpandedEvent, SearchExpandedState> {
  SearchExpandedBloc() : super(const SearchExpandedState(isExpanded: false)) {
    on<SearchPressedEvent>((event, emit) {
      emit(
        state.copyWith(
          isExpanded: !state.isExpanded,
        ),
      );
    });
  }
}
