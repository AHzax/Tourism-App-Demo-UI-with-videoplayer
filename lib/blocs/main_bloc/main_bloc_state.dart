// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'main_bloc.dart';

class MainBlocState extends Equatable {
  final int currentIndex;
  const MainBlocState({
    this.currentIndex = 0,
  });

  @override
  List<Object?> get props => [
        currentIndex,
      ];

  MainBlocState copyWith({
    int? currentIndex,
  }) {
    return MainBlocState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}
