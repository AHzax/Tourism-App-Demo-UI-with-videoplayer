// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tabbar_bloc.dart';

abstract class TabbarEvent extends Equatable {
  const TabbarEvent();

  @override
  List<Object> get props => [];
}

class SelectTabEvent extends TabbarEvent {
  final int index;
  const SelectTabEvent({
    required this.index,
  });
}
