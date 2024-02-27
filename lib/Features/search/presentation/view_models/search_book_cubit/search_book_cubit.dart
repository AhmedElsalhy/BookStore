import 'package:book_store/Features/search/data/repos/search_repo.dart';
import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.searchRepo) : super(SearchBookInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchBooks(String query) async {
    emit(SearchBookLoading());
    var result = await searchRepo.fetchSearchBooks(query);
    result.fold(
      (failure) => emit(SearchBookFailure(failure.errorMessage)),
      (books) => emit(SearchBookSuccess(books)),
    );
  }
}
