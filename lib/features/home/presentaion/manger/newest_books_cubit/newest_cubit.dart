import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_models/book_models.dart';
import 'package:equatable/equatable.dart';

part 'newest_state.dart';

class NewestCubit extends Cubit<NewestState> {
  NewestCubit() : super(NewestInitial());
}
