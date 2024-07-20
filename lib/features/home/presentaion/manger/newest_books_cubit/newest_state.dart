part of 'newest_cubit.dart';

sealed class NewestState extends Equatable {
  const NewestState();

  @override
  List<Object> get props => [];
}

final class NewestInitial extends NewestState {}

final class NewsCubitInitial extends NewestState {}

final class NewsCubitLoading extends NewestState {}

final class NewsCubitSuccess extends NewestState {
  final List<BookModels> books;
  const NewsCubitSuccess(this.books);
}

final class NewsCubitError extends NewestState {
  final String error;
  const NewsCubitError(this.error);
}
