import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';
import 'newest_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(
                  category: category,
                ),
              ),
              const FeaturedBooksListView(),
              const SizedBox(
                height: 64,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Newest Books',
                  style: Styles.textStyle20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: NewestBooksListView(),
        )
      ],
    );
  }
}
