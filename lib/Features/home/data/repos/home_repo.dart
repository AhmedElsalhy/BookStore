import 'package:book_store/core/errors/failures.dart';
import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks(
      {required String category});

  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks(
      {required String category});

  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
