import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SimilarListViewBook extends StatelessWidget {
  const SimilarListViewBook({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookItem(
              imageUrl: '',
            ),
          );
        },
      ),
    );
  }
}
