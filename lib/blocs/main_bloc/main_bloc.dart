import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'main_bloc_event.dart';
part 'main_bloc_state.dart';

class MainBloc extends Bloc<MainBlocEvent, MainBlocState> {
  MainBloc() : super(const MainBlocState()) {
    on<SelectPageEvent>(_onSelectPage);
  }

  FutureOr<void> _onSelectPage(
      SelectPageEvent event, Emitter<MainBlocState> emit) {
    emit(state.copyWith(currentIndex: event.index));
  }
}
