import 'package:book_store/Features/search/presentation/view_models/search_book_cubit/search_book_cubit.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_search_text_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSearchViewTextField(
                onChanged: (value) {
                  BlocProvider.of<SearchBookCubit>(context)
                      .fetchSearchBooks(value);
                },
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Search Result',
                style: Styles.textStyle18,
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
        const Expanded(
          child: SearchResultListView(),
        )
      ],
    );
  }
}
