import 'package:book_store/Features/home/presentation/view_models/similar_books_cubit/fetch_similar_books_cubit.dart';
import 'package:book_store/core/widgets/custom_error_widget.dart';
import 'package:book_store/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_image.dart';

class SimilarListViewBook extends StatelessWidget {
  const SimilarListViewBook({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .14,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    bookModel: state.books[index],
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
