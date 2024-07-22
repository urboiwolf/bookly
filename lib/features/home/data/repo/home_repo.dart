import 'package:bookly_app/features/home/data/models/book_models/item.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BooksModel>>> fetchNewsBooks();
  Future<Either<Failure, List<BooksModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BooksModel>>> fetchSimilarBooks(
      {required String category});
}
