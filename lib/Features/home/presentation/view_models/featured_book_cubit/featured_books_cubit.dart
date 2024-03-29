import 'package:book_store/Features/home/data/repos/home_repo.dart';
import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(
    this.homeRepo,
  ) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks(String category) async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks(category: category);
    result.fold(
      (failure) => emit(
        FeaturedBooksFailure(
          failure.errorMessage,
        ),
      ),
      (books) => emit(
        FeaturedBooksSuccess(books),
      ),
    );
  }
}
