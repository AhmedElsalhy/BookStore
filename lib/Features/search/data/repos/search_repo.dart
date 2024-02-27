import 'package:book_store/core/errors/failures.dart';
import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(String query);
}
