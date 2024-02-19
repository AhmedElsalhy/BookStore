part of 'newest_book_cubit.dart';

@immutable
abstract class NewestBookState {
  const NewestBookState();
}

class NewestBookInitial extends NewestBookState {}

class NewestBookLoading extends NewestBookState {}

class NewestBookFailure extends NewestBookState {
  final String errMessage;

  const NewestBookFailure(this.errMessage);
}

class NewestBookSuccess extends NewestBookState {
  final List<BookModel> books;

  const NewestBookSuccess(this.books);
}
