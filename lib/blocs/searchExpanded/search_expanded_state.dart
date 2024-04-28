// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'search_expanded_bloc.dart';

class SearchExpandedState extends Equatable {
  final bool isExpanded;

  const SearchExpandedState({
    required this.isExpanded,
  });

  @override
  List<Object> get props => [
        isExpanded,
      ];

  SearchExpandedState copyWith({
    bool? isExpanded,
    int? appBarHeight,
  }) {
    return SearchExpandedState(
      isExpanded: isExpanded ?? this.isExpanded,
    );
  }
}
