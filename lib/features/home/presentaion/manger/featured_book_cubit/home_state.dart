part of 'home_cubit.dart';

sealed class HomeCubitState extends Equatable {
  const HomeCubitState();

  @override
  List<Object> get props => [];
}

final class HomeCubitInitial extends HomeCubitState {}

final class HomeCubitLoading extends HomeCubitState {}

final class HomeCubitSuccess extends HomeCubitState {
  final List<BookModels> books;
  const HomeCubitSuccess(this.books);
}

final class HomeCubitError extends HomeCubitState {
  final String error;
  const HomeCubitError(this.error);
}
