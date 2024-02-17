import 'package:book_store/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_store/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:book_store/Features/home/presentation/views/widgets/similar_list_view_book.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'book_button_actions.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.18),
            child: const CustomBookItem(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const BookRating(),
          const SizedBox(
            height: 37,
          ),
          const BookButtonActions(),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimilarListViewBook(),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}