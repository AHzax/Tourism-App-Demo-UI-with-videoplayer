// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tabbar_bloc.dart';

class TabbarState extends Equatable {
  final int index;
  const TabbarState({
    this.index = 0,
  });

  @override
  List<Object> get props => [index];

  TabbarState copyWith({
    int? index,
  }) {
    return TabbarState(
      index: index ?? this.index,
    );
  }
}
