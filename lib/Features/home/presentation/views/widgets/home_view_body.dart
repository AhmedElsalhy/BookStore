import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';
import 'newest_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 64,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Newest Books',
                  style: Styles.textStyle20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: NewestBooksListView(),
        )
      ],
    );
  }
}
