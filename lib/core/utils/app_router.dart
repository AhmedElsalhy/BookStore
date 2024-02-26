import 'package:book_store/Features/home/data/models/book_model/book_model.dart';
import 'package:book_store/Features/home/data/repos/home_repo_impl.dart';
import 'package:book_store/Features/home/presentation/view_models/similar_books_cubit/fetch_similar_books_cubit.dart';
import 'package:book_store/Features/home/presentation/views/book_details_view.dart';
import 'package:book_store/Features/home/presentation/views/home_view.dart';
import 'package:book_store/Features/search/presentation/views/search_view.dart';
import 'package:book_store/Features/splash/presentation/views/splash_view.dart';
import 'package:book_store/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/bookDetailsView',
        builder: (context, state) => BlocProvider(
          create: (context) => FetchSimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
