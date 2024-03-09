import 'package:book_store/Features/search/data/repos/search_repo.dart';
import 'package:book_store/core/errors/failures.dart';
import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:book_store/core/utils/api_service.dart';
import 'package:book_store/core/widgets/custom_error_widget.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      String query) async {
    try {
      String endPoint;
      if (query.isEmpty || query.length == 1) {
        // If query is empty, fetch programming books
        endPoint = 'volumes?Filtering=free-ebooks&Sorting=relevance&q=Subject:';
      } else {
        // If query is not empty, fetch books based on the query
        endPoint =
            'volumes?Filtering=free-ebooks&Sorting=relevance&q=intitle:$query';
      }
      var data = await apiService.get(endPoint: endPoint);
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(
          BookModel.fromJson(item),
        );
      }
      // Check if no books were found
      if (books.isEmpty) {
        return left(
          CustomErrorWidget(
            errMessage: 'No books found for the query: $query',
          ) as Failure,
        );
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(
            e,
          ),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
