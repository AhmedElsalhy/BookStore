import 'package:book_store/Features/home/data/repos/home_repo.dart';
import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fetch_similar_books_state.dart';

class FetchSimilarBooksCubit extends Cubit<SimilarBooksState> {
  FetchSimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBook({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) => emit(
        SimilarBooksFailure(
          failure.errorMessage,
        ),
      ),
      (books) => emit(
        SimilarBooksSuccess(books),
      ),
    );
  }
}
