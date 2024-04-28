part of 'language_change_bloc.dart';

sealed class LanguageChangeEvent extends Equatable {
  const LanguageChangeEvent();

  @override
  List<Object> get props => [];
}

final class LanguageSelectionEvent extends LanguageChangeEvent {
  final String language;

  const LanguageSelectionEvent({required this.language});
  @override
  List<Object> get props => [language];
}
