import 'package:book_store/Features/home/data/models/book_model/book_model.dart';
import 'package:book_store/Features/home/data/repos/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
  HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBookLoading());
    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(
        NewestBookFailure(
          failure.errorMessage,
        ),
      ),
      (books) => emit(
        NewestBookSuccess(books),
      ),
    );
  }
}
