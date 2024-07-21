import 'package:bookly_app/core/errors/errors.dart';
import 'package:bookly_app/core/utlis/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_models/item.dart';
import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<BookModels>>> fetchNewsBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?q=subject:programming&sorting=newest');

      List<BookModels> books = [];

      for (var item in data['items']) {
        books.add(BookModels.fromJson(item));
      }

      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }

      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModels>>> fetchFeaturedBooks() async {
    try {
      var data =
          await apiService.get(endPoint: 'volumes?q=subject:programming');

      List<BookModels> books = [];

      for (var item in data['items']) {
        books.add(BookModels.fromJson(item));
      }

      return Right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }

      return Left(ServerFailure(e.toString()));
    }
  }
}
