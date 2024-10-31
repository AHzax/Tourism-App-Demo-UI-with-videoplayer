import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'tabbar_event.dart';
part 'tabbar_state.dart';

class TabbarBloc extends Bloc<TabbarEvent, TabbarState> {
  TabbarBloc() : super(const TabbarState()) {
    on<SelectTabEvent>(_onTabSelect);
  }

  FutureOr<void> _onTabSelect(SelectTabEvent event, Emitter<TabbarState> emit) {
    emit(state.copyWith(
      index: event.index,
    ));
  }
}
