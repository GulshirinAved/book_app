import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'language_change_event.dart';
part 'language_change_state.dart';

class LanguageChangeBloc
    extends Bloc<LanguageChangeEvent, LanguageChangeState> {
  LanguageChangeBloc() : super(LanguageChangeState('Tm')) {
    on<LanguageSelectionEvent>((event, emit) {
      emit(state.copyWith(language: event.language));
    });
  }
}
