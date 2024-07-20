part of 'newest_cubit.dart';

sealed class NewestState extends Equatable {
  const NewestState();

  @override
  List<Object> get props => [];
}

final class NewestInitial extends NewestState {}

final class HomeCubitInitial extends NewestState {}

final class HomeCubitLoading extends NewestState {}

final class HomeCubitSuccess extends NewestState {
  final List<BookModels> books;
  const HomeCubitSuccess(this.books);
}

final class HomeCubitError extends NewestState {
  final String error;
  const HomeCubitError(this.error);
}
