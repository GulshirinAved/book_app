// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'language_change_bloc.dart';

// ignore: must_be_immutable
class LanguageChangeState extends Equatable {
  String language;

  LanguageChangeState(
    this.language,
  );

  @override
  List<Object> get props => [language];

  LanguageChangeState copyWith({
    String? language,
  }) {
    return LanguageChangeState(
      language ?? this.language,
    );
  }
}
