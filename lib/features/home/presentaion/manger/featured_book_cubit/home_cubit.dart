import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_models/item.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeCubitInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(HomeCubitLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(HomeCubitError(failure.errorMessage));
    }, (books) {
      emit(HomeCubitSuccess(books));
    });
  }
}
