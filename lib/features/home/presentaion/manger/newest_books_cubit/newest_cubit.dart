import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_models/book_models.dart';
import 'package:bookly_app/features/home/data/models/book_models/item.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_state.dart';

class NewestCubit extends Cubit<NewestState> {
  NewestCubit(this.homeRepo) : super(NewestInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewsBooks() async {
    emit(NewsCubitLoading());
    var result = await homeRepo.fetchNewsBooks();
    result.fold((failure) {
      emit(NewsCubitError(failure.errorMessage));
    }, (books) {
      emit(NewsCubitSuccess(books));
    });
  }
}
