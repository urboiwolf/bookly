part of 'home_cubit.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeCubitInitial extends HomeState {}

final class HomeCubitLoading extends HomeState {}

final class HomeCubitSuccess extends HomeState {
  final List<BooksModel> books;
  const HomeCubitSuccess(this.books);
}

final class HomeCubitError extends HomeState {
  final String error;
  const HomeCubitError(this.error);
}
