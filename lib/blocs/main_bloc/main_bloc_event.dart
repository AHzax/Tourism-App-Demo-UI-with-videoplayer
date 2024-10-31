// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'main_bloc.dart';

abstract class MainBlocEvent extends Equatable {
  const MainBlocEvent();

  @override
  List<Object> get props => [];
}

class SelectPageEvent extends MainBlocEvent {
  final int index;
  const SelectPageEvent({
    required this.index,
  });
}
