import 'package:book_store/Features/home/data/repos/home_repo_impl.dart';
import 'package:book_store/Features/home/presentation/view_models/featured_book_cubit/featured_books_cubit.dart';
import 'package:book_store/Features/home/presentation/view_models/newest_book_cubit/newest_book_cubit.dart';
import 'package:book_store/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:book_store/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FeaturedBooksCubit(
              getIt.get<HomeRepoImpl>(),
            )..fetchFeaturedBooks(),
          ),
          BlocProvider(
            create: (context) => NewestBookCubit(
              getIt.get<HomeRepoImpl>(),
            ),
          ),
        ],
        child: const HomeViewBody(),
      ),
    );
  }
}
