part of 'search_expanded_bloc.dart';

sealed class SearchExpandedEvent extends Equatable {
  const SearchExpandedEvent();

  @override
  List<Object> get props => [];
}

final class SearchPressedEvent extends SearchExpandedEvent {
  final bool isExpanded;

  SearchPressedEvent({required this.isExpanded});
  @override
  List<Object> get props => [isExpanded];
}
