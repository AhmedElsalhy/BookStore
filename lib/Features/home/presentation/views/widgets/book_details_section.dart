import 'package:book_store/core/models/book_model/book_model.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'book_button_actions.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.18),
          child: CustomBookImage(
            bookModel: bookModel,
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo.title,
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        BookRating(
          rating: bookModel.volumeInfo.averageRating?.round() ?? 0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: 37,
        ),
        BookButtonActions(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
