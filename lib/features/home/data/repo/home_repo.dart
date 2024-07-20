import 'package:bookly_app/features/home/data/models/book_models/book_models.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModels>>> fetchNewsBooks();
  Future<Either<Failure, List<BookModels>>> fetchFeaturedBooks();
}
